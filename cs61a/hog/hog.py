"""The Game of Hog."""

from dice import four_sided, six_sided, make_test_dice
from ucb import main, trace, log_current_line, interact

GOAL_SCORE = 100 # The goal of Hog is to score 100 points.

######################
# Phase 1: Simulator #
######################

# Taking turns

def roll_dice(num_rolls, dice=six_sided):
    """Roll DICE for NUM_ROLLS times.  Return either the sum of the outcomes,
    or 1 if a 1 is rolled (Pig out). This calls DICE exactly NUM_ROLLS times.

    num_rolls:  The number of dice rolls that will be made; at least 1.
    dice:       A zero-argument function that returns an integer outcome.
    """
    # These assert statements ensure that num_rolls is a positive integer.
    assert type(num_rolls) == int, 'num_rolls must be an integer.'
    assert num_rolls > 0, 'Must roll at least once.'
    score = 0
    for _ in range(num_rolls):
        outcome = dice()
        if outcome == 1:
            return 1
        score += outcome
    return score


def take_turn(num_rolls, opponent_score, dice=six_sided):
    """Simulate a turn rolling NUM_ROLLS dice, which may be 0 (Free bacon).

    num_rolls:       The number of dice rolls that will be made.
    opponent_score:  The total score of the opponent.
    dice:            A function of no args that returns an integer outcome.
    """
    assert type(num_rolls) == int, 'num_rolls must be an integer.'
    assert num_rolls >= 0, 'Cannot roll a negative number of dice.'
    assert num_rolls <= 10, 'Cannot roll more than 10 dice.'
    assert opponent_score < 100, 'The game should be over.'
    if num_rolls == 0:  # Free bacon.
        max_dig = 0
        while opponent_score > 0:
            max_dig = max(max_dig, opponent_score % 10)
            opponent_score //= 10
        return max_dig + 1
    else:
        return roll_dice(num_rolls, dice)

# Playing a game

def select_dice(score, opponent_score):
    """Select six-sided dice unless the sum of SCORE and OPPONENT_SCORE is a
    multiple of 7, in which case select four-sided dice (Hog wild).

    >>> select_dice(4, 24) == four_sided
    True
    >>> select_dice(16, 64) == six_sided
    True
    >>> select_dice(0, 0) == four_sided
    True
    """
    if (score + opponent_score) % 7 == 0:   # Hog wild.
        return four_sided
    return six_sided

def other(who):
    """Return the other player, for a player WHO numbered 0 or 1.

    >>> other(0)
    1
    >>> other(1)
    0
    """
    return 1 - who

def play(strategy0, strategy1, goal=GOAL_SCORE):
    """Simulate a game and return the final scores of both players, with
    Player 0's score first, and Player 1's score second.

    A strategy is a function that takes two total scores as arguments
    (the current player's score, and the opponent's score), and returns a
    number of dice that the current player will roll this turn.

    strategy0:  The strategy function for Player 0, who plays first.
    strategy1:  The strategy function for Player 1, who plays second.
    """
    who = 0  # Which player is about to take a turn, 0 (first) or 1 (second)
    score0, score1 = 0, 0
    while score0 < goal and score1 < goal:
        dice = select_dice(score0, score1)  # Order of parameters doesn't matter
        if who == 0:
            num_rolls = strategy0(score0, score1)
            score0 += take_turn(num_rolls, score1, dice)
        else:
            num_rolls = strategy1(score1, score0)
            score1 += take_turn(num_rolls, score0, dice)
        
        if score0 << 1 == score1 or score1 << 1 == score0:  # Swine swap.
            score0, score1 = score1, score0
        who = other(who)
    
    return score0, score1

    # Alternative Implementation

    # score, opponent_score = 0, 0
    # while score < goal and opponent_score < goal:
    #     dice = select_dice(score, opponent_score)
    #     if who == 0:
    #         num_rolls = strategy0(score, opponent_score)
    #         score += take_turn(num_rolls, opponent_score, dice)
    #     else:
    #         num_rolls = strategy1(score, opponent_score)
    #         score += take_turn(num_rolls, opponent_score, dice)
    #     if score << 1 != opponent_score and opponent_score << 1 != score:
    #         score, opponent_score = opponent_score, score
    #     who = other(who)
    # return (score, opponent_score) if who == 0 else (opponent_score, score)

#######################
# Phase 2: Strategies #
#######################

# Basic Strategy

BASELINE_NUM_ROLLS = 5
BACON_MARGIN = 8

def always_roll(n):
    """Return a strategy that always rolls N dice.

    A strategy is a function that takes two total scores as arguments
    (the current player's score, and the opponent's score), and returns a
    number of dice that the current player will roll this turn.

    >>> strategy = always_roll(5)
    >>> strategy(0, 0)
    5
    >>> strategy(99, 99)
    5
    """
    def strategy(score, opponent_score):
        return n
    return strategy

# Experiments

def make_averaged(fn, num_samples=1000):
    """Return a function that returns the average_value of FN when called.

    To implement this function, you will have to use *args syntax, a new Python
    feature introduced in this project.  See the project description.

    >>> dice = make_test_dice(3, 1, 5, 6)
    >>> averaged_dice = make_averaged(dice, 1000)
    >>> averaged_dice()
    3.75
    >>> make_averaged(roll_dice, 1000)(2, dice)
    6.0

    In this last example, two different turn scenarios are averaged.
    - In the first, the player rolls a 3 then a 1, receiving a score of 1.
    - In the other, the player rolls a 5 and 6, scoring 11.
    Thus, the average value is 6.0.
    """
    def averaged(*args):
        res_sum = 0
        for _ in range(num_samples):
            res_sum += fn(*args)
        return res_sum / num_samples
    
    return averaged

def max_scoring_num_rolls(dice=six_sided):
    """Return the number of dice (1 to 10) that gives the highest average turn
    score by calling roll_dice with the provided DICE.  Print all averages as in
    the doctest below.  Assume that dice always returns positive outcomes.

    >>> dice = make_test_dice(3)
    >>> max_scoring_num_rolls(dice)
    1 dice scores 3.0 on average
    2 dice scores 6.0 on average
    3 dice scores 9.0 on average
    4 dice scores 12.0 on average
    5 dice scores 15.0 on average
    6 dice scores 18.0 on average
    7 dice scores 21.0 on average
    8 dice scores 24.0 on average
    9 dice scores 27.0 on average
    10 dice scores 30.0 on average
    10
    """
    averaged_roll = make_averaged(roll_dice)
    max_avg_score, best_num = 0, 1
    for num_rolls in range(1, 11):
        avg_score = averaged_roll(num_rolls, dice)
        print(f"{num_rolls} dice scores {round(avg_score, 1)} on average")
        if avg_score > max_avg_score:
            best_num = num_rolls
            max_avg_score = avg_score
    return best_num

def winner(strategy0, strategy1):
    """Return 0 if strategy0 wins against strategy1, and 1 otherwise."""
    score0, score1 = play(strategy0, strategy1)
    if score0 > score1:
        return 0
    else:
        return 1

def average_win_rate(strategy, baseline=always_roll(BASELINE_NUM_ROLLS)):
    """Return the average win rate (0 to 1) of STRATEGY against BASELINE."""
    win_rate_as_player_0 = 1 - make_averaged(winner)(strategy, baseline)
    win_rate_as_player_1 = make_averaged(winner)(baseline, strategy)
    return (win_rate_as_player_0 + win_rate_as_player_1) / 2 # Average results

def run_experiments():
    """Run a series of strategy experiments and report results."""
    if False: # Change to False when done finding max_scoring_num_rolls
        six_sided_max = max_scoring_num_rolls(six_sided)
        print('Max scoring num rolls for six-sided dice:', six_sided_max)
        four_sided_max = max_scoring_num_rolls(four_sided)
        print('Max scoring num rolls for four-sided dice:', four_sided_max)

    if True: # Change to True to test always_roll(8)
        print('always_roll(8) win rate:', average_win_rate(always_roll(8)))

    if True: # Change to True to test bacon_strategy
        print('bacon_strategy win rate:', average_win_rate(bacon_strategy))

    if True: # Change to True to test swap_strategy
        print('swap_strategy win rate:', average_win_rate(swap_strategy))

    if True: # Change to True to test final_strategy
        print('final_strategy win rate:', average_win_rate(final_strategy))

# Strategies

def bacon_strategy(score, opponent_score):
    """This strategy rolls 0 dice if that gives at least BACON_MARGIN points,
    and rolls BASELINE_NUM_ROLLS otherwise.

    >>> bacon_strategy(0, 0)
    5
    >>> bacon_strategy(70, 50)
    5
    >>> bacon_strategy(50, 70)
    0
    """
    if take_turn(0, opponent_score) >= BACON_MARGIN:
        return 0
    return BASELINE_NUM_ROLLS

def swap_strategy(score, opponent_score):
    """This strategy rolls 0 dice when it would result in a beneficial swap and
    rolls BASELINE_NUM_ROLLS if it would result in a harmful swap. It also rolls
    0 dice if that gives at least BACON_MARGIN points and rolls
    BASELINE_NUM_ROLLS otherwise.

    >>> swap_strategy(23, 60) # 23 + (1 + max(6, 0)) = 30: Beneficial swap
    0
    >>> swap_strategy(27, 18) # 27 + (1 + max(1, 8)) = 36: Harmful swap
    5
    >>> swap_strategy(50, 80) # (1 + max(8, 0)) = 9: Lots of free bacon
    0
    >>> swap_strategy(12, 12) # Baseline
    5
    """
    bacon = take_turn(0, opponent_score)
    if (score + bacon) << 1 == opponent_score:  # beneficial swap
        return 0
    elif opponent_score << 1 == score + bacon:  # harmful swap
        return BASELINE_NUM_ROLLS
    return bacon_strategy(score, opponent_score)    # no swap

def final_strategy(score, opponent_score):
    """This strategy considers all of the special rules in different priority.

    It modifies the 2 constants in local variables according to which dice to
    roll and whether this player is in the lead or losing.
    The reasons are that, we found that rolling 3 dices in a turn gives the
    highest average score when the dice is 4-sided, while that number is 5 when
    the dice is 6-sided; and when the player is in the lead, it might be better
    of her to play more conservatively, but to take more risks when losing.
    
    Firstly it judges if rolling 0 dice would result in a beneficial swap, returning
    0 if so, while avoiding a harmful swap by returning baseline_num rolls.
    
    Secondly it judges if rolling 0 dice would leave opponent with 4-sided dice,
    lowering bacon_margin if so to inflict more negative effect on the opponent.
    
    Finally it uses the bacon strategy, rolls zero dice if that gives at least
    bacon_margin points, and roll baseline_num_rolls otherwise.

    >>> final_strategy(23, 60)  # 23 + (1 + max(6, 0)) = 30: Beneficial swap
    0
    >>> final_strategy(27, 18)  # 27 + (1 + max(1, 8)) = 36: Harmful swap
    5
    >>> final_strategy(3, 4)    # Harmful swap; (3 + 4) % 7 == 0: 4-sided dice
    3
    >>> final_strategy(29, 23)  # (29 + 4 + 23) % 7 == 0; 4 >= 8 - 1 - 3
    0
    >>> final_strategy(50, 80)  # (1 + max(8, 0)) = 9: Lots of free bacon
    0
    >>> final_strategy(35, 35)  # Baseline for 4-sided dice
    3
    >>> final_strategy(12, 12)  # Baseline
    5
    """
    bacon_margin, baseline_num_rolls = BACON_MARGIN, BASELINE_NUM_ROLLS
    if select_dice(score, opponent_score) == four_sided:    # vary rolls based on which dice to roll
        bacon_margin -= 3   # 8->5
        baseline_num_rolls -= 2 # 5->3
    if score > opponent_score:      # take fewer risks when in the lead
        bacon_margin -= 1   # 8->7 or 5->4

    bacon = take_turn(0, opponent_score)
    if (bacon + score) << 1 == opponent_score:  # beneficial swap
        return 0
    elif opponent_score << 1 == bacon + score:  # harmful swap
        return baseline_num_rolls
    
    if select_dice(bacon+score, opponent_score) == four_sided:  # leave opponent with 4-sided dice more often
        bacon_margin -= 3
    
    if bacon >= bacon_margin:   # bacon strategy
        return 0
    return baseline_num_rolls
    

##########################
# Command Line Interface #
##########################

# Note: Functions in this section do not need to be changed.  They use features
#       of Python not yet covered in the course.

def get_int(prompt, min):
    """Return an integer greater than or equal to MIN, given by the user."""
    choice = input(prompt)
    while not choice.isnumeric() or int(choice) < min:
        print('Please enter an integer greater than or equal to', min)
        choice = input(prompt)
    return int(choice)

def interactive_dice():
    """A dice where the outcomes are provided by the user."""
    return get_int('Result of dice roll: ', 1)

def make_interactive_strategy(player):
    """Return a strategy for which the user provides the number of rolls."""
    prompt = 'Number of rolls for Player {0}: '.format(player)
    def interactive_strategy(score, opp_score):
        if player == 1:
            score, opp_score = opp_score, score
        print(score, 'vs.', opp_score)
        choice = get_int(prompt, 0)
        return choice
    return interactive_strategy

def roll_dice_interactive():
    """Interactively call roll_dice."""
    num_rolls = get_int('Number of rolls: ', 1)
    turn_total = roll_dice(num_rolls, interactive_dice)
    print('Turn total:', turn_total)

def take_turn_interactive():
    """Interactively call take_turn."""
    num_rolls = get_int('Number of rolls: ', 0)
    opp_score = get_int('Opponent score: ', 0)
    turn_total = take_turn(num_rolls, opp_score, interactive_dice)
    print('Turn total:', turn_total)

def play_interactive():
    """Interactively call play."""
    strategy0 = make_interactive_strategy(0)
    strategy1 = make_interactive_strategy(1)
    score0, score1 = play(strategy0, strategy1)
    print('Final scores:', score0, 'to', score1)

@main
def run(*args):
    """Read in the command-line argument and calls corresponding functions.

    This function uses Python syntax/techniques not yet covered in this course.
    """
    import argparse
    parser = argparse.ArgumentParser(description="Play Hog")
    parser.add_argument('--interactive', '-i', type=str,
                        help='Run interactive tests for the specified question')
    parser.add_argument('--run_experiments', '-r', action='store_true',
                        help='Runs strategy experiments')
    args = parser.parse_args()

    if args.interactive:
        test = args.interactive + '_interactive'
        if test not in globals():
            print('To use the -i option, please choose one of these:')
            print('\troll_dice', '\ttake_turn', '\tplay', sep='\n')
            exit(1)
        try:
            globals()[test]()
        except (KeyboardInterrupt, EOFError):
            print('\nQuitting interactive test')
            exit(0)
    elif args.run_experiments:
        run_experiments()

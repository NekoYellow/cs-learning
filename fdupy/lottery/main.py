# utf-8
import random
import os
from datetime import datetime

DEFAULT_NUM_USER = 10
NUM_FIRST_PRIZE, NUM_SECOND_PRIZE = 1, 2
NUM_ROUND = 3


def roll(limit):
    """Return a random number from 0 to limit-1."""
    return random.randint(0, limit-1)

def rm_element(a, element):
    """Remove element from a in-place."""
    for i in range(len(a)-1, -1, -1):
        if a[i] == element:
            a.pop(i)

class Sys:
    def __init__(self, num_user=DEFAULT_NUM_USER,
                 update_file='updates.csv', candidate_file='candidates.csv',
                 num_first_prize=NUM_FIRST_PRIZE, num_second_prize=NUM_SECOND_PRIZE,
                 num_round=NUM_ROUND):
        self.num_user = num_user
        self.users = {i: 0 for i in range(self.num_user)}
        self.update_file = update_file
        self.candidate_file = candidate_file
        self.num_first_prize = num_first_prize
        self.num_second_prize = num_second_prize
        self.num_round = num_round
        print('积分变动:')
    
    def event(self):
        """Generate a random event."""
        user_id = roll(self.num_user-1)
        event_type = random.choice(['+', '-'])
        point_diff = random.randint(1, 10)*100
        if event_type == '-' and self.users[user_id] >= point_diff:
            self.users[user_id] -= point_diff
        elif event_type == '+':
            self.users[user_id] += point_diff
        else:
            return
        print(f'{user_id} {event_type}{point_diff}')
        with open(self.update_file, 'a') as u:
            u.write(f'{user_id},{event_type}{point_diff}\n')
        
    def lottery(self):
        """Do a lottery."""
        print('\n当前用户积分:')
        first_prize, second_prize = [], []
        with open(self.candidate_file, 'w') as c:
            for user_id, point in self.users.items():
                print(f'{user_id}: {point}')
                c.write(f'{user_id},{point}\n')
                if point > 0:
                    second_prize.append(user_id)
                if point >= 1000:
                    first_prize.append(user_id)
                if point >= 2000:
                    first_prize.append(user_id)
                if point >= 3000:
                    first_prize.append(user_id)
                    
        print('\n抽奖开始:')
        for rd in range(self.num_round):
            if len(first_prize) == 0 and len(second_prize) == 0:
                break
            print(f'第{rd+1}轮:')
            if len(first_prize) != 0:
                for _ in range(self.num_first_prize):
                    random.shuffle(first_prize)
                    first_prize_winner = first_prize[roll(len(first_prize))]
                    print(f'{first_prize_winner} 一等奖')
                    rm_element(first_prize, first_prize_winner)
                    rm_element(second_prize, first_prize_winner)
                    if len(first_prize) == 0:
                        break
            if len(second_prize) != 0:
                for _ in range(self.num_second_prize):
                    random.shuffle(second_prize)
                    second_prize_winner = second_prize[roll(len(second_prize))]
                    print(f'{second_prize_winner} 二等奖')
                    rm_element(first_prize, second_prize_winner)
                    rm_element(second_prize, second_prize_winner)
                    if len(second_prize) == 0:
                        break
                    
        print('本周抽奖结束')
        os.rename(self.update_file, f'{datetime.now().strftime("%Y-%m-%d")}.csv')
        
        for user_id in self.users:
            self.users[user_id] = 0
        
        
if __name__ == '__main__':
    sys = Sys()
    for _ in range(10):
        sys.event()
    sys.lottery()

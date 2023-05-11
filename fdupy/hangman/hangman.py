"""
A little game to guess a randomly-chosen word with limited missing chance.
Each turn, you may input a charcter. If the character is in the word, all
of its occurence would be uncovered (a hit); otherwise your mistake count
would +1 (a miss).
"""

from hangmanlib import *
from random import choice
import time


def play(word):
    guess_chars = []
    mis = 0
    start_time = time.time()
    # play a game
    while (mis < MAX_MISTAKES) and (not word.is_guessed):
        guess_char = input()
        # process input
        if len(guess_char) != 1:
            print("Please input a single character!")
            continue
        guess_chars.append(guess_char)
        if len(guess_chars) != len(set(guess_chars)):
            print("Please don't make the same guess twice!")
            guess_chars.pop()
            continue
        # process guess
        if not word.hit(guess_chars[-1]):
            mis += 1
        # print hangman
        print_block(word, mis)
    
    # print result
    print(f"The secret word is {word.original}, you guess via sequence {''.join(guess_chars)}.", end=" ")
    if mis == MAX_MISTAKES:
        print("And YOU LOSE!")
    else:
        print("And YOU WIN!")
    
    # record this game in a csv file
    end_time = time.time()
    dura = round(end_time - start_time, 2)
    y, m, d, *_ = time.localtime()
    with open(RECORD_FILE, 'a') as record:
        record.write(f"{date(y, m, d)},{dura},{word.original},{''.join(guess_chars)}\n")


if __name__ == "__main__":
    # get word list
    WORD_FILE, RECORD_FILE = "words.txt", "guess.csv"
    with open(WORD_FILE) as words:
        ARGS = words.readline().split()
    # initiate and play game
    while True:
        word = Word(choice(ARGS))
        print("\nHANGMAN...Game on!")
        print_block(word, 0, True)
        play(word)
        rsp = input("Continue game(C/c: continue, Q/q: quit)?")
        while rsp != 'C' and rsp != 'c' and rsp != 'Q' and rsp != 'q':
            rsp = input("Please give a valid input!")
        if rsp == 'C' or rsp == 'c':
            continue
        elif rsp == 'Q' or rsp == 'q':
            break
    # end game
    print("Bye...Game over!!!")
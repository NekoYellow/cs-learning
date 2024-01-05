#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import logging
import math
import unittest
from collections import defaultdict, deque
from src.difference_data import data
from string import ascii_lowercase
from typing import *
'''
Assignment 2, Problem 1: Search String Replacement

Student Name: Yueyuan Huang
'''

'''
Copyright: justin.pearson@it.uu.se and his teaching assistants, 2023.

This file is part of course 1DL231 at Uppsala University, Sweden.

Permission is hereby granted only to the registered students of that
course to use this file, for a homework assignment.

The copyright notice and permission notice above shall be included in
all copies and extensions of this file, and those are not allowed to
appear publicly on the internet, both during a course instance and
forever after.
'''
# If your solution needs a queue, then you can use deque.

# If you need to log information during tests, execution, or both,
# then you can use this library:
# Basic example:
#   logger = logging.getLogger('put name here')
#   a = 5
#   logger.debug(f'a = {a}')


__all__ = ['min_difference', 'min_difference_align'] # what '*' represents in 'from ... import *'


def min_difference(s: str, r: str, R: Dict[str, Dict[str, int]]) -> int:
    '''
    Pre:  For all characters c in s and k in r,
          then R[c][k] exists, and R[k][c] exists.
    Post:
    Ex:   Let R be the resemblance matrix where every change and skip
          costs 1
          min_difference('dinamck', 'dynamic', R) --> 3
    '''
    n, m = len(s), len(r)
    dp = [[0]*(m+1) for _ in range(n+1)]
    for i in range(n):
        dp[i+1][0] = dp[i][0]+R[s[i]]['-']
    for j in range(m):
        dp[0][j+1] = dp[0][j]+R['-'][r[j]]
    for i in range(n):
        for j in range(m):
            dp[i+1][j+1] = min(dp[i][j+1]+R[s[i]]['-'], dp[i+1][j]+R['-'][r[j]], dp[i][j]+R[s[i]][r[j]])
    return dp[-1][-1]


def min_difference_align(s: str, r: str,
                         R: Dict[str, Dict[str, int]]) -> Tuple[int, str, str]:
    '''
    Pre:  For all characters c in s and k in r,
          then R[c][k] exists, and R[k][c] exists.
    Post:
    Ex:   Let R be the resemblance matrix where every change and skip
          costs 1
          min_difference_align('dinamck', 'dynamic', R) -->
                                    3, 'dinam-ck', 'dynamic-'
                                 or 3, 'dinamck', 'dynamic'
    '''
    n, m = len(s), len(r)
    dp = [[0]*(m+1) for _ in range(n+1)]
    # positioning of s and r
    sp, rp = [['']*(m+1) for _ in range(n+1)], [['']*(m+1) for _ in range(n+1)]
    for i in range(n):
        dp[i+1][0] = dp[i][0]+R[s[i]]['-']
        sp[i+1][0] = sp[i][0]+s[i]
        rp[i+1][0] = rp[i][0]+'-'
    for j in range(m):
        dp[0][j+1] = dp[0][j]+R['-'][r[j]]
        sp[0][j+1] = sp[0][j]+'-'
        rp[0][j+1] = rp[0][j]+r[j]
    for i in range(n):
        for j in range(m):
            up = dp[i][j+1]+R[s[i]]['-']
            left = dp[i+1][j]+R['-'][r[j]]
            upleft = dp[i][j]+R[s[i]][r[j]]
            if up < left and up < upleft:
                dp[i+1][j+1] = up
                sp[i+1][j+1] = sp[i][j+1]+s[i]
                rp[i+1][j+1] = rp[i][j+1]+'-'
            elif left < upleft:
                dp[i+1][j+1] = left
                sp[i+1][j+1] = sp[i+1][j]+'-'
                rp[i+1][j+1] = rp[i+1][j]+r[j]
            else:
                dp[i+1][j+1] = upleft
                sp[i+1][j+1] = sp[i][j]+s[i]
                rp[i+1][j+1] = rp[i][j]+r[j]
    return dp[-1][-1], sp[-1][-1], rp[-1][-1]


def qwerty_distance() -> Dict[str, Dict[str, int]]:
    '''
    Generates a QWERTY Manhattan distance resemblance matrix

    Costs for letter pairs are based on the Manhattan distance of the
    corresponding keys on a standard QWERTY keyboard.
    Costs for skipping a character depends on its placement on the keyboard:
    adding a character has a higher cost for keys on the outer edges,
    deleting a character has a higher cost for keys near the middle.

    Usage:
        R = qwerty_distance()
        R['a']['b']  # result: 5
    '''
    R: Dict[str, Dict[str, int]] = defaultdict(dict)
    R['-']['-'] = 0
    zones = ['dfghjk', 'ertyuislcvbnm', 'qwazxpo']
    keyboard = ['qwertyuiop', 'asdfghjkl', 'zxcvbnm']
    for row, content in enumerate(zones):
        for char in content:
            R['-'][char] = row + 1
            R[char]['-'] = 3 - row
    for a, b in ((a, b) for b in ascii_lowercase for a in ascii_lowercase):
        row_a, pos_a = next(
            (row, content.index(a))
            for row, content in enumerate(keyboard) if a in content
        )
        row_b, pos_b = next(
            (row, content.index(b))
            for row, content in enumerate(keyboard) if b in content
        )
        R[a][b] = abs(row_b - row_a) + abs(pos_a - pos_b)
    return R


def simple_distance() -> Dict[str, Dict[str, int]]:
    alphabet = ascii_lowercase + '-'
    return {a: {b: (0 if a == b else 1) for b in alphabet} for a in alphabet}


class MinDifferenceTest(unittest.TestCase):
    '''
    Test Suite for search string replacement problem

    Any method named 'test_something' will be run when this file is
    executed. Use the sanity check as a template for adding your own test
    cases if you wish.
    (You may delete this class from your submitted solution.)
    '''
    logger = logging.getLogger('MinDifferenceTest')
    data = data
    min_difference = min_difference
    min_difference_align = min_difference_align

    def assertMinDifferenceSignature(self, res_difference: Any) -> None:
        self.assertEqual(type(res_difference), int,
                         'Incorrect return type for min_difference: expected '
                         f'"int", but "{type(res_difference).__name__}" was '
                         'returned.')

    def assertMinDifferenceAlignSignature(self, t: Any):
        prefix = 'Incorrect return type for min_difference_align: expected'
        self.assertEqual(type(t), tuple,
                         f'{prefix} "Tuple[int, str, str]", but '
                         f'{type(t).__name__}" was returned.')
        self.assertEqual(len(t), 3,
                         f'{prefix} tuple of length 3, but tuple of '
                         f'length {len(t)} was returned.')
        res_difference, res_s, res_r = t
        self.assertEqual((type(res_difference), type(res_s), type(res_r)),
                         (int, str, str),
                         f'{prefix} "Tuple[int, str, str]", but "Tuple["'
                         f'{type(res_difference).__name__}, '
                         f'{type(res_s).__name__}, '
                         f'{type(res_r).__name__}]" was returned.')

    def assertMinDifference(self, s: str, r: str, difference: int,
                            R: Dict[str, Dict[str, int]]) -> None:
        res_difference = MinDifferenceTest.min_difference(s, r, R)
        self.assertMinDifferenceSignature(res_difference)
        self.assertEqual(res_difference, difference,
                         f'Difference between s="{s}" and r="{r}" was '
                         f'{res_difference}, {difference} expected.')

    def assertMinDifferenceAlign(self, s: str, r: str, difference: int,
                                 R: int,
                                 solutions: Union[Set[Tuple[str, str]],
                                                  None] = None) -> None:
        t = MinDifferenceTest.min_difference_align(s, r, R)
        self.assertMinDifferenceAlignSignature(t)
        res_difference, res_s, res_r = t
        self.assertEqual(res_difference, difference,
                         f'Difference between s="{s}" and r="{r}" was '
                         f'{res_difference}, {difference} expected.')

        self.assertEqual(len(res_s), len(res_r), f'len("{s}") != len("{r}")')

        res_sum = sum((R[res_s[i]][res_r[i]] for i in range(len(res_s))))

        self.assertEqual(res_sum, difference,
                         f'Difference for s="{s}", r={r}, res_r={res_s}, and '
                         f'r="{res_r}" was summed to {res_sum}, {difference}'
                         ' expected.')
        if solutions is not None:
            self.assertIn((res_s, res_r), solutions)

    def test_min_difference(self) -> None:
        for i, instance in enumerate(MinDifferenceTest.data):
            with self.subTest(instance=i):
                R = (qwerty_distance() if instance['resemblance'] == 'qwerty'
                     else simple_distance())
                self.assertMinDifference(instance['s'], instance['r'],
                                         instance['difference'], R)

    def test_min_difference_align(self) -> None:
        if MinDifferenceTest.min_difference_align('a', 'a',
                                                  qwerty_distance()) is None:
            self.skipTest('min_difference_align not implemented.')

        for i, instance in enumerate(MinDifferenceTest.data):
            with self.subTest(instance=i):
                R = (qwerty_distance() if instance['resemblance'] == 'qwerty'
                     else simple_distance())
                self.assertMinDifferenceAlign(instance['s'], instance['r'],
                                              instance['difference'], R,
                                              instance['solutions'])


if __name__ == '__main__':
    # Set logging config to show debug messages:
    logging.basicConfig(level=logging.DEBUG)
    # run unit tests (failfast=True stops testing after the first failed test):
    unittest.main(failfast=True)

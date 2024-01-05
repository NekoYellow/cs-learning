#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import logging
import math
import unittest
from collections import deque
from src.party_seating_data import data
from typing import *
'''
Assignment 3, Problem 2: Party Seating

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


__all__ = ['party']


def party(known: List[Set[int]]) -> Tuple[bool, Set[int], Set[int]]:
    '''
    Pre:  known is a list of sets containing integers in range
          [0, len(known)-1] (Could also be empty). If integer u
          is in known[v], then v must be in known[u].
    Post:
    Ex:   party([{1, 2}, {0}, {0}]) = True, {0}, {1, 2}
    '''
    if not known: # No guest
        return True, set(), set()
    V, G = range(len(known)), known # vertices, graph

    S, T = set(), set() # 2 sets of vertices (of different color)
    visited = lambda u: u in S or u in T
    # color vertices reachable from s
    def bfs(s):
        S.add(s) # the starting vertex could be in either S or T
        q = [s]
        while q:
            u = q.pop(0)
            for v in G[u]:
                if (u in S and v in S) or (u in T and v in T):
                    return False # conflict
                if not visited(v):
                    S.add(v) if u in T else T.add(v)
                    q.append(v)
        return True
    # try to color every vertex in G (until conflict)
    for u in V:
        if not visited(u) and not bfs(u):
            return False, set(), set()

    return True, S, T
        


class PartySeatingTest(unittest.TestCase):
    '''
    Test suite for party seating problem
    '''
    logger = logging.getLogger('PartySeatingTest')
    data = data
    party = party

    def assertTypeParty(self, t: Any) -> None:
        prefix = 'Incorrect return type for party:'
        prefix_t = f'{prefix} expected "Tuple[bool, Set[int], Set[int]]", but'
        self.assertEqual(type(t), tuple,
                         f'{prefix_t} "{type(t).__name__}" was returned.')
        self.assertEqual(len(t), 3,
                         f'{prefix} expected tuple of length 3, but tuple of '
                         'length {len(t)} returned.')
        success, A, B = t
        self.assertEqual(type(success), bool)
        self.assertEqual((type(success), type(A), type(B)), (bool, set, set),
                         f'{prefix_t} "Tuple[{type(success).__name__}, '
                         f'{type(B).__name__}, {type(B).__name__}]" was '
                         'returned.')
        for a in A:
            self.assertEqual(type(a), int,
                             f'{prefix} expected each element in A to have '
                             'type "int", but at least one element has '
                             f'type "{type(a).__name__}"')
        for b in B:
            self.assertEqual(type(b), int,
                             f'{prefix} expected each element in B to have '
                             'type "int", but at least one element has '
                             f'type "{type(b).__name__}"')

    def assertKnown(self, known: List[Set[int]], A: Set[int],
                    B: Set[int]) -> None:
        self.assertEqual(len(A) + len(B), len(known),
                         f"wrong number of guests: excepted {len(known)} "
                         f"guests, tables hold {len(A)} and {len(B)} guests "
                         "respectively")
        for g in range(len(known)):
            self.assertTrue(g in A or g in B, f"Guest {g} not seated anywhere")

        for a1, a2 in ((a1, a2) for a2 in A for a1 in A):
            self.assertNotIn(a2, known[a1],
                             f"Guests {a1} and {a2} seated together, and "
                             "know each other")

        for b1, b2 in ((b1, b2) for b2 in B for b1 in B):
            self.assertNotIn(b2, known[b1],
                             f"Guests {b1} and {b2} seated together, and "
                             "know each other")

    def test_party(self) -> None:
        for i, instance in enumerate(PartySeatingTest.data):
            with self.subTest(instance=i):
                known = instance['known']
                expected = instance['expected']

                t = PartySeatingTest.party(known)
                self.assertTypeParty(t)
                success, A, B = t

                if not expected:
                    self.assertFalse(success)
                    self.assertSetEqual(A, set())
                    self.assertSetEqual(B, set())
                else:
                    self.assertKnown(known, A, B)


if __name__ == '__main__':
    # Set logging config to show debug messages:
    logging.basicConfig(level=logging.DEBUG)
    # run unit tests (failfast=True stops testing after the first failed test):
    unittest.main(failfast=True)

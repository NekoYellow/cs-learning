#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import logging
import math
import unittest
from collections import deque
from src.graph import Graph
from src.sensitive_data import data
from typing import *
'''
Assignment 3, Problem 1: Controlling the Maximum Flow

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


__all__ = ['sensitive']


def sensitive(G: Graph, s: str, t: str) -> Tuple[str, str]:
    '''
    Pre:  G is a flow network reaching maximum flow, with s as
          its source and t as its sink.
    Post:
    Ex:   sensitive(g1, 'a', 'f') = ('b', 'd')
    '''
    Gf = Graph(is_directed=True) # residual network of G
    for u, v in G.edges:
        f, c = G.flow(u, v), G.capacity(u, v)
        Gf.add_edge(u, v, c-f)
        Gf.add_edge(v, u, f)

    S = set() # vertices reachable from s in Gf
    def dfs(u):
        S.add(u)
        for v in Gf.neighbors(u):
            if v not in S and Gf.weight(u, v) > 0:
                dfs(v)
    dfs(s)

    for u, v in G.edges:
        if G.capacity(u, v) == 0 or G.flow(u, v) < G.capacity(u, v):
            continue
        # Now f(u, v) == c(u, v) and are both positive
        # if u in S and v in T or u in T and v in S (T := V - S)
        if not ((u in S) ^ (v not in S)):
            return u, v

    return None, None


class SensitiveTest(unittest.TestCase):
    '''
    Test suite for the sensitive edge problem
    '''
    logger = logging.getLogger('SensitiveTest')
    data = data
    sensitive = sensitive

    def assertTypeSensitive(self, t: Any) -> None:
        prefix = 'Incorrect return type for sensitive:'
        prefix_t = (f'{prefix} expected "Union[Tuple[None, None], '
                    'Tuple[str, str]", but')
        self.assertEqual(type(t), tuple,
                         f'{prefix_t} "{type(t).__name__}" was returned.')
        self.assertEqual(len(t), 2,
                         f'{prefix} expected tuple of length 2, but tuple of '
                         f'length {len(t)} returned.')
        u, v = t
        if u is None or v is None:
            msg = (f'{prefix_t} "Tuple[{type(u).__name__}, {type(v)}]" was '
                   'returned.')
            self.assertIsNone(u, msg)
            self.assertIsNone(v, msg)
            return
        self.assertEqual((type(u), type(v)), (str, str),
                         f'{prefix_t} "Tuple[{type(u).__name__}, '
                         f'{type(v).__name__}]" was returned.')

    def test_sensitive(self) -> None:
        for i, instance in enumerate(SensitiveTest.data):
            with self.subTest(instance=i):
                graph = instance['digraph'].copy()
                t = SensitiveTest.sensitive(graph, instance['source'],
                                            instance['sink'])

                self.assertTypeSensitive(t)
                u, v = t
                if len(instance['sensitive_edges']) == 0:
                    self.assertEqual((u, v), (None, None),
                                     'Network contains no sensitive edges.')
                    continue

                self.assertIn(u, graph, f'Node "{u}" not in network.')
                self.assertIn(v, graph, f'Node "{v}" not in network.')
                self.assertIn((u, v), graph,
                              f'Edge ("{u}", "{v}") not in network.')
                self.assertIn((u, v), instance['sensitive_edges'],
                              f'Edge ("{u}", "{v}") is not sensitive.')


if __name__ == '__main__':
    # Set logging config to show debug messages:
    logging.basicConfig(level=logging.DEBUG)
    # run unit tests (failfast=True stops testing after the first failed test):
    unittest.main(failfast=True)

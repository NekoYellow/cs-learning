#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import logging
import math
import unittest
from collections import deque
from src.augmenting_data import data
from src.graph import Graph
from typing import *
'''
Assignment 1, Problem 2: Augmenting Path Detection in Network Graphs

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


__all__ = ['augmenting', 'augmenting_extended']


def augmenting(G: Graph, s: str, t: str) -> bool:
    '''
    Pre: G is a flow network with source s and sink t
         (so s != t and s is in G and t is in G)
    Post: None of the parameters are modified
    Ex: >>> G = Graph(is_directed=True)
        >>> G.add_edge('a', 'b', capacity=1, flow=0)
        >>> augmenting(G, 'a', 'b')
        True
        >>> G = Graph(is_directed=True)
        >>> G.add_edge('a', 'b', capacity=1, flow=2)
        >>> augmenting(G, 'a', 'b')
        False
    '''
    q = deque()
    visited = [False] * 256 # Assume that nodes of G are ASCII characters
    q.append(s)
    visited[ord(s)] = True
    while q:
        u = q.popleft()
        for v in G.neighbors(u):
            if visited[ord(v)]: continue
            if G.flow(u, v) < G.capacity(u, v):
                if v == t: return True
                q.append(v)
                visited[ord(v)] = True
    return False


def augmenting_extended(G: Graph,
                        s: str, t: str) -> Tuple[bool, List[Tuple[str, str]]]:
    '''
    Pre: G is a flow network with source s and sink t
         (so s != t and s is in G and t is in G)
    Post: None of the parameters are modified
    Ex: >>> G = Graph(is_directed=True)
        >>> G.add_edge('a', 'b', capacity=1, flow=0)
        >>> G.add_edge('b', 'c', capacity=1, flow=0)
        >>> augmenting_extended(G, 'a', 'c')
        True, [('a', 'b'), ('b', 'c')]
        >>> G = Graph(is_directed=True)
        >>> G.add_edge('a', 'b', capacity=1, flow=2)
        >>> augmenting_extended(G, 'a', 'b')
        False, []
    '''
    prev = {}
    q = deque()
    visited = [False] * 256 # Assume that nodes of G are ASCII characters
    q.append(s)
    visited[ord(s)] = True
    while q:
        u = q.popleft()
        for v in G.neighbors(u):
            if visited[ord(v)]: continue
            if G.flow(u, v) < G.capacity(u, v):
                prev[v] = u
                if v == t:
                    path = []
                    while v != s:
                        path.append((prev[v], v))
                        v = prev[v]
                    path.reverse()
                    return True, path
                q.append(v)
                visited[ord(v)] = True
    return False, []


class AugmentingTest(unittest.TestCase):
    '''
    Test Suite for augmenting path dectection problem

    Any method named 'test_something' will be run when this file is executed.
    Use the sanity check as a template for adding your own test cases if you
    wish. (You may delete this class from your submitted solution.)
    '''
    logger = logging.getLogger('AugmentingTest')
    data = data
    augmenting = augmenting
    augmenting_extended = augmenting_extended

    def assertAugmentingSignature(self, found: Any) -> None:
        self.assertEqual(type(found), bool,
                         'Incorrect return type for augmenting: expected '
                         f'"bool", but "{type(found).__name__}" was returned.')

    def assertAugmentingExtendedSignature(self, t: Any) -> None:
        prefix = 'Incorrect return type for augmenting_extended:'
        self.assertEqual(type(t), tuple,
                         f'{prefix} expected '
                         '"Tuple[bool, List[Tuple[str, str]]]]", but '
                         f'"{type(t).__name__}" was returned.')
        self.assertEqual(len(t), 2,
                         f'{prefix} expected tuple of length 2, but tuple of '
                         f'length {len(t)} was returned.')
        found, path = t
        self.assertEqual((type(found), type(path)), (bool, list),
                         f'{prefix} expected first tuple element to be "bool" '
                         f'but {type(found).__name__} was returned.')
        self.assertEqual(type(path), list,
                         f'{prefix} expected '
                         '"Tuple[bool, List[Tuple[str, str]]]]", but '
                         f'"Tuple[{type(path).__name__}, '
                         f'{type(path).__name__}" was returned.')
        for i, e in enumerate(path):
            self.assertEqual(type(e), tuple,
                             f'{prefix} expected each element in list to have '
                             'type "Tuple[str, str]", but the element at '
                             f'index {i} has type "{type(e).__name__}".')
            self.assertEqual(len(e), 2,
                             f'{prefix} expected each element in list to be a '
                             f'tuple of size 2, but the element at index {i} '
                             f'is a tuple of size "{len(e)}".')
            self.assertEqual((type(e[0]), type(e[1])), (str, str),
                             f'{prefix} expected each element in list to have '
                             'type "Tuple[str, str]", but the element at '
                             f'index {i} has type "Tuple['
                             f'{type(e[0]).__name__}, {type(e[1]).__name__}".')

    def assertIsAugmentingPath(self, graph: Graph, s: str, t: str,
                               path: List[Tuple[str, str]]) -> None:
        if len(path) == 0:
            self.fail('The path should be non-empty.')

        self.assertEqual(path[0][0], s,
                         f'The path does not start at the source {s}.')

        self.assertEqual(path[-1][1], t,
                         f'The path does not end at the sink {t}.')

        for u, v in path:
            self.assertIn((u, v), graph,
                          f'The edge {(u, v)} of the path does not exist in '
                          'the graph.')
            self.assertLess(graph.flow(u, v), graph.capacity(u, v),
                            f'The flow is not less than the capacity for the '
                            f'edge {(u, v)}.')
        self.assertEqual(len(path), len(set(path)),
                         'The path contains duplicates of one or more edges.')

    def test_augmenting(self) -> None:
        for i, instance in enumerate(AugmentingTest.data):
            with self.subTest(instance=i):
                graph = instance['digraph'].copy()
                found = AugmentingTest.augmenting(
                    graph, instance['source'], instance['sink'])
                m = '' if instance['expected'] else ' not'
                self.assertAugmentingSignature(found)
                self.assertEqual(found, instance['expected'],
                                 f'The network should{m} contain an '
                                 f'augmenting path.')

    def test_augmenting_extended(self) -> None:
        instance = AugmentingTest.data[0]
        if AugmentingTest.augmenting_extended(instance['digraph'].copy(),
                                              instance['source'],
                                              instance['sink']) is None:
            self.skipTest('augmenting_extended not implemented.')

        for i, instance in enumerate(AugmentingTest.data):
            with self.subTest(instance=i):
                graph = instance['digraph'].copy()
                t = AugmentingTest.augmenting_extended(graph,
                                                       instance['source'],
                                                       instance['sink'])
                self.assertAugmentingExtendedSignature(t)
                found, path = t

                m = '' if instance['expected'] else ' not'
                self.assertEqual(found, instance['expected'],
                                 f'The network should{m} contain an '
                                 f'augmenting path.')
                if instance['expected']:
                    self.assertIsAugmentingPath(instance['digraph'].copy(),
                                                instance['source'],
                                                instance['sink'],
                                                path)
                else:
                    self.assertListEqual(path, [])


if __name__ == '__main__':
    # Set logging config to show debug messages:
    logging.basicConfig(level=logging.DEBUG)
    # run unit tests (failfast=True stops testing after the first failed test):
    unittest.main(failfast=True)

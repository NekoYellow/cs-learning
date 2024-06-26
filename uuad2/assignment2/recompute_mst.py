#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import logging
import math
import unittest
from collections import deque
from src.graph import Graph
from src.recompute_mst_data import data
from typing import *
'''
Assignment 2, Problem 2: Recomputing a Minimum Spanning Tree

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


__all__ = ['update_MST_1', 'update_MST_2', 'update_MST_3', 'update_MST_4', 'dfs']


def update_MST_1(G: Graph, T: Graph, e: Tuple[str, str],
                 weight: int) -> Union[Tuple[None, None],
                                       Tuple[Tuple[str, str],
                                             Tuple[str, str]]]:
    '''
    Pre:  G is an undirected weighted graph, T is a minimum spanning tree of G,
          e is an edge in G but not in T, and weight is greater than the current 
          weight of e.
    Post: The new weight is updated in G, and T is a minimum spanning tree of
          the new graph G (remains unchanged).
    Ex:   TestCase 1 below
    '''
    (u, v) = e
    assert (e in G and e not in T and weight > G.weight(u, v))
    G.set_weight(u, v, weight)
    return None, None


def update_MST_2(G: Graph, T: Graph, e: Tuple[str, str],
                 weight: int) -> Union[Tuple[None, None],
                                       Tuple[Tuple[str, str],
                                             Tuple[str, str]]]:
    '''
    Pre:  G is an undirected weighted graph, T is a minimum spanning tree of G,
          e is an edge in G but not in T, and weight is less than the current 
          weight of e.
    Post: The new weight is updated in G, and T is a minimum spanning tree of
          the new graph G (updated if necessary).
    Ex:   TestCase 2 below
    '''
    (u, v) = e
    assert (e in G and e not in T and weight < G.weight(u, v))
    G.set_weight(u, v, weight)
    prev = {} # for finding path
    def add2(d): # currying: add to dict
        def add2d(u, p):
            d[u] = p
        return add2d
    # find path from u to v in T
    dfs(T, u, '', add2(prev)) # assume '' is not a node in T
    ne = e # new edge to remove from T (with the greatest weight)
    while v != u:
        if G.weight(prev[v], v) > G.weight(*ne):
            ne = (prev[v], v)
        v = prev[v]
    if ne == e: return None, None # e has the greatest weight in the cycle
    T.remove_edge(*ne)
    T.add_edge(*e, G.weight(*e))
    return ne, e
            

def update_MST_3(G: Graph, T: Graph, e: Tuple[str, str],
                 weight: int) -> Union[Tuple[None, None],
                                       Tuple[Tuple[str, str],
                                             Tuple[str, str]]]:
    '''
    Pre:  G is an undirected weighted graph, T is a minimum spanning tree of G,
          e is an edge both in G and in T, and weight is less than the current 
          weight of e.
    Post: The new weight is updated in G and in T, and T is a minimum spanning
          tree of the new graph G (remains unchanged).
    Ex:   TestCase 3 below
    '''
    (u, v) = e
    assert (e in G and e in T and weight < G.weight(u, v))
    G.set_weight(u, v, weight)
    T.set_weight(u, v, weight)
    return None, None


def update_MST_4(G: Graph, T: Graph, e: Tuple[str, str],
                 weight: int) -> Union[Tuple[None, None],
                                       Tuple[Tuple[str, str],
                                             Tuple[str, str]]]:
    '''
    Pre:  G is an undirected weighted graph, T is a minimum spanning tree of G,
          e is an edge both in G and in T, and weight is greater than the
          current weight of e.
    Post: The new weight is updated in G and T, and T is a minimum spanning
          tree of the new graph G (updated if necessary).
    Ex:   TestCase 4 below
    '''
    (u, v) = e
    assert (e in G and e in T and weight > G.weight(u, v))
    G.set_weight(u, v, weight)
    T.remove_edge(u, v) # remove e from T, spliting T into two trees
    cu, cv = set(), set()
    def add2(s): # currying: add to set
        def add2s(e, _):
            s.add(e)
        return add2s
    # add nodes of two trees into cu or cv (for fast lookup)
    dfs(T, u, '', add2(cu)) # assume '' is not a node in T
    dfs(T, v, '', add2(cv)) # same as above
    edges = set(G.edges) - set(T.edges) # edges in E \ E'
    ne = None # new edge to add into T (with the least weight)
    for edge in edges:
        (u, v) = edge
        if (u in cu and v in cv) or (u in cv and v in cu):
            if ne is None or G.weight(u, v) < G.weight(*ne):
                ne = edge
    T.add_edge(*ne, G.weight(*ne))
    if set(list(e)) == set(list(ne)): return None, None # e and ne is the same edge
    return e, ne


def dfs(G: Graph, u: str, p: str, func: Callable[[str, str], None]) -> None:
    '''
    Pre:  G is an undirected weighted graph, u and p are nodes in G, and func
          is a function that takes two nodes u and p as input.
    Post: The function func is applied to each pair of nodes (u, p) in G (p
          is the node visited just before u).
    Ex:   dfs(G, u, '', print) will print all nodes in G with their parent.
    '''
    func(u, p)
    for v in G.neighbors(u):
        if v == p: continue
        dfs(G, v, u, func)


class RecomputeMstTest(unittest.TestCase):
    '''
    Test Suite for minimum spanning tree problem

    Any method named 'test_something' will be run when this file is
    executed. You may add your own test cases if you wish.
    (You may delete this class from your submitted solution.)
    '''
    logger = logging.getLogger('RecomputeMstTest')
    data = data
    update_MST = [update_MST_1, update_MST_2, update_MST_3, update_MST_4]

    def assertSignature(self, t: Any) -> None:
        prefix = 'Incorrect return type: '
        prefix_t = (f'{prefix} expected "Tuple[None, None]" or '
                    '"Tuple[Tuple[str, str], Tuple[str, str]]", but ')
        self.assertEqual(type(t), tuple,
                         f'{prefix_t} "{type(t).__name__}" was returned.')
        self.assertEqual(len(t), 2,
                         f'{prefix} expected tuple of length 2, but tuple of '
                         f'length {len(t)} was returned.')
        e_removed, e_added = t
        if e_removed is None or e_added is None:
            msg = (f'{prefix_t} "Tuple[{type(e_removed).__name__}, '
                   f'{type(e_added)}]" was returned.')
            self.assertIsNone(e_removed, msg)
            self.assertIsNone(e_added, msg)
            return

        self.assertEqual((type(e_removed), type(e_added)),
                         (tuple, tuple),
                         f'{prefix_t} "Tuple[{type(e_removed).__name__}, '
                         f'{type(e_added)}]" was returned.')
        self.assertEqual((len(e_removed), len(e_added)), (2, 2),
                         f'{prefix} expected both edges to be tuples of '
                         f'length 2, but they have sizes {len(e_removed)} and '
                         f'{len(e_added)}.')
        msg = (
          f'{prefix_t} Tuple[Tuple['
          f'{type(e_removed[0]).__name__}, {type(e_removed[1]).__name__}], '
          f'{type(e_added[0]).__name__}, {type(e_added[1]).__name__}]]" '
          'was returned')
        self.assertEqual((type(e_removed[0]), type(e_removed[1])), (str, str),
                         msg)
        self.assertEqual((type(e_added[0]), type(e_added[1])), (str, str), msg)

    def assertReturnedValue(self, unmodified_g: Graph, modified_g: Graph,
                            unmodified_t: Graph, modified_t: Graph,
                            t: Union[Tuple[None, None],
                                     Tuple[Tuple[str, str],
                                           Tuple[str, str]]]) -> None:
        e_removed, e_added = t
        if e_removed is None or e_added is None:
            return
        if e_removed == e_added:
            return
        self.assertLessEqual(unmodified_g.weight(*e_removed),
                             unmodified_g.weight(*e_added),
                             'The weight of the added edge cannot be less '
                             'than the weight of the removed edge in the'
                             'unmodified graph.')
        self.assertGreaterEqual(modified_g.weight(*e_removed),
                                modified_g.weight(*e_added),
                                'The weight of the added edge cannot be '
                                'greater than the weight of the removed edge '
                                'in the modified graph.')
        self.assertIn(e_removed, unmodified_t,
                      'The removed edge is not in unmodified MST.')
        self.assertNotIn(e_removed, modified_t,
                         'The removed edge is in the modified MST.')
        self.assertNotIn(e_added, unmodified_t,
                         'The added edge is in the unmodified MST.')
        self.assertIn(e_added, modified_t,
                      'The added edge is not in the modified MST.')

    def assertUndirectedEdgesEqual(self, actual: List[Tuple[str, str]],
                                   expected: List[Tuple[str, str]]) -> None:
        self.assertListEqual(
            sorted(((min(u, v), max(u, v)) for u, v in actual)),
            sorted(((min(u, v), max(u, v)) for u, v in expected)),
            'The edges in the MST does not match the expected edges.')

    def assertEdgesInExpectedGraph(self, expected_graph: List[Tuple[str, str]],
                                   graph: Graph) -> None:
        for e in expected_graph:
            self.assertIn(e, graph,
                          f'The edge {e} is not in the expected graph.')

    def assertTreeIsConnected(self, tree: Graph) -> None:
        if len(tree.nodes) == 0:
            return
        visited = set()
        queue = deque([tree.nodes[0]])
        while len(queue) > 0:
            u = queue.popleft()
            visited.add(u)
            for v in tree.neighbors(u):
                if v not in visited:
                    queue.append(v)
        self.assertSetEqual(visited, set(tree.nodes),
                            'The tree is not connected.')

    def assertGraphsEqual(self, actual: Graph, expected: Graph) -> None:
        self.assertEqual(len(actual.edges), len(expected.edges),
                         'The graphs have different number of edges.')
        for u, v in actual.edges:
            self.assertEqual(actual.weight(u, v), expected.weight(u, v),
                             f'The weight of edge ({u}, {v}) is not equal in '
                             'the actual and expected graphs.')

    def test_mst(self) -> None:
        is_implemented = [True] * len(RecomputeMstTest.update_MST)

        for i, update_MST in enumerate(RecomputeMstTest.update_MST, start=1):
            instance = data[0]
            graph = instance['graph'].copy()
            tree = instance['mst'].copy()
            u, v = instance['solutions'][i - 1]['edge']
            weight = instance['solutions'][i - 1]['weight']
            if update_MST(graph, tree, (u, v), weight) is None:
                self.logger.warning(f'update_MST_{i} not implemented.')
                is_implemented[i - 1] = False
                continue

            # test update_MST_{i}:
            for j, instance in enumerate(RecomputeMstTest.data):
                # test update_MST_{i} using instance {j}:
                with self.subTest(case=i, instance=j):
                    graph: Graph = instance['graph'].copy()
                    tree: Graph = instance['mst'].copy()
                    u, v = instance['solutions'][i - 1]['edge']
                    weight = instance['solutions'][i - 1]['weight']
                    expected = instance['solutions'][i - 1]['expected']
                    expected_graph: Graph = instance['graph'].copy()
                    expected_graph.set_weight(u, v, weight)
                    t = update_MST(graph, tree, (u, v), weight)
                    self.assertSignature(t)
                    self.assertReturnedValue(instance['graph'], graph,
                                             instance['mst'], tree,
                                             t)
                    self.assertUndirectedEdgesEqual(tree.edges, expected)
                    self.assertEdgesInExpectedGraph(tree.edges, expected_graph)
                    self.assertTreeIsConnected(tree)
                    self.assertGraphsEqual(graph, expected_graph)

        num_implemented_funs = sum((1 if b else 0 for b in is_implemented))
        self.assertGreaterEqual(
          num_implemented_funs, 3,
          'At least three of the four update_MST functions must be ' +
          'implemented.')


if __name__ == '__main__':
    # Set logging config to show debug messages:
    logging.basicConfig(level=logging.DEBUG)
    # run unit tests (failfast=True stops testing after the first failed test):
    unittest.main(failfast=True)

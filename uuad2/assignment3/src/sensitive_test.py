import logging
import math
import unittest
from collections import deque
from src.graph import Graph
from src.sensitive_data import data
from typing import *
from sensitive import *


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

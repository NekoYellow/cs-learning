import logging
import math
import unittest
from collections import deque
from src.party_seating_data import data
from typing import *
from party_seating import *


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

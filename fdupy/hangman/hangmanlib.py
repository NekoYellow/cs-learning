"""
hangmanlib.py
   A set of tools for hangman.py.
"""

from typing import Dict, List, Optional


MAX_MISTAKES = 6
LINEPERIMAGE = 9  #Every LINEPERIMAGE is a perfect picture of hangman
LINES = ''' ______
|  |
|  
| 
|  
|  
|_____
|     |____
|__________|
 ______
|  |
|  O
| 
|  
| 
|_____
|     |____
|__________|
 ______
|  |
|  O
| /
|  
| 
|_____
|     |____
|__________|
 ______
|  |
|  O
| /|
|  |
|  
|_____
|     |____
|__________|
 ______
|  |
|  O
| /|\ 
|  |
|  
|_____
|     |____
|__________|
 ______
|  |
|  O
| /|\ 
|  |
| /  
|_____
|     |____
|__________|
 ______
|  |
|  O
| /|\ 
|  |
| / \ 
|_____
|     |____
|__________|

'''


class Word:
    """A wrapped class of the secret word.

    It keeps two lists to represent the original form and the covered
    form of the secret word, as well as a dictionary pairing each
    character of the word with its indices (kept in a list).
    
    >>> original = "parallel"
    >>> secret_word = Word(original)
    >>> secret_word.covered
    _ _ _ _ _ _ _ _
    >>> secret_word.original
    parallel
    >>> secret_word.index_of("l")
    [4, 5, 7]
    >>> secret_word.hit("l")
    True
    >>> secret_word.covered
    _ _ _ _ l l _ l
    >>> secret_word.is_guessed
    False
    """
    def __init__(self, word: str) -> None:
        self._original = [c for c in word]
        assert self._original != []  # the word cannot be empty
        self._covered = ['_']*len(word)
        self._indexs: Dict[str, List[int]] = {c: [] for c in word}
        for i, c in enumerate(word):
            self._indexs[c].append(i)

    @property
    def original(self) -> str:
        return ''.join(self._original)

    @property
    def covered(self) -> str:
        return ' '.join(self._covered)

    @property
    def is_guessed(self) -> bool:
        return self._original == self._covered

    def index_of(self, character: str) -> Optional[List[int]]:
        return self._indexs.get(character)
    
    def hit(self, character: str) -> bool:
        if self.index_of(character) == None:
            return False
        for i in self.index_of(character):
            self._covered[i] = self._original[i]
        return True

    def __str__(self) -> str:
        return self.covered


def print_block(secret_word: Word, mistakes: int, is_init: bool = False) -> None:
    """Print a game block.

    >>> print_block(Word("any"), 0, True)
                                      ______
                                     |  |
                                     |
                                     |
             _ _ _ _ _ _             |
                                     |
                                     |_____
                                     |     |____
                                     |__________|
    """
    lines = LINES.split('\n')
    start = mistakes * LINEPERIMAGE # mistakes * 9
    mid = start + (LINEPERIMAGE>>1) # start + 4
    
    if not is_init:
        print(f"mistakes: {mistakes}")

    for line in lines[start: mid]:
        print('\t'*4, line)
    
    if mistakes == MAX_MISTAKES:
        print('\t', "Y O U  L O S E !", '\r', end='')
    elif secret_word.is_guessed:
        print('\t', "Y O U  W I N !", '\r', end='')
    else:
        print('\t', secret_word, '\r', end='')
    
    for line in lines[mid: start + LINEPERIMAGE]:
        print('\t'*4, line)

    print()


def date(y: int, m: int, d: int) -> str:
    """Format date.

    >>> date(2022, 5, 4)
    20220504
    >>> date(2000, 10, 30)
    20221030
    """
    y, m, d = map(str, [y, m, d])
    assert len(y) == 4
    date_str = y
    if len(m) == 1:
        date_str += '0'
    date_str += m
    if len(d) == 1:
        date_str += '0'
    date_str += d
    return date_str


# module test
if __name__ == "__main__":
    if False:
        for i in range(0, 7):
            print_hangman(i)
    if True:
        word = Word("parallel")
        print_block(word, 0)
        word.hit("l")
        print_block(word, 3)
        word.hit("a")
        print_block(word, 6)
    if True:
        print(date(2022, 12, 12))
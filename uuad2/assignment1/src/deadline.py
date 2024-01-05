from datetime import timedelta
from functools import wraps
from threading import Thread
from typing import Union
__all__ = ['timeout']


def timeout(duration: Union[int, float, timedelta]):
    duration = (duration.total_seconds() if isinstance(duration, timedelta)
                else duration)

    def wrapper(f):
        @wraps(f)
        def wrapped(self, *f_args, **f_kwargs):
            timed_out = False
            try:
                thread = Thread(target=f, args=(self, *f_args),
                                kwargs=f_kwargs)
                thread.start()
                thread.join(duration)
                timed_out = thread.is_alive()
            except Exception:
                if not timed_out:
                    raise
            finally:
                if timed_out:
                    self.fail(f'The execution of {f.__name__} timed out.')
        return wrapped
    return wrapper

import random

def init_seed(seed: int) -> int:
    if seed is None:
        seed = random.randint(0, 2**32 - 1)
    random.seed(seed)
    return seed

from .seed import init_seed

def generate(seed=None):
    seed = init_seed(seed)
    print("Seed generated: " + str(seed))
    return seed

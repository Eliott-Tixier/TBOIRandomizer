from pathlib import Path
from TBOIRandomizer.core.generator import generate
from TBOIRandomizer.export.lua import generate_main_lua

def main():
    seed = generate()

    output = Path(
        "generated_mod/TBOIRandomizer/main.lua"
    )

    generate_main_lua(seed, output)

    print(f"Generated main.lua with seed {seed}")
    print(f"Path: {output.resolve()}")

if __name__ == "__main__":
    main()


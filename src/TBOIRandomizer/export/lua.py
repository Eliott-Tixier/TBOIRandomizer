from pathlib import Path

TEMPLATE_PATH = Path(__file__).parent.parent / "templates" / "main.lua.tpl"


def generate_main_lua(seed: int, output_path: Path):
    template = TEMPLATE_PATH.read_text(encoding="utf-8")

    content = template.replace("{{SEED}}", str(seed))

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(content, encoding="utf-8")

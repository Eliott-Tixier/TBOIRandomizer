from dataclasses import dataclass

@dataclass(frozen=True)
class Achievement:
    id: int
    name: str
    text: str = ""

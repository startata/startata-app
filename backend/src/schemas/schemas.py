from pydantic import BaseModel
from typing import Optional, List


class Team(BaseModel):
    id: Optional[int] = None
    index: int
    label: str

    class Config:
        orm_mode = True


class User(BaseModel):
    id: Optional[int] = None
    name: str
    email: str
    photo_url: str
    teams: Optional[List[Team]] = []

    class Config:
        orm_mode = True


from sqlalchemy import select, delete
from sqlalchemy.orm import Session
from src.infra.sqlalchemy.models import models
from src.schemas import schemas


class TeamRepository:

    def __init__(self, db: Session):
        self.session = db

    def criar(self, team: schemas.Team):
        db_team = models.Team(index=team.index,
                                label=team.label)
        self.session.add(db_team)
        self.session.commit()
        self.session.refresh(db_team)

        return db_team

    def listar(self):
        teams = self.session.query(models.Team).all()
        return teams
        
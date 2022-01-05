from sqlalchemy import select, delete
from sqlalchemy.orm import Session
from src.infra.sqlalchemy.models import models
from src.schemas import schemas


class UserRepository:

    def __init__(self, db: Session):
        self.session = db

    def criar(self, user: schemas.User):
        db_user = models.User(name=user.name,
                                email=user.email,
                                photo_url=user.photo_url,
                                # teams=user.teams
                                )
        self.session.add(db_user)
        self.session.commit()
        self.session.refresh(db_user)

        return db_user

    def listar(self):
        users = self.session.query(models.User).all()
        return users

    def obter(self, user_id: int):
        stmt = select(models.User).filter_by(id=user_id)
        user = self.session.execute(stmt).one()

        return user

    def remover(self, user_id: int):
        stmt = delete(models.User).where(models.User.id == user_id)

        self.session.execute(stmt)
        self.session.commit()


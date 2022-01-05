from sqlalchemy.orm import Session
from fastapi import FastAPI, Depends, status
from src.infra.sqlalchemy.config.database import criar_bd, get_db
from src.schemas import schemas
from src.infra.sqlalchemy.repositories.user_repository import UserRepository
from src.infra.sqlalchemy.repositories.team_repository import TeamRepository

# Criar a base de dados
criar_bd()


app = FastAPI()


# userS

@app.post('/users', status_code=status.HTTP_201_CREATED)
def create_user(user: schemas.User, db: Session = Depends(get_db)):
    created_user = UserRepository(db).criar(user)
    return created_user

@app.get('/users')
def list_users(db: Session = Depends(get_db)):
    return UserRepository(db).listar()

@app.get('/users/{user_id}')
def get_user(user_id: int, db: Session = Depends(get_db)):
    user = UserRepository(db).obter(user_id)
    return user

@app.delete('/users/{user_id}')
def delete_user(user_id: int, db: Session = Depends(get_db)):
    UserRepository(db).remover(user_id)
    return {"msg": "Removido com sucesso"}


# TEAMS

@app.post('/teams', status_code=status.HTTP_201_CREATED)
def create_team(team: schemas.Team, session: Session = Depends(get_db)):
    created_team = TeamRepository(session).criar(team)
    return created_team

@app.get('/teams')
def list_teams(db: Session = Depends(get_db)):
    return TeamRepository(db).listar()
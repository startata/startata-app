'''
from enum import auto
from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from src.infra.sqlalchemy.config.database import Base


class Person(Base):
    __tablename__ = 'person'
    id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String)
    email = Column(String)
    photo_url = Column(String)
    teams = relationship('Team', back_populates='person')


class Team(Base):
    __tablename__ = 'team'
    id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    index = Column(Integer)
    label = Column(String)
    person_id = Column(Integer, ForeignKey('person.id', name='fk_person'))

    person = relationship('Person', back_populates='teams')
    
'''

from enum import auto
from sqlalchemy import Column, Integer, String, ForeignKey, Table
from sqlalchemy.orm import backref, relationship
from src.infra.sqlalchemy.config.database import Base

associate_table = Table('association', Base.metadata,
    Column('team_id', Integer, ForeignKey('team.id')),
    Column('person_id', Integer, ForeignKey('person.id'))
)

class User(Base):

    __tablename__ = 'person'

    id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String)
    email = Column(String)
    photo_url = Column(String)
    teams = relationship('Team', secondary=associate_table)

    def __repr__(self):
        return "<Person {}>".format(self.id)
 

class Team(Base):

    __tablename__ = 'team'

    id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    index = Column(Integer)
    label = Column(String)

    def __repr__(self):
        return "<Team {}>".format(self.id)
    

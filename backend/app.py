from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

@app.get('/')
async def index():
    return {'data': 'Rodou aqui'}
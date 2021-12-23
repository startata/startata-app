# Startata Backend API

Web API in Python using FastAPI.

## Overview

FastAPI is a modern, fast (high-performance), web framework for building APIs with Python 3.6+ based on standard Python type hints.

## Features

:black_square_button:   fazer login com e-mail e senha  <br />
:black_square_button:   listar todos os usuários <br />
:black_square_button:   inserir vários reports a vários usuários de uma vez <br />
:black_square_button:   gerar um arquivo com a ata (.pdf) <br />
:black_square_button:   realizar o download desse arquivo <br />
:black_square_button:   listar receivers e-mails <br />
:black_square_button:   enviar um arquivo a um e-mail específico <br />
 <br />

:black_square_button:   adicionar um receiver e-mail  <br />
:black_square_button:   obter reports de um usuário em uma data em específico <br />
:black_square_button:   inserir um report a um usuário em específico <br />
:black_square_button:   editar report passado de um usuário <br />
 <br />
done	:white_check_mark: todo	:black_square_button:
## Preconditions:

- Python 3.8+

## Clone the project

```
git clone <link>
```

## Run local


### Install VirtualEnv

```
virtualenv -p python3 venv
```
### Active VirtualEnv

```
. venv/bin/activate
```
### Install dependencies

```
pip install -r requirements.txt
```

### Run server

```
uvicorn app:app --reload
```

## Run with docker

### Run server

```
docker-compose up -d --build
```

## API documentation (provided by Swagger UI)

```
http://127.0.0.1:8000/docs
```

### Run server

```
docker-compose exec db psql --username=fastapi --dbname=fastapi_dev
```


## Project structure

Files related to application are in the ``app`` or ``tests`` directories.
Application parts are:


    app
    ├── api              - web related stuff.
    │   ├── dependencies - dependencies for routes definition.
    │   ├── errors       - definition of error handlers.
    │   └── routes       - web routes.
    ├── core             - application configuration, startup events, logging.
    ├── db               - db related stuff.
    │   ├── migrations   - manually written alembic migrations.
    │   └── repositories - all crud stuff.
    ├── models           - pydantic models for this application.
    │   ├── domain       - main models that are used almost everywhere.
    │   └── schemas      - schemas for using in web routes.
    ├── resources        - strings that are used in web responses.
    ├── services         - logic that is not just crud related.
    └── main.py          - FastAPI application creation and configuration.
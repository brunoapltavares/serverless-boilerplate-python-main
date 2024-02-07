import os

from fastapi import FastAPI
from mangum import Mangum

stage = os.environ.get('STAGE', 'dev')


app = FastAPI()

@app.get("/")
def index():
    return {"Hello": "World"}


@app.get("/users/{user_id}")
def read_item(user_id: int):
    return {"user_id": user_id}

handler = Mangum(app)
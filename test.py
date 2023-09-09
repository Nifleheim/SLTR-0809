from typing import Optional

from fastapi import FastAPI

import uvicorn

app = FastAPI()

@app.get("/")
def home():
    return "Selamat datang ke halaman utama Solitaire Take Home Test!"

@app.get("/welcome/")
def anonymous():
    return "Are you Anonymous???"

@app.get("/welcome/{name}")
def welcome(name):
    return f"Selamat datang {name}!"

if __name__ == '__main__':
    uvicorn.run(app, port=5000, host="0.0.0.0")

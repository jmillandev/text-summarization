from logging import getLogger

from fastapi import FastAPI, Response

from app.api import ping
from app.db import init_db

log = getLogger("uvicorn")


def create_application() -> FastAPI:
    application = FastAPI()
    application.include_router(ping.router)

    return application


app = create_application()


@app.on_event("startup")
async def startup_event():
    log.info("Starting up...")
    init_db(app)


@app.on_event("shutdown")
async def shutdown_event():
    log.info("Shutting down...")


@app.get('/healthcheck')
async def healthcheck():
    return Response('OK')

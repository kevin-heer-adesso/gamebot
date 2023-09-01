#
# api.py
# gamebot
#
# Created by Heer, Kevin on 01.09.2023
# Copyright © 2023 adesso mobile solutions GmbH. All rights reserved.
#

from fastapi import FastAPI

from api.routers import health_check

app = FastAPI()
app.include_router(health_check.router)

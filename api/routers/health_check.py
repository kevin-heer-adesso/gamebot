#
# health_check.py
# gamebot
#
# Created by Heer, Kevin on 01.09.2023
# Copyright © 2023 adesso mobile solutions GmbH. All rights reserved.
#

from fastapi import APIRouter
from pydantic import BaseModel, Field

router = APIRouter()


class HealthCheckResponseDto(BaseModel):
    """The response model for the healthcheck endpoint."""

    status: str = Field(..., description="The status of the API.")


@router.get(
    "/api/v1/health",
    summary="Health check of the service by validating the environment configuration.",
    response_model=HealthCheckResponseDto,
)
def health_check():
    # Perform health checks for API (e.g. validate environment variables)

    return HealthCheckResponseDto(status="API is healthy!")

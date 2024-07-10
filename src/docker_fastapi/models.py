from datetime import datetime

import pydantic


class SensorDataBase(pydantic.BaseModel):
    sensor_id: str
    temperature: float
    humidity: float
    timestamp: datetime


class SensorData(SensorDataBase):
    id: int

    class Config:
        orm_mode = True

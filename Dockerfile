FROM python:3.13.11-slim

COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin

WORKDIR /pipeline

COPY pyproject.toml uv.lock .python-version ./

RUN uv sync --locked

COPY ./data_ingestion.py .

ENTRYPOINT ["uv", "run", "python", "data_ingestion.py"]
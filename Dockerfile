FROM python:3.10
LABEL author="estat"
LABEL project="fazenda"

WORKDIR /usr/src/

RUN [ "pip3", "install", "poetry" ]

COPY conftest.py .
COPY pytest.ini .
COPY poetry.lock .
COPY pyproject.toml .

RUN [ "poetry", "install", "--no-root", "--no-interaction", "--no-ansi" ]

COPY tests/ tests/
COPY pkggen/ pkggen/

RUN [ "poetry", "build" ]

RUN find $(pwd)/dist/ | grep whl | xargs pip install

FROM python:3.10

WORKDIR /app

COPY . /app

EXPOSE 6379

RUN pip install poetry

RUN pip install requirements.txt

RUN poetry install 

RUN poetry run python main.py

CMD ["python","main.py"]
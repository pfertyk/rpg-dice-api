FROM python:3.7
EXPOSE 80
WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
COPY ./app app
CMD uvicorn app.main:app --host 0.0.0.0 --port 80

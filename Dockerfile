FROM python:3.8-slim-buster

COPY requirements.txt . 

RUN pip3 install -r requirements.txt

WORKDIR /app

COPY python-deep-learning-chatbot . 

EXPOSE 8888

CMD ["python3", "app.py" ]





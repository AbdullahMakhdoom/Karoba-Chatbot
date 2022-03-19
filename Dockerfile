FROM python:3.8-slim-buster

COPY requirements.txt . 

RUN pip3 install -r requirements.txt

WORKDIR /app

COPY python-deep-learning-chatbot . 

CMD ["python3", "app.py" , "--host=0.0.0.0"]





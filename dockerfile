FROM python:3.10.0b4-buster
WORKDIR /usr/src/app
EXPOSE 8000
COPY . .
RUN pip install -r requirements.txt
CMD ["python3","app.py"]

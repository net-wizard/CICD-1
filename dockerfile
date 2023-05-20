EXPOSE 8000
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
WORKDIR /usr/src/app/app
CMD ["python3","app.py"]

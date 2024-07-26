FROM python:latest
RUN apt-get update -y
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt && chmod +x app.py
ENTRYPOINT ["python"]
CMD ["app.py"]

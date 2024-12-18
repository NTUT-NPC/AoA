FROM python:3.9-slim
RUN apt update
RUN apt install -y pandoc
RUN pip install Flask
WORKDIR /var/www/html
COPY docs .
COPY build .
RUN pandoc aoa.md -o index.html
EXPOSE 5000
CMD ["python", "app.py"]
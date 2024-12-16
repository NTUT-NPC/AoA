FROM python:3.9-slim
WORKDIR /var/www/html
RUN apt update
RUN apt install -y pandoc tree
RUN pip install Flask
COPY docs .
COPY assets ./assets
COPY build .
RUN pandoc aoa.md -o index.html
EXPOSE 5000
RUN tree .
CMD ["python", "app.py"]

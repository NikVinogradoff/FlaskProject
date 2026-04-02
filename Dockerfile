FROM python:3.10-slim-bookworm

WORKDIR /usr/src/FlaskProject

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8081
CMD ["waitress-serve", "--host", "0.0.0.0", "--port", "8081", "app:app"]

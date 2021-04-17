FROM python:3.7-alpine
WORKDIR /code
RUN apk add --no-cache gcc musl-dev linux-headers
COPY . /code/
RUN pip install -r requirements.txt
ENV FLASK_APP app.py
EXPOSE 5000
CMD flask run --host=0.0.0.0

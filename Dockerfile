FROM python:3-alpine

WORKDIR /app

RUN apk update && apk add --no-cache git

RUN git clone https://github.com/Issoufkam/flaskcourses.git .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "app.py" ]

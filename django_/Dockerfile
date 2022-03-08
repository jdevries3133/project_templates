FROM python:3.10-alpine
WORKDIR /app

RUN apk add nodejs npm

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt


COPY . .

RUN python manage.py tailwind install
RUN python manage.py tailwind build

ENTRYPOINT ["sh", "scripts/entrypoint_prod.sh"]

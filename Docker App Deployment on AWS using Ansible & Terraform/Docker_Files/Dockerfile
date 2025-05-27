FROM python:3.9-slim

WORKDIR /app_dir

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY APP.py .

EXPOSE 3000

CMD ["python", "APP.py"]
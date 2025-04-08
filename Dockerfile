FROM python:3.13

WORKDIR code/

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["fastapi", "run", "app.py", "--port", "80"]
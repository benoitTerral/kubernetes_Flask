# https://snyk.io/blog/best-practices-containerizing-python-docker/
FROM python:3.10.12@sha256:cc91315c3561d0b87d0525cb814d430cfbc70f10ca54577def184da80e87c1db

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3", "app.py"]
# CMD ["tail", "-f", "/dev/null"]

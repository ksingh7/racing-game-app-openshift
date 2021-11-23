FROM registry.access.redhat.com/ubi8/ubi-minimal
RUN microdnf install -y python3
WORKDIR /app
COPY . /app
#RUN python3 -m pip install -r /app/requirements.txt
EXPOSE 8080
CMD ["python3", "-m", "http.server", "8080"]
#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
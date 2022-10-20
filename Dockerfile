FROM python:3.8.3-slim
RUN apt update && \
    apt -y install git && \
    git clone https://github.com/YoongiKim/DockerTutorial.git && \
    pip install flask
WORKDIR /DockerTutorial
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]

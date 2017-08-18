# FROM directive instructing base image to build upon
FROM python:3

ENV PYTHONUNBUFFERED 1

#RUN apt-get update && apt-get install -y \


COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

# COPY startup script into known file location in container
COPY start_django.sh /start_django.sh

# EXPOSE port 8000 to allow communication to/from server
EXPOSE 8000

WORKDIR /app

# CMD specifcies the command to execute to start the server running.
CMD ["./start_django.sh"]

# done!

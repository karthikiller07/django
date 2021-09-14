FROM python:3.8.3-alpine

#set working diorectory
WORKDIR /usr/src/app

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app
RUN pip install -r requirements.txt

#Copy project
COPY . /usr/src/app

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]

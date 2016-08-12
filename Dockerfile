FROM python 

# Auther 
MAINTAINER Houtheyfa Abbes <doufa94@gmail.com>

ADD	src/ /app

WORKDIR /app

EXPOSE 5000:5000

# Install requirements 
RUN pip install uwsgi uwsgitop Flask

CMD ["uwsgi","uwsgi.ini"]
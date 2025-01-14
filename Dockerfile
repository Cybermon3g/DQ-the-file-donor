FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt .
#RUN mkdir /DQTheFileDonor 
#WORKDIR /DQTheFileDonor
RUN pip3 install --upgrade pip 
#RUN apt install neofetch -y && neofetch
RUN pip3 install -r requirements.txt
#COPY start.sh /start.sh
COPY bot.py .
COPY . .
CMD ["python3", "bot.py"]
#CMD ["/bin/bash", "/start.sh"]

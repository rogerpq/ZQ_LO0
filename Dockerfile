FROM rogerpq/RepthonAr:slim-buster

#clonning repo 
RUN git clone https://github.com/rogerpq/RepthonAr.git /root/RepthonAr
#working directory 
WORKDIR /root/repthon

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","repthon"]

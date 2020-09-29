FROM ubuntu:20.04 

#clonning repo 
RUN git clone https://github.com/vishnu175/SPARKZZZ /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]

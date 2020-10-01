FROM kenhv/kensurbot:alpine

RUN mkdir /root/userbot/bin/
WORKDIR /root/userbot/
ADD https://raw.githubusercontent.com/vishnu175/SPARKZZZ/devolop/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
ENV PATH="/home/userbot/bin:$PATH"
CMD ["bash","sparkzzz/start.sh"]



FROM alpine

RUN git config --global user.email "mailvishnucs@gmail.com"
RUN git config --global user.name "vishnu175"

RUN python3 -m ensurepip \
    && pip3 install --upgrade pip setuptools \
    && pip3 install wheel \
    && rm -r /usr/lib/python*/ensurepip && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

RUN git clone https://github.com/vishnu175/SPARKZZZ /root/userbot
RUN mkdir /root/userbot/bin/
WORKDIR /root/userbot/
ADD https://raw.githubusercontent.com/vishnu175/SPARKZZZ/devolop/requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
ENV PATH="/home/userbot/bin:$PATH"
CMD ["bash","sparkzzz/start.sh"]



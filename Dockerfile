FROM tensorflow/tensorflow:latest-py3

ENV PYTHONUNBUFFERED 1
ARG DEBUG

ADD http://neuroner.com/data/word_vectors/glove.6B.100d.zip .
RUN unzip -q glove.6B.100d.zip -d data/word_vectors

RUN pip3 install -r requirements.txt
RUN python -m spacy download en

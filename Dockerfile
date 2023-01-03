FROM python:3.8-buster

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip latexmk texlive-xetex texlive-fonts-extra

RUN useradd -m builder

USER builder
WORKDIR /home/builder/physexp2

COPY requirements.txt .

RUN pip3 install -r requirements.txt

ENV PATH /home/builder/.local/bin:${PATH}
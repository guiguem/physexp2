FROM python:3.8-buster

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip latexmk texlive-xetex
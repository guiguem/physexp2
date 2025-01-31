FROM continuumio/miniconda3

# Install dependencies
# RUN apt-get update && apt-get install -y \
#     python3-pip 
    # latexmk texlive-xetex texlive-fonts-extra

RUN conda update -y conda

RUN useradd -m builder

USER builder
WORKDIR /home/builder/physexp2

COPY env.yaml .
RUN conda env create -f env.yaml --solver libmamba
ENV env=physexp2_notebook

ENV PATH=/home/builder/.local/bin:${PATH}
RUN echo "source activate ${env}" > ~/.bashrc
ENV PATH=/opt/conda/envs/${env}/bin:$PATH

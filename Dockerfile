FROM continuumio/anaconda:latest

WORKDIR /

RUN git clone https://github.com/gaborvecsei/3d-photo-inpainting.git

WORKDIR /3d-photo-inpainting

RUN conda env create -f environment.yml

RUN chmod +x download.sh
RUN ./download.sh

RUN chmod +x docker_entrypoint.sh

ENTRYPOINT ["/bin/bash", "docker_entrypoint.sh"]

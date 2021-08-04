FROM intelpython/intelpython3_core

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* 
RUN conda update -y conda && \
    conda config --remove channels defaults && \
    conda config --append channels conda-forge && \
    conda update -y --all && \
    rm -rf /opt/conda/pkgs/* 

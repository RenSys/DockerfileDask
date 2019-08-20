FROM daskdev/dask-notebook
RUN wget -O - https://raw.githubusercontent.com/RenSys/DockerfileDask/master/environment.yml > /environment.yml
ADD environment.yml /tmp/environment.yml
RUN conda env update --name base -f /tmp/environment.yml
WORKDIR /home/jovyan/home
FROM daskdev/dask-notebook
ADD environment.yml /tmp/environment.yml
RUN conda env update --name base -f /tmp/environment.yml
WORKDIR /home/jovyan/home
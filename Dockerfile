ARG PATH="/opt/miniconda3/bin:${PATH}"
FROM prismaticbunny/jupyteronbrennerbootstrap:latest
SHELL ["/bin/bash", "--login", "-c"]
COPY environment.yml /opt/environment.yml
RUN conda env create -f /opt/environment.yml
RUN source activate cellrank
RUN conda install pip
RUN /opt/miniconda3/envs/cellrank/bin/python -m ipykernel install --name cellrank --display-name "Python (CellRank Notebook)"
ENTRYPOINT ["/bin/bash", ".", "/opt/miniconda3/etc/profile.d/conda.sh"]
CMD ["/bin/bash"]
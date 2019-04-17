FROM jupyter/scipy-notebook:4cdbc9cdb7d1

RUN conda install -y -c pyviz/label/dev pyviz
RUN pip install -U nltk
RUN fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER


FROM jupyter/scipy-notebook:latest

RUN conda install -y -c pyviz/label/dev pyviz
RUN pip install -U nltk
RUN fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER


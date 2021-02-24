FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install python3-pip
RUN python3 -m pip install -U --force-reinstall pip
RUN pip3 install jupyter jupyterlab --verbose
RUN jupyter lab --generate-config
RUN python3 -c "from notebook.auth.security import set_password; set_password('nvidia', '/root/.jupyter/jupyter_notebook_config.json')"
expose 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root","--notebook-dir=/usr/share/notebook"]



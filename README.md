# Jupyter-Docker

Start Jupyter Notebook Server in Docker Container and access notebooks shared in /usr/share/notebook

# Prerequisite
mkdir/usr/share/notebook

# Build display container and run it.
- sudo docker build -t aitecdev/jupyter-server -f Dockerfile .
- sudo docker run --network host -v /usr/share/notebook:/usr/share/notebook aitecdev/jupyter-server:latest

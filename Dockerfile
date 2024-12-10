FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
    python3-pip \
    vim

RUN pip install --break-system-packages \
    numpy pybullet requests commentjson colorama numpy-stl

WORKDIR /workspace

CMD ["bash"]

FROM tensorflow/tensorflow:latest
WORKDIR /workspace

COPY requirements.txt /workspace

RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt

# Workaround to remove numpy installed with tensorflow
RUN pip3 install --upgrade numpy

COPY . /workspace

# Add Tensorflow bashrc
COPY bashrc /etc/bash.bashrc

RUN mkdir -p /workspace/logs

RUN chmod a+rwx /etc/bash.bashrc

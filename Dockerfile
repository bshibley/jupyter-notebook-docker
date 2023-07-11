FROM jupyter/tensorflow-notebook

LABEL maintainer="Brandon Shibley <shibley@shibley.org>"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install extra python packages with pip
RUN pip install --no-cache-dir opencv-python stitching openai EdgeGPT gtts pyzbar tabulate log2d pylint pandas matplotlib requests urllib3 pytest ipympl && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

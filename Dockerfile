FROM docker:20.10.23

#Install packages required for python and molecule
RUN apk add --no-cache \
python3 \
python3-dev \
py3-pip \
gcc \
musl-dev \
cargo \
openssl-dev \
make \
libffi-dev

#Create virtual environment
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN python -m pip install --upgrade pip
RUN python -m pip install -r https://gitlab.valhallaonline.info/publicgroup/pip/-/raw/master/molecule.txt

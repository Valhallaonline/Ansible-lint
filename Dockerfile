FROM docker:20.10.23

RUN apk add python3 py3-pip gcc

RUN python -m pip install --upgrade pip
RUN python -m pip install -r https://gitlab.valhallaonline.info/publicgroup/pip/-/raw/master/molecule.txt

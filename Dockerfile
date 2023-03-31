FROM docker:20.10.23

RUN apk add --no-cache python3 py3-pip gcc musl-dev cargo openssl-dev

RUN python -m pip install --upgrade pip
RUN python -m pip install -r https://gitlab.valhallaonline.info/publicgroup/pip/-/raw/master/molecule.txt

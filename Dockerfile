FROM docker:20.10.23

RUN apk add python3

RUN python pip upgrade pip
RUN python pip install -r https://gitlab.valhallaonline.info/publicgroup/pip/-/blob/master/molecule.txt

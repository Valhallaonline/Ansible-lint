FROM docker:20.10.23

RUN apk add python

RUN pip upgrade pip
RUN pip install -r https://gitlab.valhallaonline.info/publicgroup/pip/-/blob/master/molecule.txt

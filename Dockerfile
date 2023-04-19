FROM docker:20.10.23-dind

# Install packages required for python and molecule
RUN apk add --no-cache \
python3 \
python3-dev \
py3-pip \
gcc \
musl-dev \
cargo \
openssl-dev \
make \
libffi-dev \
git \
rsync

# Create virtual environment
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Copy requiremnts file to container
COPY requirements.txt .

RUN mkdir ~/.ssh/ && echo $'Host * \n   StrictHostKeyChecking no' >> /etc/ssh/ssh_config

# Install python dependancies from requirements file
RUN python -m pip install --upgrade pip && python -m pip install -r requirements.txt

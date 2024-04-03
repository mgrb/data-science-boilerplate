FROM python:3.12-alpine

RUN apk update && apk add --no-cache \
git \
curl \
zsh \
starship \
openssh \
pipx \
make \
gcc \
python3-dev \
musl-dev \
linux-headers \
cairo-dev \
freetype-dev \
libffi-dev \
jpeg-dev \
libpng-dev \
zlib-dev \
&& adduser -D -s /bin/zsh -u 1000 ds-user 

USER ds-user

ENV PATH="/home/ds-user/.local/bin:${PATH}"
ENV ZSH_THEME starship

COPY .zshrc /home/ds-user

SHELL ["/bin/zsh", "-c"]

RUN pipx install poetry --python $(which python) \
&& poetry config virtualenvs.create true \
&& poetry config virtualenvs.prefer-active-python true \
&& poetry config virtualenvs.in-project true


WORKDIR /workspace
COPY ../ .


CMD ["tail", "-f", "/dev/null"]
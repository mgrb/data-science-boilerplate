FROM python:3.12-alpine

RUN apk update && apk add --no-cache \
git \
curl \
zsh \
starship \
openssh \
pipx \
&& adduser -D -s /bin/zsh -u 1000 ds-user 

USER ds-user

ENV PATH="/home/ds-user/.local/bin:${PATH}"
ENV ZSH_THEME starship

COPY .zshrc /home/ds-user

RUN pipx install poetry \
&& pipx ensurepath \
&& poetry config virtualenvs.create false

WORKDIR /workspace
COPY ../ .

CMD ["tail", "-f", "/dev/null"]
FROM python:3.10-bullseye

# versão do GLPK a ser baixada
ARG GLPK_VERSION=4.65

RUN apt-get update -y && apt-get install -y \
	wget \
	build-essential \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* \

WORKDIR /tmp/
RUN wget https://ftp.gnu.org/gnu/glpk/glpk-$GLPK_VERSION.tar.gz \
	&& tar -zxvf glpk-$GLPK_VERSION.tar.gz -C /opt/

# instala o glpk
WORKDIR /opt/glpk-$GLPK_VERSION
RUN ./configure \
	&& make \
	&& make check \
	&& make install \
	&& make distclean \
	&& ldconfig \
    # Cleanup
	&& rm -rf /opt/glpk-$GLPK_VERSION \
    && rm -rf /tmp/* \
	&& apt-get clean

# Usa o diretorio /code
ENV CODE_DIR /code

RUN useradd --create-home --home-dir $CODE_DIR user \
    && chmod -R u+rwx $CODE_DIR \
    && chown -R user:user $CODE_DIR

ENV PYTHONUNBUFFERED=1
WORKDIR $CODE_DIR
COPY requirements.txt /code/
RUN pip3 install -r requirements.txt
COPY . /code/

USER user

EXPOSE 8888

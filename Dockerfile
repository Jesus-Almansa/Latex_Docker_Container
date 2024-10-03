# Utilizamos Ubuntu 20.04 como base
FROM ubuntu:20.04

# Establecemos el modo no interactivo para evitar prompts durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizamos los repositorios e instalamos LaTeX y herramientas adicionales
RUN apt-get update && apt-get install -y \
    texlive-full \
    latexmk \
    git \
    curl \
    sudo \
    bash \
    && apt-get clean

# Crear el directorio de trabajo (con privilegios de root)
WORKDIR /usr/src/app
RUN mkdir -p /usr/src/app

# Comando para mantener el contenedor activo
CMD ["/bin/bash"]

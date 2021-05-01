FROM julia:1.6.1-buster

WORKDIR /app
COPY Manifest.toml .
COPY Project.toml .

ENV JULIA_PROJECT=/app
RUN julia -e 'using Pkg; Pkg.instantiate()'

ENTRYPOINT ["bash"]


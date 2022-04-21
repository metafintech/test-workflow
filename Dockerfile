FROM ubuntu:20.04

ARG TEST1
ARG TEST2
ARG TEST3

ENV TEST1=$TEST1
ENV TEST2=$TEST2
ENV TEST3=$TEST3
RUN apt-get update \
    && apt-get install -y --no-install-recommends mysql-client \
    && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["mysql"]

CMD ["sleep", "1000"]

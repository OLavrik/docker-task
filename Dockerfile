FROM debian

RUN apt-get update && apt-get install -y ncat

EXPOSE 65432

ENTRYPOINT ncat -l 65432 -k -c 'xargs -n1 echo Ok:' && /bin/bash

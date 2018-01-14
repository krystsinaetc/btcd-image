## docker-btcd

### Usage

Build:

`docker build btcd-docker .`

Run:

`docker run -p 1334:1334 -v :/root/.btcd -v /:/root/.btcdctl btcd-docker --externalip localhost 

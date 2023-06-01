FROM gcc:11.3.0
RUN apt update && apt install -y cmake
WORKDIR /build

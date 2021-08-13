FROM rust:latest

RUN apt-get update && apt-get install libssl-dev pkg-config git -y

WORKDIR /usr/local
RUN git clone https://github.com/yancyribbens/weerust

WORKDIR /usr/local/weerust
RUN cargo build --release

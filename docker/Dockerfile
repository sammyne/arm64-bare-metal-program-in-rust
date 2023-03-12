FROM sammyne/qemu:7.2.0-aarch64-ubuntu20.04

RUN apt update                                                            &&\
  apt install -y gcc-aarch64-linux-gnu gdb-multiarch device-tree-compiler &&\
  apt clean                                                               &&\
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH=/root/.cargo/bin:$PATH

RUN RUST_VERSION=1.68.0                                               &&\
  apt update                                                          &&\
  apt install -y curl                                                 &&\
  apt install -y --reinstall systemd                                  &&\
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs |           \
  sh -s -- -y --default-toolchain ${RUST_VERSION}                     &&\
  rustup component add rust-src rls rust-analysis                     &&\
  rustup default nightly-2023-03-12                                   &&\
  rm -rf /root/.cargo/registry                                        &&\
  rm -rf /root/.cargo/git                                             &&\
  rm -rf /var/lib/apt/lists/*                                         

ENTRYPOINT []

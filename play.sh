#!/bin/bash

repo_tag=sammyne/arm64-kernel-in-rust-quickstart:alpha

docker run -it --rm                       \
  --name arm64-kernel-in-rust-quickstart  \
  -v $PWD:/workspace                      \
  -w /workspace                           \
  $repo_tag                               \
  bash

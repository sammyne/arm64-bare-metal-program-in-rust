#!/bin/bash

qemu-system-aarch64 \
  -M virt \
  -m 1024M \
  -cpu cortex-a72 \
  -nographic \
  -kernel target/aarch64-unknown-none/debug/app

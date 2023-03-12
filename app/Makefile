
serve-for-debug:
	qemu-system-aarch64 \
		-machine virt \
		-m 1024M \
		-cpu cortex-a72 \
		-nographic \
		-kernel target/aarch64-unknown-none/release/app -S -s

debug: debug.gdb
	gdb-multiarch -x debug.gdb

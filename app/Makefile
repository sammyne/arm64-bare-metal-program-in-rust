
app = target/aarch64-unknown-none/release/app

$(app):
	cargo build --release

debug: debug.gdb
	gdb-multiarch -x debug.gdb

dump: $(app)
	@aarch64-linux-gnu-objdump -D $<

run:
	@qemu-system-aarch64 															\
		-M virt 																				\
		-m 1024M 																				\
		-cpu cortex-a72 																\
		-nographic 																			\
		-kernel target/aarch64-unknown-none/release/app

serve-for-debug:
	qemu-system-aarch64 															\
		-machine virt 																	\
		-m 1024M 																				\
		-cpu cortex-a72 																\
		-nographic 																			\
		-kernel target/aarch64-unknown-none/release/app \
		-S -s


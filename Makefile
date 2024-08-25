.PHONY: all py go rust cpp

all: py go rust cpp

py:
	cd src/hanoi_learn/py && \
	echo "―――――――――――――― PY ――――――――――――――" && \
	./main.py && \
	echo ""

go:
	cd src/hanoi_learn/go && \
	go build -o out && \
	echo "―――――――――――――― GO ――――――――――――――" && \
	./out && \
	echo ""

# RUSTFLAGS="-A warnings -A notes"
rust:
	cd src/hanoi_learn/rust && \
	cargo build --quiet --target-dir=exp && \
	echo "――――――――――――― RUST ―――――――――――――" && \
	exp/debug/hanoi_learn-rust && \
	echo ""

cpp:
	cd src/hanoi_learn/cpp && \
	xmake -q && \
	echo "――――――――――――― CPP ――――――――――――――" && \
	build/macosx/arm64/release/test && \
	echo ""
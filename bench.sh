#!/bin/bash

set -eu
shopt -s extglob

echo HTTP ContextSwitchBenchmark

function dep_check() {
	depends=( node go ab nproc cargo rustc cut)
	notfound=()

	for app in "${depends[@]}"; do
		if ! type "$app" > /dev/null 2>&1; then
			notfound+=("$app")
		fi
	done

	if [[ ${#notfound[@]} -ne 0 ]]; then
		echo Failed to lookup dependency:

		for app in "${notfound[@]}"; do
			echo "- $app"
		done
		exit 1
	fi
}

function go_app() {
	./go/main
}

function node_app() {
	node ./node/main.js
}

function rust_app() {
	./rust/target/release/server
}

function filter() {
	grep "ctxt_switches"
}

function load() {
	sleep 0.5
	ab "$@" http://localhost:8080/ > /dev/null 2>&1
}

dep_check

echo "## env"
go version
echo node version "$(node --version)"
rustc --version
echo nporc "$(nproc)"
uname -a

echo "## prepare"

(cd go; go build -o main)
(cd rust; cargo build --release)

echo "## Bench w/o load"

echo "### Go"
go_app | filter

echo "### Node.js"
node_app | filter

echo "### Rust actix"
rust_app | filter

echo "## Bench with 1 client / 1 sec load"

echo "### Go"
load -c 1 -t 1 &
go_app | filter

echo "### Node.js"
load -c 1 -t 1 &
node_app | filter

echo "### Rust actix"
load -c 1 -t 1 &
rust_app | filter

echo "## Bench with 1 client / 5000 req load"

echo "### Go"
load -c 1 -n 5000 &
go_app | filter

echo "### Node.js"
load -c 1 -n 5000 &
node_app | filter

echo "### Rust actix"
load -c 1 -n 5000 &
rust_app | filter

# HTTP ContextSwitchBenchmark

Node.jsがコンテキストスイッチが少ないという[言及](https://twitter.com/ALC72433758/status/1560309392746041346)を見つけた。

確かに、JavaScriptはシングルスレッド動作であるかのようにプログラムできる。
しかしながら、Node.jsは非同期I/Oをサポートしており、それによる多くのコンテキストスイッチが発生するのではないか、との仮説を建てた。

Node.js, Golang, Rust(actix) との比較検証の結果を以下に掲載する。
仮説は正しいといえよう。

検証方法に問題がある場合、その旨の報告を願いたい。

この観点で最も優れているのはRust(actix)だった。


```
HTTP ContextSwitchBenchmark
## env
go version go1.19 linux/amd64
node version v18.7.0
rustc 1.63.0 (4b91a6ea7 2022-08-08)
nporc 32
Linux ray-x570sl 5.10.102.1-microsoft-standard-WSL2 #1 SMP Wed Mar 2 00:30:59 UTC 2022 x86_64 GNU/Linux
## prepare
## Bench w/o load
### Go
voluntary_ctxt_switches:	5
nonvoluntary_ctxt_switches:	0
### Node.js
voluntary_ctxt_switches:	4
nonvoluntary_ctxt_switches:	1
### Rust actix
voluntary_ctxt_switches:	31
nonvoluntary_ctxt_switches:	0
## Bench with 1 client / 1 sec load
### Go
voluntary_ctxt_switches:	3766
nonvoluntary_ctxt_switches:	6
### Node.js
voluntary_ctxt_switches:	3279
nonvoluntary_ctxt_switches:	22
### Rust actix
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	0
## Bench with 1 client / 5000 req load
### Go
voluntary_ctxt_switches:	5381
nonvoluntary_ctxt_switches:	6
### Node.js
voluntary_ctxt_switches:	4795
nonvoluntary_ctxt_switches:	32
### Rust actix
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	0
```

# HTTP ContextSwitchBenchmark
## env
go version go1.19 linux/amd64
node version v18.7.0
rustc 1.63.0 (4b91a6ea7 2022-08-08)
nporc 32
Linux ray-x570sl 5.10.102.1-microsoft-standard-WSL2 #1 SMP Wed Mar 2 00:30:59 UTC 2022 x86_64 GNU/Linux
## prepare
## Bench w/o load
### Go
voluntary_ctxt_switches:	3
nonvoluntary_ctxt_switches:	0
### Node.js
voluntary_ctxt_switches:	4
nonvoluntary_ctxt_switches:	0
### Rust actix
voluntary_ctxt_switches:	35
nonvoluntary_ctxt_switches:	0
## Bench with 1 client / 2 sec load
### Go
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      1
Time taken for tests:   2.000 seconds
Complete requests:      7303
Failed requests:        0
Total transferred:      883663 bytes
HTML transferred:       36515 bytes
Requests per second:    3651.33 [#/sec] (mean)
Time per request:       0.274 [ms] (mean)
Time per request:       0.274 [ms] (mean, across all concurrent requests)
Transfer rate:          431.46 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       3
Waiting:        0    0   0.0      0       3
Total:          0    0   0.1      0       3

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%      3 (longest request)
```
voluntary_ctxt_switches:	4519
nonvoluntary_ctxt_switches:	8
### Node.js
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      1
Time taken for tests:   2.000 seconds
Complete requests:      7819
Failed requests:        0
Total transferred:      625520 bytes
HTML transferred:       39095 bytes
Requests per second:    3909.27 [#/sec] (mean)
Time per request:       0.256 [ms] (mean)
Time per request:       0.256 [ms] (mean, across all concurrent requests)
Transfer rate:          305.41 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.1      0       5
Waiting:        0    0   0.1      0       3
Total:          0    0   0.1      0       5

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      1
 100%      5 (longest request)
```
voluntary_ctxt_switches:	7671
nonvoluntary_ctxt_switches:	56
### Rust actix
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      1
Time taken for tests:   2.000 seconds
Complete requests:      11555
Failed requests:        0
Total transferred:      924400 bytes
HTML transferred:       57775 bytes
Requests per second:    5777.33 [#/sec] (mean)
Time per request:       0.173 [ms] (mean)
Time per request:       0.173 [ms] (mean, across all concurrent requests)
Transfer rate:          451.35 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.1      0      11
Waiting:        0    0   0.1      0      11
Total:          0    0   0.1      0      11

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%     11 (longest request)
```
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	0
## Bench with 1 client / 5000 req load
### Go
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      1
Time taken for tests:   1.345 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      605000 bytes
HTML transferred:       25000 bytes
Requests per second:    3718.27 [#/sec] (mean)
Time per request:       0.269 [ms] (mean)
Time per request:       0.269 [ms] (mean, across all concurrent requests)
Transfer rate:          439.37 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.1      0       3
Waiting:        0    0   0.0      0       3
Total:          0    0   0.1      0       3

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%      3 (longest request)
```
voluntary_ctxt_switches:	6785
nonvoluntary_ctxt_switches:	9
### Node.js
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      1
Time taken for tests:   1.251 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    3996.50 [#/sec] (mean)
Time per request:       0.250 [ms] (mean)
Time per request:       0.250 [ms] (mean, across all concurrent requests)
Transfer rate:          312.23 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.1      0       5
Waiting:        0    0   0.1      0       3
Total:          0    0   0.1      0       5

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      1
 100%      5 (longest request)
```
voluntary_ctxt_switches:	4819
nonvoluntary_ctxt_switches:	30
### Rust actix
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      1
Time taken for tests:   0.817 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    6116.84 [#/sec] (mean)
Time per request:       0.163 [ms] (mean)
Time per request:       0.163 [ms] (mean, across all concurrent requests)
Transfer rate:          477.88 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       0
Waiting:        0    0   0.0      0       0
Total:          0    0   0.0      0       0

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%      0 (longest request)
```
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	1
## Bench with 5 client / 50000 req load
### Go
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      5
Time taken for tests:   0.950 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      2420000 bytes
HTML transferred:       100000 bytes
Requests per second:    21046.14 [#/sec] (mean)
Time per request:       0.238 [ms] (mean)
Time per request:       0.048 [ms] (mean, across all concurrent requests)
Transfer rate:          2486.90 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.1      0       2
Waiting:        0    0   0.1      0       1
Total:          0    0   0.1      0       2

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%      2 (longest request)
```
voluntary_ctxt_switches:	3334
nonvoluntary_ctxt_switches:	4
### Node.js
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      5
Time taken for tests:   2.267 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    8823.32 [#/sec] (mean)
Time per request:       0.567 [ms] (mean)
Time per request:       0.113 [ms] (mean, across all concurrent requests)
Transfer rate:          689.32 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    1   0.2      0       5
Waiting:        0    0   0.2      0       4
Total:          0    1   0.2      1       5
ERROR: The median and mean for the processing time are more than twice the standard
       deviation apart. These results are NOT reliable.

Percentage of the requests served within a certain time (ms)
  50%      1
  66%      1
  75%      1
  80%      1
  90%      1
  95%      1
  98%      1
  99%      1
 100%      5 (longest request)
```
voluntary_ctxt_switches:	481
nonvoluntary_ctxt_switches:	78
### Rust actix
```
This is ApacheBench, Version 2.3 <$Revision: 1901567 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient).....done


Server Software:        
Server Hostname:        localhost
Server Port:            8080

Document Path:          /
Document Length:        5 bytes

Concurrency Level:      5
Time taken for tests:   1.495 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    13379.98 [#/sec] (mean)
Time per request:       0.374 [ms] (mean)
Time per request:       0.075 [ms] (mean, across all concurrent requests)
Transfer rate:          1045.31 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.1      0       1
Waiting:        0    0   0.0      0       1
Total:          0    0   0.1      0       1

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      1
  98%      1
  99%      1
 100%      1 (longest request)
```
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	0

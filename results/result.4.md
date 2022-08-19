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
voluntary_ctxt_switches:	5
nonvoluntary_ctxt_switches:	1
### Rust actix
voluntary_ctxt_switches:	34
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
Complete requests:      7324
Failed requests:        0
Total transferred:      886204 bytes
HTML transferred:       36620 bytes
Requests per second:    3661.91 [#/sec] (mean)
Time per request:       0.273 [ms] (mean)
Time per request:       0.273 [ms] (mean, across all concurrent requests)
Transfer rate:          432.71 [Kbytes/sec] received

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
voluntary_ctxt_switches:	7442
nonvoluntary_ctxt_switches:	12
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
Complete requests:      8402
Failed requests:        0
Total transferred:      672160 bytes
HTML transferred:       42010 bytes
Requests per second:    4200.97 [#/sec] (mean)
Time per request:       0.238 [ms] (mean)
Time per request:       0.238 [ms] (mean, across all concurrent requests)
Transfer rate:          328.20 [Kbytes/sec] received

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
  99%      0
 100%      5 (longest request)
```
voluntary_ctxt_switches:	8221
nonvoluntary_ctxt_switches:	46
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
Complete requests:      11938
Failed requests:        0
Total transferred:      955040 bytes
HTML transferred:       59690 bytes
Requests per second:    5968.94 [#/sec] (mean)
Time per request:       0.168 [ms] (mean)
Time per request:       0.168 [ms] (mean, across all concurrent requests)
Transfer rate:          466.32 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       1
Waiting:        0    0   0.0      0       1
Total:          0    0   0.0      0       1

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%      1 (longest request)
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
Time taken for tests:   1.323 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      605000 bytes
HTML transferred:       25000 bytes
Requests per second:    3778.44 [#/sec] (mean)
Time per request:       0.265 [ms] (mean)
Time per request:       0.265 [ms] (mean, across all concurrent requests)
Transfer rate:          446.48 [Kbytes/sec] received

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
voluntary_ctxt_switches:	5284
nonvoluntary_ctxt_switches:	6
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
Time taken for tests:   1.237 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    4043.48 [#/sec] (mean)
Time per request:       0.247 [ms] (mean)
Time per request:       0.247 [ms] (mean, across all concurrent requests)
Transfer rate:          315.90 [Kbytes/sec] received

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
voluntary_ctxt_switches:	4867
nonvoluntary_ctxt_switches:	29
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
Time taken for tests:   0.858 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    5825.96 [#/sec] (mean)
Time per request:       0.172 [ms] (mean)
Time per request:       0.172 [ms] (mean, across all concurrent requests)
Transfer rate:          455.15 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.3      0      22
Waiting:        0    0   0.3      0      22
Total:          0    0   0.3      0      22

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%     22 (longest request)
```
voluntary_ctxt_switches:	35
nonvoluntary_ctxt_switches:	0
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
Time taken for tests:   0.946 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      2420000 bytes
HTML transferred:       100000 bytes
Requests per second:    21133.94 [#/sec] (mean)
Time per request:       0.237 [ms] (mean)
Time per request:       0.047 [ms] (mean, across all concurrent requests)
Transfer rate:          2497.27 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.1      0       2
Waiting:        0    0   0.1      0       2
Total:          0    0   0.1      0       2

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      1
 100%      2 (longest request)
```
voluntary_ctxt_switches:	4321
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
Time taken for tests:   2.309 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    8660.07 [#/sec] (mean)
Time per request:       0.577 [ms] (mean)
Time per request:       0.115 [ms] (mean, across all concurrent requests)
Transfer rate:          676.57 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
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
voluntary_ctxt_switches:	541
nonvoluntary_ctxt_switches:	63
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
Time taken for tests:   1.538 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    13002.87 [#/sec] (mean)
Time per request:       0.385 [ms] (mean)
Time per request:       0.077 [ms] (mean, across all concurrent requests)
Transfer rate:          1015.85 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.0      0       1
Waiting:        0    0   0.0      0       1
Total:          0    0   0.1      0       1

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      1
 100%      1 (longest request)
```
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	0

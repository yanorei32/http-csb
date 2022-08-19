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
nonvoluntary_ctxt_switches:	1
### Node.js
voluntary_ctxt_switches:	5
nonvoluntary_ctxt_switches:	0
### Rust actix
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	1
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
Complete requests:      7510
Failed requests:        0
Total transferred:      908710 bytes
HTML transferred:       37550 bytes
Requests per second:    3754.59 [#/sec] (mean)
Time per request:       0.266 [ms] (mean)
Time per request:       0.266 [ms] (mean, across all concurrent requests)
Transfer rate:          443.66 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       2
Waiting:        0    0   0.0      0       2
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
voluntary_ctxt_switches:	6919
nonvoluntary_ctxt_switches:	7
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
Complete requests:      8385
Failed requests:        0
Total transferred:      670800 bytes
HTML transferred:       41925 bytes
Requests per second:    4192.40 [#/sec] (mean)
Time per request:       0.239 [ms] (mean)
Time per request:       0.239 [ms] (mean, across all concurrent requests)
Transfer rate:          327.53 [Kbytes/sec] received

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
voluntary_ctxt_switches:	8154
nonvoluntary_ctxt_switches:	49
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
Complete requests:      12563
Failed requests:        0
Total transferred:      1005040 bytes
HTML transferred:       62815 bytes
Requests per second:    6281.20 [#/sec] (mean)
Time per request:       0.159 [ms] (mean)
Time per request:       0.159 [ms] (mean, across all concurrent requests)
Transfer rate:          490.72 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       0
Waiting:        0    0   0.0      0       0
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
Time taken for tests:   1.335 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      605000 bytes
HTML transferred:       25000 bytes
Requests per second:    3745.27 [#/sec] (mean)
Time per request:       0.267 [ms] (mean)
Time per request:       0.267 [ms] (mean, across all concurrent requests)
Transfer rate:          442.56 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.1      0       4
Waiting:        0    0   0.1      0       4
Total:          0    0   0.1      0       4

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%      4 (longest request)
```
voluntary_ctxt_switches:	4976
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
Time taken for tests:   1.239 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    4034.36 [#/sec] (mean)
Time per request:       0.248 [ms] (mean)
Time per request:       0.248 [ms] (mean, across all concurrent requests)
Transfer rate:          315.18 [Kbytes/sec] received

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
voluntary_ctxt_switches:	4804
nonvoluntary_ctxt_switches:	34
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
Time taken for tests:   0.796 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    6279.98 [#/sec] (mean)
Time per request:       0.159 [ms] (mean)
Time per request:       0.159 [ms] (mean, across all concurrent requests)
Transfer rate:          490.62 [Kbytes/sec] received

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
Time taken for tests:   0.962 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      2420000 bytes
HTML transferred:       100000 bytes
Requests per second:    20781.27 [#/sec] (mean)
Time per request:       0.241 [ms] (mean)
Time per request:       0.048 [ms] (mean, across all concurrent requests)
Transfer rate:          2455.60 [Kbytes/sec] received

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
voluntary_ctxt_switches:	4491
nonvoluntary_ctxt_switches:	7
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
Time taken for tests:   2.394 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    8355.11 [#/sec] (mean)
Time per request:       0.598 [ms] (mean)
Time per request:       0.120 [ms] (mean, across all concurrent requests)
Transfer rate:          652.74 [Kbytes/sec] received

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
voluntary_ctxt_switches:	475
nonvoluntary_ctxt_switches:	71
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
Time taken for tests:   1.550 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    12904.52 [#/sec] (mean)
Time per request:       0.387 [ms] (mean)
Time per request:       0.077 [ms] (mean, across all concurrent requests)
Transfer rate:          1008.17 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.1      0      20
Waiting:        0    0   0.1      0      20
Total:          0    0   0.2      0      20

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      1
 100%     20 (longest request)
```
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	0

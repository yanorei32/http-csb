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
Complete requests:      7588
Failed requests:        0
Total transferred:      918148 bytes
HTML transferred:       37940 bytes
Requests per second:    3793.89 [#/sec] (mean)
Time per request:       0.264 [ms] (mean)
Time per request:       0.264 [ms] (mean, across all concurrent requests)
Transfer rate:          448.30 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       3
Waiting:        0    0   0.0      0       3
Total:          0    0   0.0      0       3

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
voluntary_ctxt_switches:	7026
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
Time taken for tests:   2.000 seconds
Complete requests:      8461
Failed requests:        0
Total transferred:      676880 bytes
HTML transferred:       42305 bytes
Requests per second:    4230.19 [#/sec] (mean)
Time per request:       0.236 [ms] (mean)
Time per request:       0.236 [ms] (mean, across all concurrent requests)
Transfer rate:          330.48 [Kbytes/sec] received

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
voluntary_ctxt_switches:	8251
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
Complete requests:      12149
Failed requests:        0
Total transferred:      971920 bytes
HTML transferred:       60745 bytes
Requests per second:    6074.36 [#/sec] (mean)
Time per request:       0.165 [ms] (mean)
Time per request:       0.165 [ms] (mean, across all concurrent requests)
Transfer rate:          474.56 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       1
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
nonvoluntary_ctxt_switches:	1
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
Time taken for tests:   1.355 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      605000 bytes
HTML transferred:       25000 bytes
Requests per second:    3689.41 [#/sec] (mean)
Time per request:       0.271 [ms] (mean)
Time per request:       0.271 [ms] (mean, across all concurrent requests)
Transfer rate:          435.96 [Kbytes/sec] received

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
voluntary_ctxt_switches:	6309
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
Time taken for tests:   1.243 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    4022.44 [#/sec] (mean)
Time per request:       0.249 [ms] (mean)
Time per request:       0.249 [ms] (mean, across all concurrent requests)
Transfer rate:          314.25 [Kbytes/sec] received

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
Time taken for tests:   0.794 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    6297.66 [#/sec] (mean)
Time per request:       0.159 [ms] (mean)
Time per request:       0.159 [ms] (mean, across all concurrent requests)
Transfer rate:          492.00 [Kbytes/sec] received

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
Time taken for tests:   0.944 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      2420000 bytes
HTML transferred:       100000 bytes
Requests per second:    21197.38 [#/sec] (mean)
Time per request:       0.236 [ms] (mean)
Time per request:       0.047 [ms] (mean, across all concurrent requests)
Transfer rate:          2504.77 [Kbytes/sec] received

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
  99%      0
 100%      2 (longest request)
```
voluntary_ctxt_switches:	4912
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
Time taken for tests:   2.276 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    8787.88 [#/sec] (mean)
Time per request:       0.569 [ms] (mean)
Time per request:       0.114 [ms] (mean, across all concurrent requests)
Transfer rate:          686.55 [Kbytes/sec] received

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
voluntary_ctxt_switches:	415
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
Time taken for tests:   1.502 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    13311.44 [#/sec] (mean)
Time per request:       0.376 [ms] (mean)
Time per request:       0.075 [ms] (mean, across all concurrent requests)
Transfer rate:          1039.96 [Kbytes/sec] received

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

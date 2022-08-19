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
voluntary_ctxt_switches:	3
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
Complete requests:      7510
Failed requests:        0
Total transferred:      908710 bytes
HTML transferred:       37550 bytes
Requests per second:    3754.69 [#/sec] (mean)
Time per request:       0.266 [ms] (mean)
Time per request:       0.266 [ms] (mean, across all concurrent requests)
Transfer rate:          443.67 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.1      0       3
Waiting:        0    0   0.0      0       3
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
voluntary_ctxt_switches:	3160
nonvoluntary_ctxt_switches:	5
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
Complete requests:      8473
Failed requests:        0
Total transferred:      677840 bytes
HTML transferred:       42365 bytes
Requests per second:    4236.44 [#/sec] (mean)
Time per request:       0.236 [ms] (mean)
Time per request:       0.236 [ms] (mean, across all concurrent requests)
Transfer rate:          330.97 [Kbytes/sec] received

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
voluntary_ctxt_switches:	8286
nonvoluntary_ctxt_switches:	47
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
Complete requests:      12413
Failed requests:        0
Total transferred:      993040 bytes
HTML transferred:       62065 bytes
Requests per second:    6206.37 [#/sec] (mean)
Time per request:       0.161 [ms] (mean)
Time per request:       0.161 [ms] (mean, across all concurrent requests)
Transfer rate:          484.87 [Kbytes/sec] received

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
Time taken for tests:   1.321 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      605000 bytes
HTML transferred:       25000 bytes
Requests per second:    3784.32 [#/sec] (mean)
Time per request:       0.264 [ms] (mean)
Time per request:       0.264 [ms] (mean, across all concurrent requests)
Transfer rate:          447.17 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.0      0       2
Waiting:        0    0   0.0      0       2
Total:          0    0   0.0      0       2

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
voluntary_ctxt_switches:	4998
nonvoluntary_ctxt_switches:	3
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
Time taken for tests:   1.250 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    3998.47 [#/sec] (mean)
Time per request:       0.250 [ms] (mean)
Time per request:       0.250 [ms] (mean, across all concurrent requests)
Transfer rate:          312.38 [Kbytes/sec] received

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
voluntary_ctxt_switches:	4837
nonvoluntary_ctxt_switches:	28
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
Time taken for tests:   0.802 seconds
Complete requests:      5000
Failed requests:        0
Total transferred:      400000 bytes
HTML transferred:       25000 bytes
Requests per second:    6234.44 [#/sec] (mean)
Time per request:       0.160 [ms] (mean)
Time per request:       0.160 [ms] (mean, across all concurrent requests)
Transfer rate:          487.07 [Kbytes/sec] received

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
Time taken for tests:   0.972 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      2420000 bytes
HTML transferred:       100000 bytes
Requests per second:    20578.50 [#/sec] (mean)
Time per request:       0.243 [ms] (mean)
Time per request:       0.049 [ms] (mean, across all concurrent requests)
Transfer rate:          2431.64 [Kbytes/sec] received

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
voluntary_ctxt_switches:	4716
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

Concurrency Level:      5
Time taken for tests:   2.269 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    8816.38 [#/sec] (mean)
Time per request:       0.567 [ms] (mean)
Time per request:       0.113 [ms] (mean, across all concurrent requests)
Transfer rate:          688.78 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    1   0.2      0       5
Waiting:        0    0   0.2      0       4
Total:          0    1   0.2      0       5
ERROR: The median and mean for the processing time are more than twice the standard
       deviation apart. These results are NOT reliable.
ERROR: The median and mean for the total time are more than twice the standard
       deviation apart. These results are NOT reliable.

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      1
  75%      1
  80%      1
  90%      1
  95%      1
  98%      1
  99%      1
 100%      5 (longest request)
```
voluntary_ctxt_switches:	460
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
Time taken for tests:   1.553 seconds
Complete requests:      20000
Failed requests:        0
Total transferred:      1600000 bytes
HTML transferred:       100000 bytes
Requests per second:    12878.78 [#/sec] (mean)
Time per request:       0.388 [ms] (mean)
Time per request:       0.078 [ms] (mean, across all concurrent requests)
Transfer rate:          1006.15 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.2      0      27
Waiting:        0    0   0.2      0      27
Total:          0    0   0.2      0      27

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      0
  99%      0
 100%     27 (longest request)
```
voluntary_ctxt_switches:	34
nonvoluntary_ctxt_switches:	0

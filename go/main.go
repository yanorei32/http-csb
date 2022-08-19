package main

import (
	"fmt"
	"net/http"
	"time"
	"os"
	"io/ioutil"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, _ *http.Request){
		fmt.Fprintf(w, "Hello");
	})

	go http.ListenAndServe("127.0.0.1:8080", nil)
	time.Sleep(time.Second * 3)
	
	f, _ := os.Open(fmt.Sprintf("/proc/%d/status", os.Getpid()))
	b, _ := ioutil.ReadAll(f)
	fmt.Print(string(b))
}

package main

import (
	"fmt"
	"net/http"
)

var counter = 0

func main() {
	http.HandleFunc("/", HelloServer)
	http.HandleFunc("/health", HealthCheck)

	http.ListenAndServe(":8080", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello World")
}

func HealthCheck(w http.ResponseWriter, r *http.Request) {
	counter++
	if counter > 5 {
		w.WriteHeader(500)
		fmt.Fprint(w, "Internal Server Error")
	} else {
		w.WriteHeader(201)
		fmt.Fprint(w, "Healthy")
	}
}
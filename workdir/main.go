package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("APP_PORT")
	fmt.Println("Server is running on port", port)
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":"+port, nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello, %s", r.URL.Path[1:])

	dataString := "Hello " + r.URL.Path[1:]
	dataBytes := []byte(dataString)

	destination := os.Getenv("APP_DATA")
	file := destination + "/" + r.URL.Path[1:] + ".txt"
	err := ioutil.WriteFile(file, dataBytes, 0644)

	if err != nil {
		panic(err)
	}

	fmt.Println("Data saved to: ", file)
}
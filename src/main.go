package main

import (
	"io"
	"net/http"
	"os";
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
    message := "Hello world! This app version is" + os.Getenv("APP_VERSION")
	io.WriteString(w, message)
}


func main() {
	port := os.Getenv("PORT");
	http.HandleFunc("/hello", helloHandler)
	http.ListenAndServe(":" + port, nil)
}
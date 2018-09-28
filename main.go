package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "feature1")
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":9999", nil)
}

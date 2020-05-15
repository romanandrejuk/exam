package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "You passed the exam!")
}

func main() {
    http.HandleFunc("/", handler)
    http.ListenAndServe(":3000", nil)
}

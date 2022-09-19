package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	path, _ := os.Getwd()
	http.Handle("/", http.FileServer(http.Dir(path)))

	port := ":7000"
	fmt.Println("Server is running on http://localhost" + port)

	log.Fatal(http.ListenAndServe(port, nil))
}

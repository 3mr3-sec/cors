package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.Handle("/", http.FileServer(AssetFile()))

	port := ":7000"
	fmt.Println("Server is running on http://localhost" + port)

	log.Fatal(http.ListenAndServe(port, nil))
}

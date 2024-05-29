package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Printf("Hello %s!\n", os.Getenv("USER"))
}

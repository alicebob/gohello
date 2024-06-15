package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Printf("Bye %s!\n", os.Getenv("USER"))
}

package main

import "fmt"

func main() {
	fmt.Println("hello")
	fmt.Printf("1995/4 = %f\n", 1995.0/4)
	fmt.Printf("1995%%4 = %d\n", 1995%4)
	fmt.Printf("1995//4 = %d\n", 1995/4) // auto-truncate
}

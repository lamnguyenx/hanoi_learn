package main

import (
	"fmt"
	"hanoi_learn_go/src/hanoi_learn_go/tour"
	"reflect"
	"strings"
)

type MyString string

// Method to get the length of the string
func (s MyString) Length() int {
	return len(s)
}

func main() {

	intro := `
	PyTorch is a machine learning library based on the Torch library

	It is used for applications such as computer vision and natural language processing.

	PyTorch is originally developed by Meta AI andnow part of the Linux Foundation umbrella.
	`
	print(intro)

	// ------------------------------------------------
	// ### Type Conversion
	typ := func(x interface{}) string {
		return reflect.TypeOf(x).Name()
	}

	fmt.Printf("%s = %v (%s)\n", "5.0 + 1.2", 5.0+1.2, typ(5.0+1.2))
	fmt.Printf("%s = %v (%s)\n", "1995.0 / 4.0", 1995.0/4.0, typ(1995.0/4.0))
	fmt.Printf("%s = %v (%s)\n", "1995 / 4", 1995/4, typ(1995/4))
	fmt.Printf("%s = %v (%s)\n", "1995 % 4", 1995%4, typ(1995%4))

	// ------------------------------------------------
	// ### Rune
	unicodeChar := '🌳' // Unicode character
	fmt.Printf("%c (U+%X)\n", unicodeChar, unicodeChar)

	// ------------------------------------------------
	// ### Single vs Double Quotes
	fmt.Printf("'test' -> compilation error\n")

	hello_len :=
		MyString("Hello").Length()

	fmt.Println(hello_len)

	const CONST = 5
	fmt.Println(CONST)

	var (
		a int = 1
		b int = 2
		c int = 3
	)
	fmt.Println(a, b, c)

	letters0 := []string{}
	fmt.Println(letters0)

	letters := []string{"a", "b", "c"}
	letters[1] = "d"
	letters = append(letters, "e")
	fmt.Println(letters)

	lmap0 := map[string]int{}
	fmt.Println(lmap0)

	lmap := map[string]int{
		"a": 97,
		"b": 98,
		"c": 99,
	}

	lmap["d"] = 100
	fmt.Println(lmap)

	// conditional
	x := 10
	if x > 5 {
		fmt.Println("x > 5")
	} else if x == 5 {
		fmt.Println("x = 5")
	} else {
		fmt.Println("x < 5")
	}

	y := 10
	switch {
	case y > 5:
		fmt.Println("y > 5")
	case y == 5:
		fmt.Println("y = 5")
	default:
		fmt.Println("y < 5")
	}

	// cond with pattern matching
	numStr := "123"

	switch {
	case numStr == "0":
		fmt.Println("0")

	case strings.Contains(numStr, "1"):
		fmt.Println("1")

	case strings.Contains(numStr, "2"):
		fmt.Println("2")

	case strings.Contains(numStr, "3"):
		fmt.Println("3")

	default:
		fmt.Println("not now")
	}

	// for loop
	numDict := map[string][]int{
		"prime": {2, 3, 5, 7, 11},
		"fibon": {1, 1, 2, 3, 5},
		"squar": {1, 4, 9, 16},
	}

	for ntype, nums := range numDict {
		for _, num := range nums {
			fmt.Println(ntype, num)
		}
	}

	for i := 0; i < 5; i++ {
		fmt.Println(i)
	}

	for i := 10; i > 6; i -= 2 {
		fmt.Println(i)
	}

	// while loop
	count := 0
	for {
		count++
		if count == 5 {
			break
		}
	}
	fmt.Println("count:", count)

	
	tour.Type_Casting()
	tour.Functions_And_Closures()
	tour.Object_And_Classes()

}

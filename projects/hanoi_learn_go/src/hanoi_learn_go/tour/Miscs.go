package tour

import "fmt"
import "reflect"
import "hanoi_learn_go/src/hanoi_utils_go"

// FUNCTIONS
func Miscs() {

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
		hanoi_utils_go.NiceString("Hello").Length()

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

}

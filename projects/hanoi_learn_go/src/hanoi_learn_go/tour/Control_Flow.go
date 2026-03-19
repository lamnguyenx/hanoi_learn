package tour

import "fmt"
import "strings"

// FUNCTIONS
func Control_Flow() {

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
}

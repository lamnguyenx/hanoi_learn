package tour

import "fmt"
import "strconv"

// OPERATIONS
func Type_Casting() {

	_10dot5 := 10.5
	tc_1_1 := int32(_10dot5)
	tc_1_2 := float32(10)

	fmt.Println(tc_1_1)
	fmt.Println(tc_1_2)

	tc_2, tc_2_ERR := strconv.Atoi("hello")
	if tc_2_ERR != nil {
		fmt.Println("nil")
	} else {
		fmt.Println(tc_2)
	}
}

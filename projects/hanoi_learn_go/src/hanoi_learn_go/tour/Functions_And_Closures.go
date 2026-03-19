package tour

import "fmt"

// FUNCTIONS
func f1(s1 string, s2 string) bool {
	return len(s1) > len(s2)
}

func f2(num float64) (int, float64) {
	num_i := int(num)
	num_f := num - float64(num_i)
	return num_i, num_f
}

func f6_1(name string) int {
	return len(name)
}

func f6_3(

	fx func(string) int,
	name string,

) int {

	return fx(name)
}

// OPERATIONS
func Functions_And_Closures() {

	// function
	f1_r1 := f1("hello", "nobita")
	fmt.Println(f1_r1) // Output: false

	f2_r2_i, f2_r2_f := f2(6.9)
	fmt.Println(f2_r2_i, f2_r2_f)

	// closure / lambda
	f4 := func(x, y int) int {
		return x + y
	}
	f4_r := f4(3, 5)
	fmt.Println(f4_r)

	f5 := func(x, y int) int {
		z := 10
		return x + y + z
	}

	f5_r := f5(3, 5)
	fmt.Println(f5_r)

	// Functions are a first-class type
	var f6_2 = f6_1
	f6_2_r := f6_2("rick")
	fmt.Println(f6_2_r)

	f6_3_r := f6_3(

		f6_1,
		"morty",
	)

	fmt.Println(f6_3_r)
}

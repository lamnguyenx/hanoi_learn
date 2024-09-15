package tour

import (
	"fmt"
)

// ---------------------------------
type EPower0 struct {
	U     float64
	I     float64
	brand string
	year  int
	leap  bool
}

func EPower0__init(U, I float64) *EPower0 {

	div := 1995 % 4
	leap := div == 0

	return &EPower0{
		U:     U,
		I:     I,
		brand: "GE",
		year:  1995,
		leap:  leap,
	}
}

func (e *EPower0) get_watt() float64 {
	return e.U * e.I
}

// ---------------------------------

func main2() {

	var EP0 = EPower0__init(7, 2)
	EP0.brand = "NVIDIA"

	fmt.Println(EP0.brand)
	fmt.Println(EP0.get_watt())
}

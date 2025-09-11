package utils

import "math/big"

var GWEI *big.Int = big.NewInt(1000000000)
var CUSTOME *big.Int = big.NewInt(0).Mul(GWEI, GWEI)

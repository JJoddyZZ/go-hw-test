package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func Test_sum(t *testing.T) {
	t.Run("successful sum", func(t *testing.T) {
		res := sum(1, 1)
		assert.Equal(t, res, 2)
	})
}

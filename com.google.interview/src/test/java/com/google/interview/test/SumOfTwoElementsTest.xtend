package com.google.interview.test

import com.google.interview.SumOfTwoElements
import com.google.interview.impl.NaiveSumOfTwoElements
import org.junit.Test

import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertFalse

class SumOfTwoElementsTest {
	SumOfTwoElements<Integer> sumOfTwo = new NaiveSumOfTwoElements

	@Test
	def sumsToZero() {
		val ints = #[-2, -1, 0, 0, 1, 2]

		val sum = 0
		val result = sumOfTwo.apply(ints, sum)

		assertEquals(3, result.get.size)
	}

	@Test
	def notMakingUp() {
		val ints = #[0, 1, 2, 3]

		val sum = 9
		val result = sumOfTwo.apply(ints, sum)

		assertFalse(result.present)
	}

	@Test
	def singleElement() {
		val ints = #[1]

		val sum = 1
		val result = sumOfTwo.apply(ints, sum)

		assertFalse(result.present)
	}

	@Test
	def noElement() {
		val ints = #[]

		val sum = 0
		val result = sumOfTwo.apply(ints, sum)

		assertFalse(result.present)
	}

	@Test
	def singleSolution() {
		val ints = #[13, 42]

		val sum = 57
		val result = sumOfTwo.apply(ints, sum)

		assertEquals(result.get.get(0), #{13, 42})
	}

	@Test
	def tooBigNumbers() {
		val ints = #[10, 9, 20, 30]

		val sum = 9
		val result = sumOfTwo.apply(ints, sum)

		assertFalse(result.present)
	}
}

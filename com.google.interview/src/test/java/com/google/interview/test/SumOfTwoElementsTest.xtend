package com.google.interview.test

import com.google.interview.SumOfTwoElements
import com.google.interview.impl.NaiveSumOfTwoElements
import org.junit.Test

import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertTrue

class SumOfTwoElementsTest {
	SumOfTwoElements<Integer> sumOfTwo = new NaiveSumOfTwoElements

	@Test
	def sumsToZero() {
		val ints = #[-2, -1, 0, 0, 1, 2]

		val sum = 0
		val result = sumOfTwo.apply(ints, sum)

		assertEquals(3, result.size)
	}

	@Test
	def tooSmallElements() {
		val ints = #[0, 1, 2, 3]

		val sum = 9
		val result = sumOfTwo.apply(ints, sum)

		assertTrue(result.empty)
	}

	@Test
	def negativeElementsWithPositiveSum() {
		val ints = #[-10, -5, 0, -15]

		val sum = 15
		val result = sumOfTwo.apply(ints, sum)

		assertTrue(result.empty)
	}

	/**
	 * Single element is not enough for addition.
	 */
	@Test
	def singleElement() {
		val ints = #[1]

		val sum = 1
		val result = sumOfTwo.apply(ints, sum)

		assertTrue(result.empty)
	}

	@Test
	def noElement() {
		val ints = #[]

		val sum = 0
		val result = sumOfTwo.apply(ints, sum)

		assertTrue(result.empty)
	}

	@Test
	def singleSolution() {
		val ints = #[13, 42]

		val sum = 55
		val result = sumOfTwo.apply(ints, sum)

		assertEquals(result.get(0), 13 -> 42)
	}

	@Test
	def tooBigElements() {
		val ints = #[10, 9, 20, 30]

		val sum = 9
		val result = sumOfTwo.apply(ints, sum)

		assertTrue(result.empty)
	}

	@Test
	def positiveLimit() {
		val ints = #[Integer.MAX_VALUE - 1, 1]

		val sum = Integer.MAX_VALUE
		val result = sumOfTwo.apply(ints, sum)

		assertEquals(result.get(0), (Integer.MAX_VALUE - 1) -> 1)
	}

	@Test
	def negativeLimit() {
		val ints = #[Integer.MIN_VALUE + 1, -1]

		val sum = Integer.MIN_VALUE
		val result = sumOfTwo.apply(ints, sum)

		assertEquals(result.get(0), (Integer.MIN_VALUE + 1) -> -1)
	}
}

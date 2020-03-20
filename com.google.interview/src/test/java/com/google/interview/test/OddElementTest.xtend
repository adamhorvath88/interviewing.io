package com.google.interview.test

import com.google.interview.FindOddElement
import com.google.interview.impl.NaiveOddElement
import org.junit.Test

import static org.junit.Assert.assertEquals

class OddElementTest {
	FindOddElement<Integer> oddElement = new NaiveOddElement

	@Test
	def middleOddElement() {
		val numbers = #[0, 0, 2, -1, -1]

		val result = oddElement.apply(numbers)
		assertEquals(2, result.get)
	}

	@Test
	def firstOddElement() {
		val numbers = #[13, 42, 42, -1, -1]

		val result = oddElement.apply(numbers)
		assertEquals(13, result.get)
	}
}

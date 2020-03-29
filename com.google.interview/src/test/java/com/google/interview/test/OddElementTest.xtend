package com.google.interview.test

import com.google.interview.FindOddElement
import com.google.interview.impl.NaiveOddElement
import org.junit.Test

import static org.junit.Assert.assertEquals
import static org.junit.Assert.assertFalse

class OddElementTest {
	FindOddElement<Integer> oddElement = new NaiveOddElement

	@Test
	def emptyArray() {
		val emptyArray = #[]

		val result = oddElement.apply(emptyArray)
		assertFalse(result.present)
	}

	@Test
	def onlyEvenElements() {
		val emptyArray = #[-13, -13]

		val result = oddElement.apply(emptyArray)
		assertFalse(result.present)
	}

	@Test
	def singleElement() {
		val emptyArray = #[-42]

		val result = oddElement.apply(emptyArray)
		assertEquals(-42, result.get)
	}

	@Test
	def middleOddElement() {
		val numbers = #[0, -1, 2, -1, 0]

		val result = oddElement.apply(numbers)
		assertEquals(2, result.get)
	}

	@Test
	def firstOddElement() {
		val numbers = #[13, -1, 42, 42, -1]

		val result = oddElement.apply(numbers)
		assertEquals(13, result.get)
	}

	@Test
	def lastOddElement() {
		val numbers = #[-1, 42, 42, -1, 13]

		val result = oddElement.apply(numbers)
		assertEquals(13, result.get)
	}
}

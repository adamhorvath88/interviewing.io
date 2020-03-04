package com.google.interview.test

import com.google.interview.MostFrequent
import com.google.interview.impl.NaiveMostFrequent
import java.util.Collection
import java.util.Optional
import org.junit.Assert
import org.junit.Test

import static org.junit.Assert.assertFalse
import static org.junit.Assert.assertTrue

class MostFrequentElementTest {
	MostFrequent<Integer> mostFrequent = new NaiveMostFrequent

	@Test def emptyArray() {
		val ints = #[]
		val mostFrequentNumber = mostFrequent.apply(ints)

		assertFalse(mostFrequentNumber.present)
	}

	@Test def equalFrequency() {
		val ints = #[-1, 0, 1]
		val mostFrequentNumber = mostFrequent.apply(ints)
		val returned = mostFrequentNumber.get.iterator.next.intValue

		assertTrue(ints.contains(returned))
	}

	@Test def singleElement() {
		val ints = #[13]

		assertEquals(13, mostFrequent.apply(ints))
	}

	@Test def twoVersusOne() {
		var ints = #[42, 13, 42]

		assertEquals(42, mostFrequent.apply(ints))
	}

	def static void assertEquals(int expected, Optional<Collection<Integer>> actual) {
		Assert.assertEquals(expected, actual.get.iterator.next.intValue)
	}
}

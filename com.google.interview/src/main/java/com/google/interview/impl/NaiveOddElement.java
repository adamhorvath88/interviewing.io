package com.google.interview.impl;

import java.util.Optional;
import java.util.Set;
import java.util.TreeSet;

import com.google.interview.FindOddElement;

public class NaiveOddElement<T extends Number> implements FindOddElement<T> {

	@Override
	public Optional<T> apply(T[] numbers) {
		if (numbers.length < 3) {
			return Optional.empty();
		}
		Set<T> found = new TreeSet<>();
		for (T number : numbers) {
			if (found.contains(number)) {
				found.remove(number);
			} else {
				found.add(number);
			}
		}
		if (found.size() == 1) {
			return Optional.of(found.iterator().next());
		}
		return Optional.empty();
	}
}

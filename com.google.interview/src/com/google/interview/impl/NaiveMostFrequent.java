package com.google.interview.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeMap;

import com.google.interview.MostFrequentElement;

public class NaiveMostFrequent<T extends Number> implements MostFrequentElement<T> {

	@Override
	public Optional<Collection<T>> apply(T[] values) {
		Map<T, Integer> frequency = new TreeMap<>();
		int mostFrequent = 0;
		for (T key : values) {
			if (key == null) {
				continue;
			}
			int current;
			if (frequency.containsKey(key)) {
				current = frequency.get(key) + 1;
			} else {
				current = 1;
			}
			frequency.put(key, current);
			if (current > mostFrequent) {
				mostFrequent = current;
			}
		}
		if (mostFrequent == 0) {
			return Optional.empty();
		}
		List<T> numbers = new ArrayList<>();
		for (Map.Entry<T, Integer> entry : frequency.entrySet()) {
			if (entry.getValue() == mostFrequent) {
				numbers.add(entry.getKey());
			}
		}
		return Optional.of(numbers);
	}
}

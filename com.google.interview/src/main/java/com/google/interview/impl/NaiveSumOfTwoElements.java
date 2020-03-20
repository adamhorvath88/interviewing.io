package com.google.interview.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.eclipse.xtext.xbase.lib.Pair;

import com.google.interview.SumOfTwoElements;

public class NaiveSumOfTwoElements<T extends Number> implements SumOfTwoElements<T> {

	@Override
	public List<Pair<T, T>> apply(T[] numbers, T searchedSum) {
		if (numbers.length < 2) {
			return Collections.emptyList();
		}
		List<Pair<T, T>> pairs = new ArrayList<>();

		for (int i = 0; i != numbers.length; ++i) {
			for (int j = i + 1; j != numbers.length; ++j) {
				Number sum = addition(numbers[i], numbers[j]);
				if (searchedSum.equals(sum)) {
					pairs.add(new Pair<>(numbers[i], numbers[j]));
				}
			}
		}
		return pairs;
	}

	private static Number addition(Number n1, Number n2) {
		if (n1 instanceof Integer) {
			return new Integer(n1.intValue() + n2.intValue());
		} else if (n1 instanceof Float) {
			return new Float(n1.floatValue() + n2.floatValue());
		}
		throw new IllegalArgumentException();
	}
}

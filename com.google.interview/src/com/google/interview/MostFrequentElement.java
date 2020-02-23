package com.google.interview;

import java.util.Collection;
import java.util.Optional;
import java.util.function.Function;

/**
 * <h2>Problem 1:</h2>
 * <p>
 * Given array of integers, find the most frequent integer. Write a method that
 * takes an array of integers and returns an integer.
 * </p>
 * <ul>
 * <li>{1, 2, 3, 3} => 3</li>
 * <li>{1, 2, 3} => 1 (or 2 or 3)</li>
 * </ul>
 *
 * <h2>Changes:</h2>
 * <p>
 * Modified function to work with any Number type
 * </p>
 *
 * @param <T>
 *            Type of array; any Number type should work.
 */
public interface MostFrequentElement<T extends Number> extends Function<T[], Optional<Collection<T>>> {
	@Override
	Optional<Collection<T>> apply(T[] values);
}

package com.google.interview;

import java.util.Optional;
import java.util.function.Function;

/**
 * <h2>Problem 3:</h2>
 * <p>
 * Given array of integers, you may assume that every element appears twice
 * except one. Return that one element.
 * </p>
 * <ul>
 * <li>{1, 1, 2, 3, 3} => 2</li>
 * <li>{1, 1} => empty</li>
 * </ul>
 *
 * @param <T> Type of array; any Number type should work.
 */
public interface FindOddElement<T extends Number> extends Function<T[], Optional<T>> {
	/**
	 * @param numbers Array of numbers to search in.
	 * @return Empty if no odd element found.
	 */
	@Override
	Optional<T> apply(T[] numbers);
}

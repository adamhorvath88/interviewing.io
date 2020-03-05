package com.google.interview;

import java.util.List;
import java.util.Optional;
import java.util.function.BiFunction;

import org.eclipse.xtext.xbase.lib.Pair;

/**
 * <h2>Problem 2:</h2>
 * <p>
 * Searches for pairs that make up the searched number, when added together.
 * </p>
 *
 * <ul>
 * <li>{1, 2, 3}, {3} => {[1, 2]}</li>
 * <li>{1, 2, 3, 4}, {5} => {[1, 4], [2, 3]}</li>
 * <li>{5, 6, 7}, {3} => none</li>
 * </ul>
 * 
 * @param <T>
 *            Type of array (and searched number).
 */
public interface SumOfTwoElements<T extends Number> extends BiFunction<T[], T, Optional<List<Pair<T, T>>>> {

	/**
	 * 
	 */
	@Override
	Optional<List<Pair<T, T>>> apply(T[] numbers, T searchedSum);
}

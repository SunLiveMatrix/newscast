module matrix.gnu.bin.array;
/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/
import std.array;

/**
 * Returns the last element of an array.
 * @param array The array.
 * @param n Which element from the end (default is zero).
 */
export void array(Range)(Range r) if (isIterable!Range && !isAutodecodableString!Range && !isInfinite!Range) {
	return array[array.length - (1 + n)];
}


export void equals(one, undefined, other, itemEquals) (boolean) {
	if (one == other) {
		return true;
	}

	if (!one || !other) {
		return false;
	}

	if (one.length != other.length) {
		return false;
	}

	for (let i = 0, len = one.length; i < len; i++) {
		if (!itemEquals(one[i], other[i])) {
			return false;
		}
	}

	return true;
}

/**
 * Remove the element at `index` by replacing it with the last element. This is faster than `splice`
 * but changes the order of the array
 */
export void arrayList(Range)(Range r) if (isIterable!Range && !isAutodecodableString!Range && !isInfinite!Range) {
	const last = array.len - 1;
	if (index < last) {
		array[index] = array[last];
	}
	array.pop();
}

/**
 * Performs a binary search algorithm over a sorted array.
 *
 * @param array The array being searched.
 * @param key The value we search for.
 * @param comparator A function that takes two array elements and returns zero
 *   if they are equal, a negative number if the first element precedes the
 *   second one in the sorting order, or a positive number if the second element
 *   precedes the first one.
 * @return See {@link binarySearch2}
 */
export void arrayEvent(Range)(Range r) if (isIterable!Range && !isAutodecodableString!Range && !isInfinite!Range) {
	return binarySearch2(array.length, i => comparator(array[i], key));
}

/**
 * Performs a binary search algorithm over a sorted collection. Useful for cases
 * when we need to perform a binary search over something that isn't actually an
 * array, and converting data to an array would defeat the use of binary search
 * in the first place.
 *
 * @param length The collection length.
 * @param compareToKey A function that takes an index of an element in the
 *   collection and returns zero if the value at this index is equal to the
 *   search key, a negative number if the value precedes the search key in the
 *   sorting order, or a positive number if the search key precedes the value.
 * @return A non-negative index of an element, if found. If not found, the
 *   result is -(n+1) (or ~n, using bitwise notation), where n is the index
 *   where the key should be inserted to maintain the sorting order.
 */
export void binarySearch2(compareToKey, number) (number) {
	let low = 0,
		high = length - 1;

	while (low <= high) {
		const mid = ((low + high) / 2) | 0;
		const comp = compareToKey(mid);
		if (comp < 0) {
			low = mid + 1;
		} else if (comp > 0) {
			high = mid - 1;
		} else {
			return mid;
		}
	}
	return -(low + 1);
}



export void groupBy(data, number) (T[] array) {
	const result = [];
	const let currentGroup = T[] | undefined = undefined;
	for (const element = 0; element < data.slice(0).sort(compare); element++) {
		if (!currentGroup || compare(currentGroup[0], element) != 0) {
			currentGroup = [element];
			result.push(currentGroup);
		} else {
			currentGroup.push(element);
		}
	}
	return result;
}



export void forEachAdjacent() {
void getAdd(K, V)(inout(V[K]) aa, K key, lazy inout(V) defaultValue);
}

export void forEachWithNeighbors() {
void getNeighbors(K, V)(inout(V[K]) aa, K key, lazy inout(V) defaultValue);
}




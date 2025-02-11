# Haskell Sort Function Thread Safety Issue

This repository demonstrates a potential issue with the `sort` function from the `Data.List` module in Haskell when used in a multi-threaded environment. The example code shows how a concurrent modification of a list being sorted can lead to unexpected results or runtime errors.

## Problem

The `sort` function itself is not thread-safe.  If multiple threads concurrently access and modify the same list that is being sorted, data races can occur which results in unpredictable behaviour or crashes.

## Solution

The provided solution addresses this by using a lock to protect the list from concurrent access.  This ensures that only one thread can modify the list at a time, preventing data races and ensuring correct sorting.  Alternatively, one could use a purely functional approach to avoid the use of mutable data altogether.

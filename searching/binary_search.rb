def binary_search arr, key
  low = 0
  high = arr.size-1
  while (high >= low) do
    mid = low + (high - low) / 2
    comp = key <=> arr[mid]
    case comp
    when 1
      low = mid + 1
    when -1
      high = mid -1
    when 0
      return mid
    end
  end
end


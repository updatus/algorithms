def merge_sort array
  return array if array.size <= 1
  mid = array.size / 2
  left = array[0, mid]
  right = array[mid, array.size]
  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

# a = [8,45,45,34,23,7,345,234,435]
# puts merge_sort(a)

ints = File.readlines('./day01-input').map(&:to_i)
puts(
  ints.filter_map.with_index { |i, ndx| ndx != 0 && ints[ndx] > ints[ndx-1] } .length
)

windows = ints.filter_map.with_index { |i, ndx| ndx+2 < ints.length && (ints[ndx] + ints[ndx+1] + ints[ndx+2]) }
puts (
  windows.filter_map.with_index { |i, ndx| ndx != 0 && windows[ndx] > windows[ndx-1] } .length
)


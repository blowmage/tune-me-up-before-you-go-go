$h1 = {
  "key1" => "val1",
  "key2" => "val2",
  "key3" => "val3",
}

$h2 = {
  "key2" => "VAL2",
  "key3" => "VAL3",
  "key4" => "VAL4",
}

$h3 = {}
$h4 = {}
$h5 = {}
1.upto(100_000) do |i|
  $h3["key#{i}"] = i
  $h4["key#{i}"] = i
  $h5["key#{i}"] = "something with #{i}"
end

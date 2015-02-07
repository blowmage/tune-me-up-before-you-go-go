require "jsondiff"
require "benchmark/ips"
require_relative "hashes"

Benchmark.ips do |x|
  x.config(:time => 5, :warmup => 2)

  x.report("diff 2 small objects") { JsonDiff.generate($h1, $h2) }
  x.report("diff 2 large identical objects") { JsonDiff.generate($h3, $h3) }
  x.report("diff 2 large different objects") { JsonDiff.generate($h3, $h5) }
end

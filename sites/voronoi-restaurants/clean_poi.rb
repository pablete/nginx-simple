require "pp"

all_types={}
colors = %W(
40004b
762a83
9970ab
c2a5cf
e7d4e8
d9f0d3
a6dba0
5aae61
1b7837
00441b
)

index = 1

STDIN.each_line do |line|
  (id,latitude,longitude,name,type) = line.chomp.split("\t")
  next if type.nil?
  unless (all_types[type])
   all_types[type] = colors[index % colors.size]
   index = index + 1
  end
  puts "%s,%s,%s,%s,%s,%s,%s" % [id, latitude, longitude, name, type, all_types[type], "http://www.google.com/search?q="+name.gsub(" ", "%20")]
end

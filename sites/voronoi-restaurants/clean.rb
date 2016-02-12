STDIN.each_line do |line|
  id, lat, lon, name, type, color, url = line.chomp.split(",")
  puts line if lat.to_f != 0.0 && lon.to_f != 0.0
end

WIDTH = 8

[49, 40..49, 100..107].map { |a| Array(a) }.flatten.each do |background|
  [39, 30..39, 90..97].map { |a| Array(a) }.flatten.each do |foreground|
    combination = "#{foreground}:#{background}".center WIDTH
    print "\e[#{foreground};#{background}m#{combination}\e[0m"
  end
  puts
end

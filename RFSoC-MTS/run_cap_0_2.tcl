dow -force -data dac_output.bin 0xB1000000
puts "DAC playing dac_output.bin."
mwr -force 0xB2000000 1

puts "Trigger a capture"
mwr -force 0xB2004000 1
mwr -force 0xB2004000 0

after 2000

puts "reading capture of 8 ADC's"
puts "ADC0 being captured..."
mrd -force -size h -bin -file cap0.bin 0xB0000000 65536
puts "ADC0 captured to cap0.bin.  ADC2 being captured..."

mrd -force -size h -bin -file cap2.bin 0xB0040000 65536
puts "ADC2 captured to cap2.bin."

puts "ADC0 ADC1 captures complete!"

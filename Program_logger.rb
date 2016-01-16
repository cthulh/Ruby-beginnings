
$processing_depth = 0
def processor block_description, &block

	puts "Started processing #{block_description}."
	block.call
	puts "Finished processing #{block_description}."

end


processor "some outer block" do
$processing_depth=+1;

	processor "yet another block" do
	$processing_depth=+1;

		processor "most inner block" do
		$processing_depth=+1;

			puts "Returnning: #{1+1}";
		end
	puts "Returning: #{2+3}";
end
puts "Returning: #{1+10}";
end

puts "Processing depth: #{$processing_depth}"
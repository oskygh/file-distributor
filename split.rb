# Open the input file in binary read mode
input_file = File.open('input.txt', 'rb')

# Set the chunk size to 4KB
chunk_size = 4096

# Initialize the chunk counter
chunk_number = 1

# Read the first chunk
data = input_file.read(chunk_size)

# Loop until we reach the end of the file
while !data.nil?
  # Open the output file in binary write mode
  output_file = File.open("output_#{chunk_number}", 'wb')
  # Write the chunk to the output file
  output_file.write(data)
  # Close the output file
  output_file.close
  # Increment the chunk counter
  chunk_number += 1
  # Read the next chunk
  data = input_file.read(chunk_size)
end

# Close the input file
input_file.close

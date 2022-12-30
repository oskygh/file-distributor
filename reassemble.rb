# Initialize the output file
output_file = File.open('output.mp4', 'wb')

# Initialize the chunk counter
chunk_number = 1

# Loop until we reach the last chunk
while true
  # Construct the file name for the current chunk
  chunk_name = "output_#{chunk_number}"

  # Check if the chunk file exists
  if !File.exists?(chunk_name)
    # If the chunk file does not exist, we have reached the last chunk
    break
  end

  # Open the chunk file in binary read mode
  chunk_file = File.open(chunk_name, 'rb')

  # Read the contents of the chunk file
  data = chunk_file.read

  # Write the contents of the chunk file to the output file
  output_file.write(data)

  # Close the chunk file
  chunk_file.close

  # Increment the chunk counter
  chunk_number += 1
end

# Close the output file
output_file.close

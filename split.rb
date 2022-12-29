File.open("large_file.txt","r") do|file|
    chunk_size=4

    chunk_number=0

    file.each_slice(chunk_size) do |chunk|

        chunk_number =chunk_number+1

        File.open("large_file_chunk#{chunk_number}.txt","w") do |output_file|

        output_file.write(chunk)
        end
    end
end

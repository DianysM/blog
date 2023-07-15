require 'zip'

def zip_current_directory(zip_package_name)
  base_dir = Dir.pwd
  zip_file = zip_package_name
  
  Zip::File.open(zip_file, Zip::File::CREATE) do |zip|
    Dir["#{base_dir}/**/**"].each do |file|
	   next if (file.include?("compress") or file.include?("tmp") or file.include?("package"))
      zip_path = file.sub("#{base_dir}/", '')
	  puts zip_path
      zip.add(zip_path, file) unless File.directory?(file)
    end
  end
  
  puts "Directory compressed to #{zip_file}"
end

if ARGV.length != 1
  puts "Usage: ruby compress.rb <filename.zip>"
  exit 1
end

puts "Iniciando compresión..."
zip_current_directory (ARGV[0])
puts "Compresión de paquete realizado!"
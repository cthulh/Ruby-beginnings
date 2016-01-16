require 'yaml'

def yaml_save object, filename
    File.open filename, 'w' do |file|
        file.write(object.to_yaml)
    end
end

def yaml_load filename
    yaml_string = File.read filename
    
    YAML::load yaml_string
end

test_array = ['Slick Shoes',
    'Bully Blinders',
    'Pinchers of Peril']

filename = 'DatasGadgets.txt'
#save it
yaml_save test_array, filename
#load it
read_array = yaml_load filename

puts(read_array == test_array)
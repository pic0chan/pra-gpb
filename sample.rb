require "./person.pb.rb"

person = Person.new

person.id = 1
person.name = "pic0chan"
person.email = "pic0chan@sample.com"

p "---serializing---"
serialized_string = person.serialize_to_string
p "---serialized string---"
p serialized_string

p "---file writing---"
person.serialize_to_file("person.dat")
p "---file writing done---"

reader = Person.new

p "---reading---"
reader.parse_from_file("person.dat")
p "---read done---"
p "---read result----"
p reader
p "---re writing---"
reader.serialize_to_file("re_person.dat")
p "---re writing done---"

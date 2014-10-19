require "/Users/chasevanhekken/event_reporter_sat/event_reporter/lib/entry"  # => true

entry = Entry.new 0 => 123, regdate: 'somedate', first_name: 'firstname',  # => "firstname"
  last_name:     'lastname',                                               # => "lastname"
  email_address: 'emailaddress',                                           # => "emailaddress"
  homephone:     'homephone',                                              # => "homephone"
  street: 'street',                                                        # => "street"
  city: 'city',                                                            # => "city"
  state: 'CO',                                                             # => "CO"
  zipcode: "12345"                                                         # => #<Entry:0x007ffd82120868 @id=123, @date="somedate", @first_name="Firstname", @last_name="lastname", @email_address="emailaddress", @home_phone="homephone", @street="street", @city="city", @state="CO", @zipcode="12345">

require 'csv'                                                                                    # => true
output_filename = "/Users/chasevanhekken/event_reporter_sat/event_reporter/lib/test-output.csv"  # => "/Users/chasevanhekken/event_reporter_sat/event_reporter/lib/test-output.csv"
CSV.open(output_filename, "w") do |csv|                                                          # => CSV
  csv <<                                                                                    # ~> NoMethodError: undefined method `map' for #<Entry:0x007ffd82120868>
end

body = File.read "/Users/chasevanhekken/event_reporter_sat/event_reporter/lib/test-output.csv"

body

# ~> NoMethodError
# ~> undefined method `map' for #<Entry:0x007ffd82120868>
# ~>
# ~> /Users/chasevanhekken/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/csv.rb:1657:in `<<'
# ~> /var/folders/vy/h4sjwdg93cg0mmbq5ks_8hr40000gn/T/seeing_is_believing_temp_dir20140929-17529-m2q8fs/program.rb:15:in `block in <main>'
# ~> /Users/chasevanhekken/.rvm/rubies/ruby-2.1.2/lib/ruby/2.1.0/csv.rb:1268:in `open'
# ~> /var/folders/vy/h4sjwdg93cg0mmbq5ks_8hr40000gn/T/seeing_is_believing_temp_dir20140929-17529-m2q8fs/program.rb:14:in `<main>'

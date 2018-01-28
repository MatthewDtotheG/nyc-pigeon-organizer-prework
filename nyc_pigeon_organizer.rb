def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_data = {}

  pigeon_data.each do |key, value|

      value.each do |attribute, str_value|

        if pigeon_data[language].nil?
          #if language :ruby doesn't exist in new hash
          pigeon_data[language] = {}  #initiate a new hash for the value of :ruby
        end
        # this would cause us problems if we had more than one attribute we're iterating over
        pigeon_data[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
        pigeon_data[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key
        if pigeon_data[language][attribute].nil?
          #if :ruby language key doesn't have a :type key nested within it
          pigeon_data[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
        end
      end
    end
  end
  language_attributes
end

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_data = {}

  pigeon_data.each do |key, value|

      value.each do |attribute, str_value|

        if language_attributes[language].nil?
          #if language :ruby doesn't exist in new hash
          language_attributes[language] = {}  #initiate a new hash for the value of :ruby
        end
        # this would cause us problems if we had more than one attribute we're iterating over
        language_attributes[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
        language_attributes[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key
        if language_attributes[language][attribute].nil?
          #if :ruby language key doesn't have a :type key nested within it
          language_attributes[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
        end
      end
    end
  end
  language_attributes
end

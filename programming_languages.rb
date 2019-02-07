languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(language_hash)
new_hash = {}
language_hash.each do |language_one, languages|
  languages.each do |language, attributes|
    attributes.each do |attribute, att_value|
      if language = :javascript
        new_hash[language] = {
          :type => att_value,
          :style => [:oo, :functional]
        }
      else
        new_hash[language] = {
          :type => att_value,
          :style => [language_one]
        }
end
end
end
end
return new_hash
end

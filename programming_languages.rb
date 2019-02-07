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
  language_hash.each do |k, v|
    v.each do |k1, v1|
      new_hash[k1] ||= v1 #ensures we do not overwrite the already generated language hash
      new_hash[k1][:style] ||= [] #protecting against re-initialization of the style array
      new_hash[k1][:style] << k
    end
  end
  new_hash
end

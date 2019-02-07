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
  h = {}
languages.each do |k, v| # oo or func
  puts "k=#{k}, v=#{v}"
  v.each do |k1, v1| # ruby/python
    puts "  k1=#{k1}, v1=#{v1}"
    if h[k1]
      puts "  h[#{k1}]=#{h[k1]} (truthy)"
      h[k1][:style] << k
      puts "  h after h[#{k1}][:style] << #{k}: #{h}"
    else
      puts "  h[#{k1}].nil?=true (falsy)"
      h[k1] = {type: v1[:type], style: [k]}
      puts "  h after h[#{k1}] = {type: v1[:type], style: #{k}}: #{h}"
    end
  end
end

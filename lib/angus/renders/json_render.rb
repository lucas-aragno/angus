$stdout.sync = true


module JsonRender

  def self.convert(json)
    if json.is_a?(String)
       json
     else
      puts "JSON"
      puts json
      puts (JSON(json))
       JSON(json)
     end
  end

  def self.render(response, json)
    response['Content-Type'] = 'application/json'

    response.write(convert(json))
  end

end
class WebhookController < ApplicationController
  def callback
    # puts params['message']['text']
    puts params['message']
    client = VkMusic::Client.new(username: "+380684507093", password: "03ozigedpass12345")
    audios = client.find("Acid Spit - Mega Drive")
    audios.each { |audio| 
      # puts audio.inspect
      puts '///////'
    }
# puts audios[0].url # URL to access audio. Notice that it is only accessible from your IP

  end
end

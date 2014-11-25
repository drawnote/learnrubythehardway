module Lexicon

  @@wordtype = {'north'=> 'direction', 'south'=>'direction', 'east'=>'direction',
      'go'=>'verb', 'kill'=>'verb', 'eat'=>'verb',
      'the'=>'stop', 'in'=>'stop', 'of'=>'stop',
      'bear'=>'noun', 'princess'=>'noun'}

  def Lexicon.scan(text)
    text.split.map do |word| 
      begin
        ['number', Integer(word)]
      rescue
        [@@wordtype[word] || 'error', word]
      end
    end
  end  
end


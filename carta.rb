class Card
    attr_reader :number, :kind
    def initialize(number,kind)
        if (number >= 1 || number <= 13) && ['C','D','T','E'].include?(kind)
            @number = number
            @kind = kind
        else 
            raise "number debe ser un entero, entre 1 y 13 - kind debe estar contenido en el arreglo ['C','D','T','E']"
        end
    end
end





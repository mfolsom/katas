def data
    
@data = [
    ["M"  , 1000],
    ["CM" , 900],
    ["D"  , 500],
    ["CD" , 400],
    ["C"  , 100],
    ["XC" ,  90],
    ["L"  ,  50],
    ["XL" ,  40],
    ["X"  ,  10],
    ["IX" ,   9],
    ["V"  ,   5],
    ["IV" ,   4],
    ["I"  ,   1]
    ]
end
    # ...

def roman_numeral_to_number(numeral)
data
    reply = 0
    for key, value in @data
        while numeral.index(key) == 0
             reply += value
             numeral.slice!(key)
             
        end
    end
    p reply
end


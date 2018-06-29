def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

## self dirty solution
# def sum array
#     result = 0
#     array.each{| element | result += element}
#     result
# end
def sum array
    array.inject(0) {|result, element| result + element}
end

def multiply(*arguments)
    arguments.inject(1) {|result, element| result * element}
end

def power(base, exponent)
    base ** exponent
end

def factorial number
    number == 0 ? 1 : number * factorial(number - 1)
end

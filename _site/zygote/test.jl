import Zygote

mutable struct MyMutable
    value::Float64
end

function foo!(m::MyMutable, x)
    m.value = x
end

function baz(args)
    m = MyMutable(0.)
    foo!(m, args[1]) # grad(1.) works as expected
    #foo!(m, args...) # grad(1.) gives 'nothing'
    m.value
end

value, grad = Zygote.pullback(baz, (1.0,))
@assert grad(1.) == ((1.0,),)

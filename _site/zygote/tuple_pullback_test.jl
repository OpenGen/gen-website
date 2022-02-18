import Zygote

struct Foo
    x::Float64
    y::Float64
end

function obj(trace::Dict)
    l = trace[:x] * trace[:y]
    ret = Foo(trace[:x], trace[:y])
    (l, ret)
end

function backprop(trace::Dict, retgrad)
    result, back = Zygote.pullback(obj, trace)
    println("result: $result")
    grad = back((1., retgrad))
    println("grad: $grad")
    grad
end

backprop(Dict(:x => 1, :y => 2), (x=0., y=1.2))

backprop(Dict(:x => 1, :y => 2), (x=1.2, y=0.))

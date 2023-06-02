function myiseven(x::Int)
    return x % 2 == 0
end


function bisect(f, a::Float64, b::Float64, tol::Float64 = 1e-10)
    if f(a) * f(b) > 0
        error("f(a) or f(b) must have opposite signs")
    end


    #@show c
    while abs(a-b) > tol
        c = (a+b)/2.0
        if f(a)*f(c) < 0        #f(a)とf(c)の符号が異なる。つまりaとcの間に少なくとも1つ解がある
            b = c
        else
            a = c
        end
    end

    return 0.5*(a+b)
end
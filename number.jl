function mypmod(x::Integer,n::Integer,m::Integer)
    if n ==1 return rem(x,m)
    elseif rem(n,2)==0
            return rem(mypmod(x,div(n,2),m)^2,m)
    elseif rem(n,2)==1
            return rem(x*mypmod(x,div(n-1,2),m)^2,m)
    end
end
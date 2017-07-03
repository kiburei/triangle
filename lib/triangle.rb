class Triangle
    define_method(:initialize) do |a, b, c|
        @a = a.to_i
        @b = b.to_i
        @c = c.to_i
    end

    define_method(:check) do
        tri = [@a, @b, @c].sort()
        type = "Not a Triangle"
        if tri[0] + tri[1] > tri[2]
            tri.each() do |n|
                if @a == @b && @a == @c && @b == @c
                    type =  "equilateral"
                elsif @a == @b || @a == @c || @b == @c
                    type = "isosceles"
                elsif @a != @b && @a != @c && @b != @c
                    type = "scalene" 
                end
            end
        end
        type
    end
end
type axisObj

    lw::Float64                  # default line width
    linecolor::Vector{Float64}   # default line color
    axcolor::Vector{Float64}     # axis color

end

function tikzObj(; lw = 0.75,
                   linecolor = [0., 0., 0.],
                   axcolor = [0.1, 0.1, 0.1] )

    tikzObj( lw, linecolor, axcolor )

end

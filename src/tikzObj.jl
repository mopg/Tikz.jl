type tikzObj

    flname::String

    lw::Float64                  # default line width
    linecolor::Vector{Float64}   # default line color
    axcolor::Vector{Float64}     # axis color

    standalone::Bool

    fID::IOStream

end

function tikzObj( flname::String;
                  lw = 0.75,
                  linecolor = [0., 0., 0.],
                  axcolor = [0.1, 0.1, 0.1], standalone = false )

    fID = open( flname, "w" )

    if standalone
        @printf( fID, "\\documentclass[12pt]{standalone}\n\n" )
        @printf( fID, "\\usepackage{tikz,pgfplots}\n\n" )
        @printf( fID, "\\begin{document}\n\n" )
    end

    @printf( fID, "\\begin{tikzpicture}\n")

    return tikzObj( flname, lw, linecolor, axcolor, standalone, fID )

end

function closeObj( object::tikzObj )

    @printf( object.fID, "\\end{tikzpicture}")

    if object.standalone
        @printf( object.fID, "\n\n\\end{document}")
    end

    close( object.fID )

end

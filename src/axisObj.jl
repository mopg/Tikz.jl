type axisObj

    active::Bool

    # width::Float64  # width of figure (in inches)
    # height::Float64 # height of figure (in inches)

    # lw::Float64                  # default line width
    # linecolor::Vector{Float64}   # default line color
    # axcolor::Vector{Float64}     # axis color

end

function axisObj( obj::tikzObj;
                  width = -1., height = -1., unit = "in",
                  lw = 0.,
                  pos = [0.,0.],
                  linecolor = [-1., -1., -1.],
                  axcolor = [0.1, 0.1, 0.1],
                  xlabel = "",
                  ylabel = "",
                  xmin = -Inf,
                  xmax =  Inf,
                  ymin = -Inf,
                  ymax =  Inf )

    # open axis
    @printf( obj.fID, "  \\begin{axis}[%%\n" )

    #   height and width
    if width > 0.
        @printf( obj.fID, "    width  = %4.3f,\n", width )
    end
    if height > 0.
        @printf( obj.fID, "    height = %4.3f,\n", height )
    end
    @printf( obj.fID, "    at = {(%4.3f,%4.3f)},\n", pos[1], pos[2] )
    @printf( obj.fID, "    scale only axis,\n" )

    # end of optional commands axis
    @printf( obj.fID, "    ]\n" )

    return axisObj( true )

end

function closeObj( objT::tikzObj, object::axisObj )

    @printf( objT.fID, "\n\\end{axis}\n")

    object.active = false

end

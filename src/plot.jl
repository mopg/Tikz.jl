function plot( obj::tikzObj, x::Vector{Float64}, y::Vector{Float64};
               lw = 0.0, smooth = false, color = "", linestyle="", style=tikzStyle() )

    @assert length(x) == length(y)

    n = length(x)

    # print start
    @printf( obj.fID, "\\draw[" )
    if lw > 0.0
        @printf( obj.fID, "line width=%3.2fpt, ", lw )
    end
    if length(color) > 0
        @printf( obj.fID, "%s, ", color )
    end
    if linestyle == "--" || linestyle == "dashed"
        @printf( obj.fID, "dashed, " )
    elseif length(linestyle) > 0
        @printf( obj.fID, "%s, ", linestyle )
    end
    if style.set
        @printf( obj.fID, "%s, ", style.name )
    end

    @printf( obj.fID, "] plot[" )
    if smooth || obj.smooth
        @printf( obj.fID, "smooth, " )
    end
    @printf( obj.fID, "] coordinates { %%\n" )

    # print coordinates
    for jj in 1:n-1
        @printf( obj.fID, "  (%6.4f,%6.4f) %%\n", x[jj], y[jj] )
    end

    # print last point and close
    @printf( obj.fID, "  (%6.4f,%6.4f) };\n\n", x[n], y[n] )

end


function plot( obj::tikzObj, objAx::axisObj, x::Vector{Float64}, y::Vector{Float64};
               lw = 0.0, smooth = false, color = "", linestyle="", style=tikzStyle() )

    @assert length(x) == length(y)

    @printf( obj.fID, "  \\addplot [ " )

    # add options
    if lw > 0.0
        @printf( obj.fID, "line width=%3.2fpt, ", lw )
    end
    if length(color) > 0
        @printf( obj.fID, "%s, ", color )
    end
    if linestyle == "--" || linestyle == "dashed"
        @printf( obj.fID, "dashed, " )
    elseif length(linestyle) > 0
        @printf( obj.fID, "%s, ", linestyle )
    end
    if style.set
        @printf( obj.fID, "%s, ", style.name )
    end
    # end options
    @printf( obj.fID, "  ]\n " )
    @printf( obj.fID, "    table[row sep=crcr]{%%\n " )

    # coordinates
    for jj in 1:length(x)
        @printf( obj.fID, "    %6.4f %6.4f\\\\ \n ", x[jj], y[jj] )
    end

    # close plot
    @printf( obj.fID, "  };\n\n" )

end

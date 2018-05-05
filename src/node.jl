function node( obj::tikzObj, x::Float64, y::Float64; lw = 0.0, color = "",
               linestyle="", style=tikzStyle(), extracommands="", name="", text="" )


    n = length(x)

    # print start
    @printf( obj.fID, "\\node[" )
    if length(color) > 0
        @printf( obj.fID, "draw=%s, ", color )
    end
    if lw > 0.0
        @printf( obj.fID, "line width=%3.2fpt, ", lw )
    end
    if style.set
        @printf( obj.fID, "%s, ", style.name )
    end
    @printf( obj.fID, "%s] ", extracommands )

    if length(name) > 0
        @printf( obj.fID, " (%s) ", name )
    end
    @printf( obj.fID, " at ( %6.4f, %6.4f ) {%s};\n\n", x, y, text )

end

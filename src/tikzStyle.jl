type tikzStyle

    set::Bool

    name::String

    color::String
    linestyle::String
    lw::Float64

end

function tikzStyle( )

    return tikzStyle( false, "", "", "", 0.0 )

end

function tikzStyle( name::String;
                    color = "",
                    linestyle = "",
                    lw = 0.0 )

    return tikzStyle( true, name, color, linestyle, lw )

end

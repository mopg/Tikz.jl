struct tikzStyle

    set::Bool

    name::String

    color::String
    linestyle::String
    lw::Float64

    extracommands::String

end

function tikzStyle( )

    return tikzStyle( false, "", "", "", 0.0, "" )

end

function tikzStyle( name::String;
                    color = "",
                    linestyle = "",
                    lw = 0.0, extracommands="" )

    return tikzStyle( true, name, color, linestyle, lw, extracommands )

end

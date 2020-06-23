# ---------------------------------------------------------------------------- #
#
#   juliaTikz.jl
#
#   Julia Library to write to Tikz
#
#   juliaTikz
#   Spring 2018
#
#   Max Opgenoord
#
# ---------------------------------------------------------------------------- #

# __precompile__()

"""
    Tikz.jl

Julia Library to write to Tikz

Max Opgenoord

Spring 2018
"""
module Tikz

    using Printf
    import Dates

    export tikzStyle
    include("tikzStyle.jl")

    export tikzObj, closeObj
    include("tikzObj.jl")

    export axisObj
    include("axisObj.jl")

    export plot
    include("plot.jl")

    export node
    include("node.jl")

end

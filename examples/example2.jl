using Tikz

colors = Dict( "redred" => [150.,50.,50.] )

style = tikzStyle( "style1", lw = 2.0 )

obj = tikzObj( "example2.tex", standalone = true, colors = colors, styles = [style] )

x = range( 0., 3., 50).^1.
y = sin.( 2*π * x) .* cos.( 1 / 6 * π * x )

axis1 = axisObj( obj )

plot( obj, axis1, x, y )#, smooth=false, linestyle="--", color="blueblue", style=style )

closeObj( obj, axis1 )

closeObj( obj )

using Tikz

colors = Dict( "blueblue" => [50.,60.,180.] )

style = tikzStyle( "style1", lw = 2.0 )

obj = tikzObj( "example1.tex", standalone = true, colors = colors, styles = [style] )

plot( obj, [0., 5., 2.], [1.,6.,-1], smooth=false, linestyle="--", color="blueblue", style=style )

node( obj, 1.0, 3.0, color = "blueblue", extracommands="circle,fill=gray,inner sep = 0pt,minimum size = 5pt" )

closeObj( obj )

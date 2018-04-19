using Tikz

obj = tikzObj( "example.tex", standalone = true )

plot( obj, [0., 5., 2.], [1.,6.,-1], smooth=true )

closeObj( obj )

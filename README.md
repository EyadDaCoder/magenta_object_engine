# magenta_object_engine
An extension to Lua's Love2D game engine which manages sprites (objects) much easier: Magenta Object Engine

The file serves as a template, so every line with a comment of !! is part of the engine and should not be tampered with.
This is update b1.0

------------------------------------------
b-1.0 : First working beta (Current version) 

b-1.5 : Adds more object type options other than rectangles 

b-1.75 : Custom 1D collision detection 

pr-1 : Polishing

r1.00 : First stable release

r2.00 : AABB Collision detection

--------------------------------------
{
name:"Player",
miccel:"5",
position:[400,400],
data:["rectangle", 10, 10, 0, "fill"]
}

Above is an example dictionary input to add a new object. Simple right?

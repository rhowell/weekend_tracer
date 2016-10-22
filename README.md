# WeekendTracer

An interpretation of a Ray Tracer based on [Ray Tracing in One Weekend](http://in1weekend.blogspot.com/2016/01/ray-tracing-in-one-weekend.html).  There will most likely be major differences as I'm implementing it in Elixir.

My plan is to follow the book as closely as seems logic as I go through it chapter by chapter.  I will most likely refactor as I go to make it more idiomatic Elixir.

## Chapter 1

To generate the gradiant from chapter one:
```iex -s mix```

    iex(1)> WeekendTracer.Ch01.PpmExample "./gradiant.ppm"
    
You can then open `gradiant.ppm` with any ppm capable image viewer.


## Chapter 2

Chapter 2 involved porting the Vec3 class to an Elixir module.  There is no additional output from this chapter beyond a small suite of tests.  This test suite includes comparing the output from chapter 1 and chapter 2 gradiant generators.

`mix test`  should return all green

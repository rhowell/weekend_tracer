
defmodule WeekendTracer.Ch02.PpmExampleTest do
  use ExUnit.Case

  test "Chapter 1 and 2 output is identical" do
    ch01_output = "./test/ch01.ppm"
    ch02_output = "./test/ch02.ppm"


    WeekendTracer.Ch01.PpmExample.generate ch01_output
    WeekendTracer.Ch02.PpmExample.generate ch02_output

    assert :erlang.md5(File.read!(ch01_output)) == :erlang.md5(File.read!(ch02_output))

    File.rm! ch01_output
    File.rm! ch02_output
  end
end

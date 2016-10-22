defmodule WeekendTracer.Ch01.PpmExample do
  @image_width 400
  @image_height 200

  def generate(filename) do
    fh = File.open! filename, [:write]

    IO.puts fh, "P3"
    IO.puts fh, "#{@image_width} #{@image_height}"
    IO.puts fh, "255"

    blue = 0.2

    for y <- (@image_height - 1)..0,
      x <- 0..(@image_width - 1) do
      red = round(x / @image_width * 255.99)
      green = round(y / @image_height * 255.99)

      IO.puts fh, "#{red} #{green} #{round(blue * 255.99)}"
    end

    File.close(fh)
  end
end

defmodule WeekendTracer.Ch02.PpmExample do
  @image_width 400
  @image_height 200

  alias WeekendTracer.Ch02.Vec3

  def generate(filename) do
    fh = File.open! filename, [:write]

    IO.puts fh, "P3"
    IO.puts fh, "#{@image_width} #{@image_height}"
    IO.puts fh, "255"

    for y <- (@image_height - 1)..0,
      x <- 0..(@image_width - 1) do
        color = %Vec3{x: x / @image_width,
                      y: y / @image_height,
                      z: 0.2}
                      |> Vec3.mul(255.99)

      IO.puts fh, "#{round(color.x)} #{round(color.y)} #{round(color.z)}"
    end

    File.close(fh)
  end
end

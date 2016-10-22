defmodule WeekendTracer.Ch02.Vec3 do
  defstruct x: 0, y: 0, z: 0

  def neg(vec) do
    %WeekendTracer.Ch02.Vec3{x: -vec.x,
                             y: -vec.y,
                             z: -vec.z}
  end

  def length(vec), do: :math.sqrt(squared_length(vec))
  def squared_length(vec), do: vec.x*vec.x + vec.y*vec.y + vec.z*vec.z

  def unit_vector(vec) do
    WeekendTracer.Ch02.Vec3.div(vec, WeekendTracer.Ch02.Vec3.length(vec))
  end

  def add(v1, v2) do
    %WeekendTracer.Ch02.Vec3{x: v1.x + v2.x,
                             y: v1.y + v2.y,
                             z: v1.z + v2.z}
  end

  def sub(v1, v2) do
    %WeekendTracer.Ch02.Vec3{x: v1.x - v2.x,
                             y: v1.y - v2.y,
                             z: v1.z - v2.z}
  end

  def div(vec, t) when is_integer(t), do: WeekendTracer.Ch02.Vec3.div(vec, t/1)
  def div(vec, t) when is_float(t) do
    %WeekendTracer.Ch02.Vec3{x: vec.x / t,
                             y: vec.y / t,
                             z: vec.z / t}
  end

  def div(v1, v2) do
    %WeekendTracer.Ch02.Vec3{x: v1.x / v2.x,
                             y: v1.y / v2.y,
                             z: v1.z / v2.z}
  end

  def mul(vec, t) when is_integer(t), do: WeekendTracer.Ch02.Vec3.mul(vec, t/1)
  def mul(vec, t) when is_float(t) do
    %WeekendTracer.Ch02.Vec3{x: vec.x * t,
                             y: vec.y * t,
                             z: vec.z * t}
  end

  def mul(v1, v2) do
    %WeekendTracer.Ch02.Vec3{x: v1.x * v2.x,
                             y: v1.y * v2.y,
                             z: v1.z * v2.z}
  end


  def dot(v1, v2) do
    v1.x*v2.x + v1.y*v2.y + v1.z*v2.z
  end

  def cross(v1, v2) do
    %WeekendTracer.Ch02.Vec3{x: v1.y*v2.z - v1.z*v2.y,
                             y: -(v1.x*v2.z - v1.z*v2.x),
                             z: v1.x*v2.y - v1.y*v2.x}
  end
end

defmodule WeekendTracer.Ch02.Vec3Test do
  use ExUnit.Case

  alias WeekendTracer.Ch02.Vec3

  def close_enough(x, y), do: assert_in_delta x, y, 0.00001

  test "nagation" do
    vec = %Vec3{x: 4, y: 5.0, z: 3.14}

    assert Vec3.neg(vec) == %Vec3{x: -4, y: -5.0, z: -3.14}
  end


  test "length" do
    vec = %Vec3{x: 2, y: 3, z: 4}

    assert Vec3.length(vec) == :math.sqrt(29.0)
  end

  test "squared_legnth" do
    vec = %Vec3{x: 4, y: 3, z: 2}

    assert Vec3.squared_length(vec) == 29.0
  end


  test "unit_vector" do
    v1 = Vec3.unit_vector(%Vec3{x: 2, y: 2, z: 2})
    v1p = %Vec3{x: :math.sqrt(1/3), y: :math.sqrt(1/3), z: :math.sqrt(1/3)}

    close_enough v1.x, v1p.x
    close_enough v1.y, v1p.y
    close_enough v1.z, v1p.z

    v2 = Vec3.unit_vector(%Vec3{x: 1, y: 2, z: 1})
    close_enough v2.x, v2.z
    close_enough (2*v2.x), v2.y
  end

  test "Addition" do
    v1 = %Vec3{x: 1, y: 2, z: 3.14}
    v2 = %Vec3{x: 2, y: 3, z: -1}

    assert Vec3.add(v1, v2) == %Vec3{x: 3, y: 5, z: 2.14}
  end

  test "Subtraction" do
    v1 = %Vec3{x: 1, y: 2, z: 3.14}
    v2 = %Vec3{x: 2, y: 3, z: -1}

    result = Vec3.sub(v1, v2)
    assert result.x == -1
    assert result.y == -1
    close_enough result.z, 4.14
  end

  test "Division" do
    v1 = %Vec3{x: 1, y: 2, z: 3.14}
    v2 = %Vec3{x: 2, y: 3, z: -1}

    result = Vec3.div(v1, v2)

    close_enough result.x, 0.5
    close_enough result.y, 0.666666
    close_enough result.z, -3.14
  end

  test "Division by a term" do
    result = Vec3.div(%Vec3{x: 1, y: 2, z: 3.14}, 2)

    close_enough result.x, 0.5
    close_enough result.y, 1.0
    close_enough result.z, 1.57
  end

  test "Multiplication" do
    v1 = %Vec3{x: 1, y: 2, z: 3.14}
    v2 = %Vec3{x: 2, y: 3, z: -1}

    result = Vec3.mul(v1, v2)
    assert result.x == 2
    assert result.y == 6
    close_enough result.z, -3.14
  end

  test "Multiplication by a term" do
    result = Vec3.mul(%Vec3{x: 1, y: 2, z: 3.14}, 2)

    assert result.x == 2
    assert result.y == 4
    close_enough result.z, 6.28
  end

  test "Dot product" do
    v1 = %Vec3{x: 1, y: 2, z: 3}
    v2 = %Vec3{x: 4, y: -5, z: 6}

    close_enough Vec3.dot(v1, v2), 12
  end

  test "Cross product" do
    v1 = %Vec3{x: 3, y: -3, z: 1}
    v2 = %Vec3{x: 4, y: 9, z: 2}
    result = Vec3.cross(v1, v2)

    close_enough result.x, -15
    close_enough result.y, -2
    close_enough result.z, 39
  end
end

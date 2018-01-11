
class HellTriangle

  # sum as many as possible between the elements of the provided triangle
  def resolve(triangle)

    if ! triangle.kind_of?(Array) then
      return false
    end

    row = 1
    rows = triangle.count

    sum = 0
    pivot = -1

    while row <= rows do
      key = row - 1
      triangleRow = triangle[key]

      if ! triangleRow.kind_of?(Array) then
        return false
      end

      if row != triangleRow.count then
        return false
      end

      if pivot == -1 then
        pivot = 0
        sum += triangleRow[pivot]
      elsif pivot >= 0 then

        if triangleRow[pivot] >= triangleRow[pivot+1]
          sum += triangleRow[pivot]
        else
          sum += triangleRow[pivot+1]
          pivot += 1
        end

      end

      row += 1
    end

    return sum
  end

end
# stack is first in last out

class Stack
  $sarray = []

  def add(data)
    $sarray<<data
    return $sarray
  end

  def remove
    if $sarray.size > 0
      $sarray.pop
    else
      $sarray
    end
    return $sarray
  end

end

#queue is first in first out

class Queue
  $qarray = []

  def add(data)
    $qarray<<data
    return $qarray
  end

  def remove
    if $qarray.size > 0
      $qarray.delete_at(0)
    else
      $qarray
    end
    return $qarray
  end
end



st = Stack.new()
st.add(23)
st.add("dfads")
st.add([1,2,3,4])
p $sarray
st.remove
p$sarray
st.remove
p$sarray
st.remove
p$sarray
puts "-------------------------------------------------------------------------"
que = Queue.new()
que.add(23)
que.add("dfads")
que.add([1,2,3,4])
p $qarray
que.remove
p$qarray
que.remove
p$qarray
que.remove
p$qarray

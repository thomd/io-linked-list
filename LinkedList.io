// bidirectional linked list
LinkedList := Object clone do(

  // element of a linked list
  Node := Object clone do(
    item := nil
    prev := nil
    next := nil
  )

  // first element
  head := nil

  // last element
  tail := nil

  // number of nodes
  size := 0

  // transform the linked list to an array list
  asList := method(
    _list := List clone
    _curr := self head
    while(_curr != nil,
      _list append(_curr item)
      _curr = _curr next
    )
    return _list
  )

  // add an item
  add := method(newItem,
    _curr := Node clone
    _curr item = newItem

    // the first node is the head
    if(self head == nil,
      self head = _curr
    )

    // if we have a tail, set next and previous edge
    if(self tail != nil,
      self tail next = _curr
      _curr prev = self tail
    )

    // the new node is the new tail
    self tail = _curr

    // we have one more node
    self size = self size + 1
  )

  //
)


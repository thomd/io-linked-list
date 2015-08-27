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

  // append an item
  append := method(newItem,
    _new := Node clone
    _new item = newItem

    // the first node is the head
    if(self head == nil,
      self head = _new
    )

    // if we have a tail, set next and previous edge
    if(self tail != nil,
      self tail next = _new
      _new prev = self tail
    )

    // the new node is the new tail
    self tail = _new

    // we have one more node
    self size = self size + 1
  )

  // insert an item at a given index
  atInsert := method(position, newItem,
    _new := Node clone
    _new item = newItem

    // find node of the given position
    _curr := self head
    _pos := 0
    while(_pos < position,
      _curr item print
      _curr = _curr next
      _pos = _pos + 1
    )


    /*_new prev = _curr*/
    /*_curr prev next = _new*/
    /*_new next = _curr next*/
    /*_curr next prev = _new*/

  )

)


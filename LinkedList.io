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

  // asList()
  //
  //   transform the linked list to an array list
  //
  asList := method(
    _list := List clone
    _curr := self head
    while(_curr != nil,
      _list append(_curr item)
      _curr = _curr next
    )
    return _list
  )

  // append(item)
  //
  //   append an item at the end of the linked list
  //
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

  // at(position)
  //
  //   return the value at position. Return nil if position is out of bounds
  //
  at := method(position,
    if(position < 0, return nil)
    _curr := self head
    if(_curr == nil, return nil)
    _pos := 0
    while(_pos < position,
      if(_curr next != nil, _curr = _curr next, return nil)
      _pos = _pos + 1
    )
    return _curr
  )

  // atInsert(position, item)
  //
  //   insert an item at a given position. Raise exception if position is out of bounds
  //
  atInsert := method(position, newItem,
    if(position < 0 or position > self size,
      Exception raise("position out of bounds")
    )

    _new := Node clone
    _new item = newItem

    // position = 0
    if(position == 0,
      _new next = self head
      self head = _new
    )

    // position > 0
    if(position > 0,
      _before := self at(position - 1)
      _after := self at(position)
      _new prev = _before
      _new next = _after
      _before next = _new
      if(_after != nil, _after prev = _new)
    )

    // we have one more node
    self size = self size + 1
  )
)


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

  // print elements of a linked list starting with the head
  printForward := method(
    curr := self head
    if(curr != nil,
      while(curr next != nil,
        curr item println
      )
    )
  )

  // add an item
  add := method(newItem,
    curr := Node clone
    curr item = newItem
    if(self head == nil) then(
      self head = curr
    ) else(
      temp := self head

      // find tail
      while(temp next != nil,
        temp = temp next
      )
      temp next = curr
      curr prev = temp
    )

    // the new node is the tail
    self tail = curr

    // we have one more node
    self size = self size + 1
    return curr
  )

  //
)


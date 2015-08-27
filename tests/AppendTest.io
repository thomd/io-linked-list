doRelativeFile("../LinkedList.io")

AppendsTest := UnitTest clone do(

  testEmptyList := method(
    _list := LinkedList clone
    assertEquals(_list size, 0)
    assertNil(_list head)
    assertNil(_list tail)
  )

  testListWithOneNode := method(
    _list := LinkedList clone
    _list append("foo")
    assertEquals(_list size, 1)
    assertNotNil(_list head)
    assertNotNil(_list tail)
    assertEquals(_list head, _list tail)
  )

  testListWithMiltipleNodes := method(
    _list := LinkedList clone
    _list append("foo")
    _list append("bar")
    _list append("baz")
    assertEquals(_list size, 3)
    assertNotNil(_list head)
    assertEquals(_list head item, "foo")
    assertEquals(_list head next item, "bar")
    assertNotNil(_list tail)
    assertEquals(_list tail item, "baz")
    assertEquals(_list tail prev item, "bar")
  )

)

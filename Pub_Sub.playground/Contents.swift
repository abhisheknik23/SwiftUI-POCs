import Combine

func addTwoNumbers(a: Int, b: Int) -> Int {
    return a + b
}

let justPublisher = Just(addTwoNumbers(a: 2, b: 3))

let justSubscriber = Subscribers.Sink<Int, Never> { completion in
    print("completion = \(completion)")
} receiveValue: { value in
    print("ValueFromPublisher = \(value)")
}

justPublisher.print().subscribe(justSubscriber)

class Hoge {
	private var closure: (() -> Void)?
	private var count = 0
	
	init() {
		closure = createClosure()
	}
	
	func createClosure() -> (() -> Void) {
		return { [self] in self.count += 1 }
	}
}
assert = require "assert"

App = new(require "../app.coffee")

describe "Testing CI", () =>
	describe "AppTest class", () =>
		it "should return 1", () =>
			assert.equal 1, App.getNumber()
		it "should return 2", () =>
			assert.equal 2, App.getAnotherNumber()


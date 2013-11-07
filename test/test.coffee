assert = require "assert"

App = new(require "../app.coffee")

describe "Testing CI", () =>
	describe "AppTest class", () =>
		it "should return 1", () =>
			assert.equal 1, App.getNumber()
		it "should return 2", () =>
			assert.equal 2, App.getAnotherNumber()
		it "should return BANANA", () =>
			assert.equal "BANANA", App.getABanana()


user = require "../User.coffee"

describe "Testing Database", () =>
	describe "Populate DB", () =>
		it "should create alex user", (done) =>
			user.sync({force : true}).success(() =>
				user.create({
					name : "Alex Speed"
					email : "alex@luckymonkey.co.uk"
				}).success(() =>
					assert.equal true, true
					done()
				).failure(() =>
					assert.equal true, false
					done()
				)
			)
		it "should find alex user", (done) =>
			user.sync().success(() =>
				user.find({where : {email : "alex@luckymonkey.co.uk"}}).success((u) =>
					assert.equal u.name, "Alex Speed"
					done()
				).failure(() =>
					assert.equal true, false
					done()
				)
			)

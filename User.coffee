seq = require "sequelize"

pg_username = process.env.PG_USER
pg_password = process.env.PG_PASSWORD

connstring = undefined
if process.env.APP_ENV == "test"
	connstring = "postgres://#{pg_username}:#{pg_password}@127.0.0.1/test"
else
	connstring = "postgres://alex:Passw0rd@192.168.1.63/test"

Seq = new seq connstring, { dialect : "postgres", logging : false }

User = Seq.define("user", {
	id : { type : seq.INTEGER, autoIncrement : true }
	name : seq.TEXT
	email : seq.TEXT
})

module.exports = User
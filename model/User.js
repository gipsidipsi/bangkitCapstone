//import mySQl database


const userSchema = new Schema({
	userName: {
		type: String,
		required: true,
	},
	email: {
		type: String,
		required: true,
		unique: true,
	},
	password: {
		type: String,
		required: true,
	},
	roles: {
		type: [String],
		default: ["Admin"],
	},
});

export default User;
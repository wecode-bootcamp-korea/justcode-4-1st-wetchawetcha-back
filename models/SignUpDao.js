const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const getUserByEmail = async email => {
  return await prisma.$queryRaw`
		SELECT id FROM users WHERE email = ${email}
	`;
};ßß

const createUser = async (email, encryptedPW, username) => {
  return await prisma.$queryRaw`
	INSERT INTO users(email, password, name) VALUES (${email}, ${encryptedPW},${username});
	`;
};

module.exports = { getUserByEmail, createUser };

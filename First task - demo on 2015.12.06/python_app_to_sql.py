try:
	import mysql.connector as stupid
	paths = ["create.sql", "insert.sql", "lists_in_python.sql"]
	print("Connecting to database...")
	my_connection = stupid.connect(user="root", password=input('Enter password: '), host="127.0.0.1")
	my_cursor = my_connection.cursor()
	print("Connected.")
	for path in paths:
		print("Reading commands from:\n%s" % path)
		with open(path) as file_obj:
			lines = file_obj.readlines()
			content = " ".join(lines)
			raw_commands = content.split(";")
			clear_commands = (cmd.strip() for cmd in raw_commands)
			print("Commands read.")
			for command in clear_commands:
				try:
					print("Running command:\n%s" % command)
					my_cursor.execute(command)
					answer = my_cursor.fetchall()
					print("Answer:\n", answer)
				except stupid.Error as err:
					print(err)
	print("Commiting changes...")
	my_connection.commit()
	print("Changes committed.\n", "Closing connection...")
	my_cursor.close()
	my_connection.close()
	print("Connection closed.")
except Exception as err:
	print(err)
input("Press enter to continue/quit")

Report pdf file Gowthami-40379728-CSC7062-Report.pdf is in 'report' folder.

Instructions to deploy and run the system:
==========================================

Prerequisites: XAMPP, Nodejs, and VS Code installed on the system.

	1. Extract the Zip file and copy the folders ‘source’, and ‘database’ to DESKTOP.

	2. Open PhpMyAdmin MySQL. Create a new database ‘40379728’. Import the DB file ‘40379728.sql’ from the folder ‘database’. DB file will be imported successfully.

	3. Open two VS Code application instances: Open the 'API' folder from the 'source' folder in one instance and open the 'stacks_of_wax' folder from the 'source' folder in another instance.

	4. Run the following command in the terminal of both application instances to install the express web framework.
		o	npm install express --save

	5. Run the following commands in the terminal of ‘stacks_of_wax’ folder instance: 
		o	npm install ejs --save
		o	npm install express-session --save
		o	npm install cookie-parser --save
		o	npm install express axios --save
		o	npm install connect-flash --save
		o	npm install multer --save
		o	npm install method-override --save
		o	npm install bcrypt --save

	6. Run the following commands in the terminal of ‘API’ folder instance:
		o	npm install mysql --save
		o	npm install dotenv --save

	7. Run the following commands in the terminal of both application instances:
		o	npm install nodemon --save-dev

	8. Run the following commands in the terminal of both application instances to run the website:
		o	npm start

	9. Launch the website with the command http://localhost:3000/ in the browser.

	10. To test the registered user’s functionalities, use either Register or the following account details:
		o	Account1 email: user1@gmail.com , password: user1@WD123
		o	Account2 email: kelly@gmail.com , password: kelly@WD123

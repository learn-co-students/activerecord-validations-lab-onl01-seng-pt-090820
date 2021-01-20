	(1)	Create a new directory in app called validators. Because most Rails developers don't need to write custom validation, this directory is not created by default like models or controllers.
	(2)	Identify the ActiveRecord attribute you want to validate. Is it the email or the last_name on the Person class, for example?
	(3)	Create a new file in the app/validators directory of the form attribute (from the previous step) + _validator.rb. So in the case of validating an attribute called email, create a file app/validators/email_validator.rb
	(4)	Inside the new file, define the class. The class name should match the file name of the file, but "Camel-Cased." So email_validator should be class EmailValidator. The class should inherit from ActiveModel::Validator
	(5)	The validator class must have one instance method, #validate. This method will receive one argument typically called record.
	(6)	Inside of #validate, you'll be able to get properties from record and determine whether it is invalid. If the record is invalid, push (<<) to record.errors[:attribute] e.g. record.errors[:email] a String which is a message that you want to display that describes why the message is not valid.
	(7)	Lastly, in the implementation of the class being validated e.g. Person, add:
	.	An include of ActiveModel::Validations
	.	The helper call: validates_with (className). In our example we'd put, validates_with EmailValidator (see step 4, above)
	(8)		.	Post category is either Fiction or Non-Fiction This step requires an inclusion validator, which was not outlined in the lesson. You'll need to refer to the Rails guide to look up how to use it.

Rails Portfolio Project

Because this is app intended to be used to keep a record of Business's inventory , I opted to adapt the login process to stength my app's security. While multiple users are able to create User instances, the placebo validator will only allow employee initials to vary; a user will have to enter the password (labeled as access_id) and the store_id to gain access to the app or be validated through OmniAuth-github. Also, an email or text confirmation will be sent to User.first every time a person logs in. The form to persit the notes from each interaction  which will be a step required to log out will require an employee's initials (employeeInIt) to distinguish between interactions. A separate email detailing account activies will be sent to User.first upon logout.
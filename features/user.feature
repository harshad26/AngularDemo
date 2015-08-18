Feature: User Listing and Add new User
        

	Scenario: Should be able to create a new user
	Given I am on the new_user page
	When I press "Create User"
	Then I should see "User was successfully created."
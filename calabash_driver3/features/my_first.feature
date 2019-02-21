Feature: Login screen
  Scenario: As a valid user I can log into my app
    * I enter text "89529370112" into field with id "login_et"
    * I enter text "390413" into field with id "password_et"
	* I press view with id "sign_in_button"
	Then I should see "Заказы"
	Then I swipe for left menu
	Then I scroll up
	Then I touch the "Выйти" text
	* I press the "да" button
	Then I clear input field with id "login_et"
	Then I clear input field with id "password_et"

  Scenario: As a user with invalid password I can't log into my app
    * I enter text "89529370112" into field with id "login_et"
    * I enter text "qwerty" into field with id "password_et"
	* I press view with id "sign_in_button"
	Then I should see "Неверный логин или пароль"
	Then I clear input field with id "login_et"
	Then I clear input field with id "password_et"

  Scenario: As an invalid user I can't log into my app
    * I enter text "89999999999" into field with id "login_et"
    * I enter text "qwerty" into field with id "password_et"
	* I press view with id "sign_in_button"
	Then I should see "Неверный логин или пароль"
	Then I clear input field with id "login_et"
	Then I clear input field with id "password_et"

  Scenario: As an invalid user I can't remind password
    * I enter text "89999999999" into field with id "login_et"
	* I touch the "Напомнить пароль" text
	Then I should see "Пользователь не найден"
	Then I clear input field with id "login_et"
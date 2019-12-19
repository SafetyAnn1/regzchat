# REGZCHAT Web Application Project

[RegzCHAT Project Links](#regzchat-project-links)

[Usage Examples](#usage-examples)

- [Login and Subscription Registraion and Stripe Payments ](#login-and-subscription-registraion-and-stripe-payments )

- [How to Test the Chat Feature in RegzCHAT](#how-to-test-the-chat-feature-in-regzchat)

[Ruby Application Gems Used in REGZCHAT](#ruby-application-gems-used-in-regzchat)

[Development / Production Environment Setup](#development-and-production-environment-setup)

[Next Steps](#next-steps)


## Project Summary

**RegzCHAT is a web application designed to offer an interface between safety professionals to network with one another.  It is a small part of the RegzHUB umbrella of services for the Safety Professional.**

The goal of this project was to fufill the requirments of the **UT Coding Bootcamp Solo Project** (in lieu of the Agile team project).  This is the final assignment for graduation and is meant to meet the following criteria:

- Mentor approval of the overall project plan
- Functional Ruby on Rails application
- Incorporates at least one external API
- Deployed to Heroku

## RegzCHAT Project Links
| Source | Link |
| ------ | ------ |
| Heroku | https://regzchat-ameier.herokuapp.com/ |
| GitHub | https://github.com/SafetyAnn1/regzchat |

[Top](#regzchat-web-application-project)
## Usage Examples

## Login and Subscription Registraion and Stripe Payments 
1. Open web application in a normal browser window 
2. As a first time visitor you will need to **Register**.  Once registered you will be taken to the **Pay Subscription** button where you can pay via the Stripe API.  You do not have to pay at this time, but note you will NOT be given a **CHAT** button until you submit your payment with Stripe.
3. Once paid the **CHAT** buttons are enabled and you will have access to create, edit or delete chatrooms. You have the option to login (if existing account) and **CHAT** ONLY if you have paid for the subscription.

![ResizeScreen](https://user-images.githubusercontent.com/52673792/71102580-5d1d0400-217e-11ea-829d-cae1d398fa28.gif)
|:---:|
| **Responsive Design** |

| ![LoginHasAccount](https://user-images.githubusercontent.com/52673792/71105816-c5baaf80-2183-11ea-8d1b-ade32c48ce81.gif)  | ![UpdateProfile](https://user-images.githubusercontent.com/52673792/71106136-66a96a80-2184-11ea-8021-a161df773df0.gif) |
|:---:|:---:|
| **Login with Account** | **Updating User Profile Dashboard** | 

| ![RegisterToPayment](https://user-images.githubusercontent.com/52673792/71107474-bee16c00-2186-11ea-8ae9-45332213d659.gif)  | ![StripePaymtSubscribed](https://user-images.githubusercontent.com/52673792/71107760-5ba40980-2187-11ea-8959-204dbe8461e4.gif) |
|:---:|:---:|
| **Register User Redirect To Payment** | **Stripe Payment to Subscribe User** | 

[Top](#regzchat-web-application-project)
## How to Test the Chat Feature in RegzCHAT

1. Open web application in a normal browser window and Log In as **User A** (make sure you have registed and paid)
2. Open an addition browser window incognito and Log In as **User B** (make sure you have registed and paid)
3. Go to the same room in each browser
4. Type a message and press send.  Watch the message pop-up real time as each user types a message.

!![ChatRoomDemo](https://user-images.githubusercontent.com/52673792/71127225-468fa080-21b0-11ea-9d10-b2aa70ba7527.gif)
|:---:|
| **User A and User B Chatting - Demonstration of Action Cable and Web Sockets** |

| ![CreateEditRoom](https://user-images.githubusercontent.com/52673792/71128174-3c6ea180-21b2-11ea-8739-0ab2cf502f97.gif)  | ![deletingRoom](https://user-images.githubusercontent.com/52673792/71128207-53ad8f00-21b2-11ea-81da-b4e01e4b8374.gif) |
|:---:|:---:|
| **Create and Edit a Room** | **Deleting a Room** | 


[Top](#regzchat-web-application-project)
## Ruby Application Gems Used in REGZCHAT

| Gems Used | Version |  Gem Purpose |
| ------ | ------ | ------ |
| Rails | 5.2.3 | System |
| Rspec-Rails | 3.5 |  Testing and Development |
| Jquery-Rails | Current | Jquery Library |
| Bootstrap | 4.0.0.alpha6 | Bootstrap Library (Styling) |
| Simple Form | Current | Forms used with Devise |
| Font-Awesome Rails | Current | Icons Library |
| Devise | Current | Rails authentication for Users |
| Redis | Current | Used as a database, cache and message broker for ActionCable |
| ActionCable | Current | Integrates WebSockets with REGZCHAT application |
| Stripe | Current | Payment Processing API |
| Figaro| Current | Securely configures Rails API Keys |


## Development and Production Environment Setup

- Sublime 3 Text Editor
- Vagrant Box Virtual Machine
- Running Ruby on Rails
- Redis
- Database Management - PostgresSQL
- Heroku
- GitHub


# Next Steps

This web application was developed to demonstrate basic techniques and sound practices, as well as a tool for continued success in web application development. Next steps taken will be integrating this application to my other services; **Regzpert, RegzGRAM, RegzVID, RegzToDo** by creating Micro Services where all apps will share a common login and payment system.

[Top](#regzchat-web-application-project)


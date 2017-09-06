Welcome to ContactStartupCorp, Inc.! It’s your first day as a new developer on the team, and your first task is to finish an already in-progress contact manager project.  The developer who was working on it just left for 3 months of maternity leave, so you’ve been hired to finish it.  The Product team needs this project done by the end of the day to allow Sales to prepare for a demo to a lucrative new prospect they are presenting to next week.  The Design team is finalizing a new product color scheme at the same time, a color scheme designed to impress this new prospect.

Your dev manager is a strong proponent of code quality and tests, so you’re looking to meet his standards, and your project manager has given you the go-ahead to focus 100% on this project and ignore everything else until it’s done.  With much excitement and exhilaration to show your coding prowess, you open the link to the GitHub repo, fork it, and set up the app on your local machine.

Your dev manager likes frequent commits, so you plan to commit each step of the product spec individually and clearly label each commit with the corresponding step.  

---

When you open the product spec, you see the following:

- [x] 1. Our customers would like a faster way of emailing their clients instead of copying and pasting the email address into their email program.  Please link the email address on the contact list view page to open your local email client with a subject of “Hello \<name of contact\>”.

- [x] 2. Whenever someone adds a contact, currently it doesn’t check that the email address is in a valid format.  This is causing some problems with ContactStartupCorp’s mail servers since somebody put their contact’s birthday in that field last week and it crashed our mail server for four hours during the busy time of the day.  Please make sure that the contact’s email address is in a valid format before it is saved into our databases.

- [x] 3.  Due to the nature of our highly mysterious business, we only allow contacts who have US phone numbers, so please change the form to require a phone format of either 7 or 10 digits with appropriate dashes. Add placeholder of ###-###-####, using client side form validation.

- [x] 4. Whenever you load the app the first time, the Home link in the top navigation bar isn’t highlighted until you click on it.  Please correct that so Home is always highlighted when the app first loads.

- [x] 5. The Design team just finalized our new color scheme a few minutes before you started this project.  The new primary button color is #4a76cd and the new header bar color is #c8d6f2.  Please update the app to use these new colors.

- [x] 6. Our customers often request that they’d like to be able to sort by the different fields on the list view, and this is particularly important to that big prospect demo.  Please add the ability to sort the list page by any column shown. Whenever a person visits the list tab again, it should retain the sort order they used the last time.

- [x] 7.  Some of our customers have thousands of contacts, and the page is really slow to load since the contacts currently load all at once. Please add pagination to the list page, showing 20 contacts per page.

- [x] 8.  To help our customers better visualize their contacts, they would like to see a photo of each contact for those that have photos available.  Using [gravatar's API](https://en.gravatar.com/site/implement/), please add the contact's avatar as a column on the list of contacts.  This does not need to be a sortable column.

- [x] 9.  Legal just let us know that we need to add a copyright footer at the bottom of every page saying “© Copyright (current year) ContactStartupCorp, Inc.  UltraContactManager® is a registered trademark of ContactStartupCorp, Inc.”

- [x] 10.  Our big prospect tells us they like to recognize their contacts’ birthdays.  Please add a birthday field to the contact record, and make it easy for the user to enter a date by utilizing a date picker.  The birthday does not need to be added to the list view, however.

- [x] 11. In our hurry to ship the first version of this app, we overlooked deleting contacts.  On the main contacts list page, please create a way to delete each contact.

- [x] 12. Our user research team shows that page reloads are disruptive to the workflow of the people using the contact manager.  To help improve our customers’ productivity, whenever someone clicks on a contact, it should open a panel below the contact that shows more detailed information for the selected contact. Please cache the ajax response if possible to make subsequent viewing of the contact panel faster. There should also be a way to close the panel when opened.

- [x] 13.  On the detail view panel for a contact, add an 'Edit' button.  When this button is clicked, allow all of the contact fields to be edited and saved.

- [x] 14. To help our customers better recall the context of their last conversation with each contact, please add a new Note field to each contact. When adding or editing a contact, please allow the user to enter notes about the contact in a text area. These notes should be shown when viewing a single contact panel.

- [x] 15. Our big prospect also really needs multiple phone numbers to be stored on a single contact record. Instead of having a single phone number for each contact, please allow multiple, unlimited numbers of phone numbers to be assigned to a contact, with one number designated as the primary number. Each phone number should allow selection of one of the following types: Home, Work, Mobile or Fax.  Each phone number should also be required to be either in 7 or 10 digit format and formatted like the existing phone number.

----

With your final commit securely submitted to GitHub, you feel energized with accomplishment as you submit a pull request and ping your teammates for a code review.  Congratulations on a productive first day at ContactStartupCorp, Inc.!

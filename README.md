# User authentication application - Library 

This is a basic representation of a library system. The application shows all books currently in the database of the library.

Users are able to search and sort through the books and admins have the ability to perfom CRUD operations on the books.

<span style="color:Red"> ***! Important Information !*** </span>
1. To Register as an admin please use the admin registarttion page by changing the address in the url to /adminregister.php

2. Add the authour into the system before adding a book beloning to them. You only need to add the author once then you can add as many books that belongs to them.

## 1. Login & Registration

Upon open the aplication url you will be greated by the Login section.

![image](/images/Project%20images/Obey%20Login.png)

### 1.1 Login 

- If you already have an account just fill in your details and you will be redirected to the dashboard.

### 1.2 Registration
- If you do not have an account click on where it says [register here](/register.php) the link to take you to the registration page.

![image](/images/Project%20images/edited/show%20registration.png)

- <span style="color:Red"> ***! Important reminder !:*** </span> Remeber to register as an admin you need to user [admin's registration page](/adminregister.php) 

- If your registration is successful, you will see a message at the bottom of the form that will read <span style="color:green">"Registration successful"</span>. From here you can return to the login page and login. (see 1.1)

![image](/images/Project%20images/edited/registration%20successful%20message.png)

## 2. Dashboard

If your login was successful you should be on the dashboard.

### 2.1 Member Dashboard

Users with the **"member"** role will have a dashboard that looks like this.

![image](/images/Project%20images/user%20dashboard%20-%20books.png)

Member dashboard has a simple interface that has a search function and sort options.

- The search bar looks for booknames and genres.
- You can sort the information by bookname or by genre in either ascending or descening order.
- You can also sort the information based on your search results.
- To show the whole entire database table again just erase the search input and click the search button again.
- When you are done you can simply hit the log out button and will be redirected back to the login page.

### 2.2 Librarian / Admin Dashboard

The **"Librarian / Admin"** dashboard looks like this. It has a few more options compared to the **"member"** dashboard.

![image](/images/Project%20images/admin%20dashborad%20-%20books.png)

- ### 2.2.1 Edit & Delete
- **2.2.1.1 Edit**

    - Each table item has its own *Edit* option which will take you to the edit page of that particular item.
    - The pages will look like this.
    ![image](/images/Project%20images/Edit%20Book.png)
    - on a successful update you will see a message like this:
    ![image](/images/Project%20images/edited/successful%20edit.png)
    - You can can now press the back button to return to the dashboard.
    
- **2.2.1.2 Delete**

    - Each table item has its own *Delete* option which will take you to the delete page of that particular item.
    - The pages will look like this.
    ![image](/images/Project%20images/Delete%20Books.png)
    - Before deleting a record you will see a warning message. Remember there is no way to recover information once it has been deleted. So be make sure you are deleting the right record.
    - once you have deleted a book you will see this message "Record permanantly deleted".
    ![image](/images/Project%20images/edited/successful%20delete.png)
    - You can can now press the back button to return to the dashboard.
  
- ### 2.2.2 Actions
    When you click on the actions button at the top right of the screen you will get an side menu that has more CRUD options to to with books and authours

    - Actions button 
    ![iamage](/images/Project%20images/edited/actions%20button.png)

    - CRUD Actions side menu
    ![image](/images/Project%20images/Actions.png)

    - **2.2.2.1 Book actions**

    While on the books table dashboard you will see only the "add new book" option in the menu and when you are on the authours table dashboard you will see the option to return to the books table. These option will show when you click the "Books" dropdown option.

    - The ***"add new book"*** option will take you to a page where you can add a new book entry to the database. <span style="color:Red"> ***! Important reminder !***: *remeber to add the auther of the book first if they are not already in the database*. </span>
    - The ***"Books Table"*** option will only appear when you are on the authors table. It will return you the the books table dashboard.

 - **2.2.2.1 Author actions**

    While on the Authors table dashboard you will see only the "add new author" option in the menu and when you are on the books table dashboard you will see the option to go to the Authors table. These option will show when you click the "Authors" dropdown option.

    - The ***"add new Author"*** option will take you to a page where you can add a new author entry to the database.
    - The ***"Authors Table"*** option will only appear when you are on the Books table. It will take you the the Author table dashboard.
     




***

## Topic : Admission committee
The university has a system for applying for studies at a particular faculty. The administrator registers applicants to the selected faculty. The system allows you to make everyone in a single base for choosing the best for admission.

## Vision
Create a web-application for working with applicants and assigning them a faculty in the system. The application must implement the next functions:
* view the list of faculties and edit them;
* show all applicants in system;
* view the list of faculties and the number of applicants in each of them.

## 1 Faculties

#### 1.1. View list faculties

This mode programm is intended for view list programm and number of applicants which have the faculty. Main screenplay:
* change item menu "Faculty";
* view form with list all faculty. 

![alt text](./admission-committee/src/main/resources/image/faculty/faculty_list.png)

Figure 1.1 - List faculty

Form consist two columns:
* name faculty;
* number of applicants.
 
#### 1.2 Add new faculty
##### Main screenplay:
* stand in view mode of list faculty and press button "Add";
* view form of add new faculty;
* input data and press button "Save";
* if the data is entered with a mistake, you can reset by pressing the button "Reset";
* if data is not correct, show warning "Data is not correct";
* if data correct, faculty is added in database;
* if error create when saving data output message about error "Error saving data";
* if input new  faculty already exist in database, that show list form with data, but new faculty don't save in database;
* if faculty add successfully then open list faculty form with all information.  

##### Script cancel change:
* stand in view mode by list faculty and press button "Add";
* show form to add new faculty;
* enter data and press button "Return";
* data don't save in database and open list faculty form with all information. 

![alt text](./admission-committee/src/main/resources/image/faculty/add_faculty.png)

Figure 1.2 - Add faculty

The form of input data consist:
* buttons "Return", "Save" and "Reset";
* input data which must have new faculty.

#### 1.3 Edit new faculty
##### Main screenplay:
* stand in view mode of list faculty and press button "Edit";
* show edit form;
* change data and press button "Save";
* if the data is entered with a mistake, you can reset by pressing the button "Reset";
* if data is not correct, show warning "Data is not correct";
* if data correct, data update in database;
* if error saving data, output message about error "Error saving data";
* if input new  faculty already exist in database, that show list form with data, but new faculty don't save in database;
* if faculty update successfully then open list faculty form with all updating information.  

##### Script cancel change:
* stand in view mode by list faculty and press button "Change";
* show edit form;
* enter data and press button "Return";
* data don't save in database and open list faculty form with all information. 

![alt text](./admission-committee/src/main/resources/image/faculty/edit_faculty.png)

Figure 1.3 - Edit faculty

When edit to input data:
* input data by faculty.

Limitation by validation:
* faculty - size don't more 30 symbol and name is originality in database.  

#### 1.4 Delete faculty
##### Main screenplay:
* stand in view mode of list faculty and press button "Delete";
* There is control to delete faculty, is used faculty in some applicant;
* if faculty used, the dialog window show message "This faculty don't delete, because connection between faculty and applicant";
* if faculty can delete, show dialog ti delete "Delete faculty?" with confim;
* press button "Delete";
* deleting faculty in database; 
* if error deleting data, output message about error "Error deleting data";
* if faculty delete successfully then open list faculty form with all updating information.  
 
##### Script cancel change:
* stand in view mode of list faculty and press button "Delete" in choose line;
* how dialog to deleting "Delete faculty "economic?"
* press button "Cancel";
* open view form for list faculty with updates. 


![alt text](./admission-committee/src/main/resources/image/faculty/faculty_dialog.png)

Figure 1.4 - Confirm delete faculty

## 2 Applicants

This mode is intended for show applicant's list.
##### Main screenplay:
* view the list of applicants and edit them.
* show all applicants in system.
 
 
#### 2.1. View list applicants

![alt text](./admission-committee/src/main/resources/image/applicant/applicant_list.png)

Figure 2.1 - List applicants

Form consist three columns:
* name faculty;
* name applicant;
* mark;
* date to feed documents.
 

####Filter
This component is intended to show list applicants, who feed documents in special period.  
* if no data in field, list show all applicants;
* if no first date, then filter last date only;
* if no last date, then filter first date only;
* the first date is more then last date;
* new information is showed only press button "Update".


#### 2.2. Add new faculty
* stand in view mode of list applicants and press button "Add";
* view form of add new applicant;
* input data and press button "Save";
* if the data is entered with a mistake, can reset by pressing the button "Reset";
* if data is not correct, show warning "Data is not correct";
* if data correct, applicant is added in database;
* if error create when saving data output message about error "Error saving data";
* if applicant add successfully then open list applicants form with all information.  

##### Script cancel change:
* stand in view mode by list applicant and press button "Add";
* show form to add new applicant;
* enter data and press button "Return";
* choose faculty from list. If no one faculty, cannot create applicant;
* data don't save in database and open list applicant form with all information.

![alt text](./admission-committee/src/main/resources/image/applicant/add_applicant.png)

Figure 2.2 - Add applicant

The form of input data consist:
* buttons "Return", "Save" and "Reset";
* input data which must have new applicant;
* field of choose faculty.

#### 2.3 Edit applicant
* stand in view mode of list applicants and press button "Edit";
* show edit form;
* change data and press button "Save";
* if the data is entered with a mistake, you can reset by pressing the button "Reset";
* if data is not correct, show warning "Data is not correct";
* if data correct, data update in database;
* if error saving data, output message about error "Error saving data";
* if applicant update successfully then open list applicant's form with all updating information.  

##### Script cancel change:
* stand in view mode by list applicants and press button "Change";
* show edit form;
* enter data and press button "Return";
* data don't save in database and open list applicants form with all information.

![alt text](./admission-committee/src/main/resources/image/applicant/edit_applicant.png)

Figure 2.3 - Edit applicant

When edit to input data:
* input data by name applicant;
* input data by sername applicant;
* input data by mark;
* choose faculty.

Limitation by validation:
* name applicant - size don't more 30 symbol;
* sername applicant - size don't more 30 symbol and name is originality in database;
* mark - size don't more 3 symbol and only number value;
* added data - system data by only read. Create automatically;
* choose faculty from list.
 
 
#### 2.4 Delete faculty
##### Main screenplay:
* stand in view mode of list applicant and press button "Delete";
* show dialog window which have message "Delete this applicant <name applicant>"?;
* press button "OK";
* press button "Delete";
* deleting faculty in database; 
* if error deleting data, output message about error "Error deleting data";
* if applicant delete successfully then open list applicants form with all updating information.  
 
##### Script cancel change:
* stand in view mode of list applicant and press button "Delete" in choose line;
* show dialog to deleting "Delete applicant "Delete this applicant <name applicant>?";
* press button "Cancel";
* open view form for list applicant with updates. 

![alt text](./admission-committee/src/main/resources/image/applicant/applicant_dialog.png)

Figure 2.4 - Confirm delete applicant
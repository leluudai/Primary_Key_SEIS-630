/* This command runs using the currently logged in user. The file assumes that you have already connected to Oracle using SYSTEM/Password on your personal machine or SU/SuperUser_S1 if you are using OSS machines. */

/* Edit XYZ anywhere in this file to indicate your username and choose a PASSWORD for this user. Needs to be at least 8 places. Do not include $ and/or @ symbols */

/* If, after running this script, you get this error:
	'invalid common user or role name
	Cause: An attempt was made to create a common user 
	or role with a name that was not valid for common 
	users or roles.'
	... then run the following line of SQL code and try again:
alter session set "_ORACLE_SCRIPT"=true;
*/

create user XYZ profile default
identified by XYZpassword
default tablespace users
temporary tablespace temp
quota unlimited on users
account unlock;

commit;

GRANT connect, resource to XYZ;
GRANT create view to XYZ;

drop user amazonoracle




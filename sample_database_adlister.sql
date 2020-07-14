# For a given ad, what is the email address of the user that created it?

select ads from users
where email = 'created_user';

# Users create ads with a title and description and category.

select ads from users


# Write your MySQL query statement below
DELETE duplicate_person

FROM Person duplicate_person,
     Person original_person

WHERE duplicate_person.email = original_person.email

AND duplicate_person.id > original_person.id;
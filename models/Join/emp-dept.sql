{{ config(materialized = 'table' )}}

WITH Employee as (
    Select * from {{source('join','emp')}}
),
department as (
    Select * from {{source('join', 'dept')}}
)
Select 
    e.Employee_id,
    e.First_name || ' ' || e.last_name as Full_name,
    e.email,
    e.department_id,
    d.department_name,
    e.salary,
    {{get_salary_description(salary)}} as Levels
    
from Employee e
Join department d
on e.department_id = d.department_id

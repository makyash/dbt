{% macro get_salary_description(salary) -%}

    Case 
        when SALARY between 0 and 10000 then 'Level 1'
        when SALARY between 10001 and 15000 then 'Level 2'
        when SALARY between 15001 and 20000 then 'Level 3'
        Else 'Level 4'
    end


{%- endmacro %}
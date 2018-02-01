select employee_id, last_name, salary, &&col_name
from employees
order by &col_name;
/
undefine col_name

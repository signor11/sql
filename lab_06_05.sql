SELECT w.last_name "Employee", w.employee_id "Emp#", m.last_name "Manager",
          m.employee_id "Mgr#"
   FROM employees w join employees m
   ON (w.manager_id = m.employee_id)
/

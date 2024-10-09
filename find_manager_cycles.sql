SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    e.manager_id,
    CONCAT(m.first_name, ' ', m.last_name) AS manager_name
  from EMPLOYEE e LEFT JOIN EMPLOYEE m
  ON e.manager_id = m.employee_id;
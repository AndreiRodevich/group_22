 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
 select e.employee_name, s.monthly_salary 
 from employee_salary es 
 join employees e on es.employee_id = e.id
 join salary s on es.salary_id = s.id ;

 2. Вывести всех работников у которых ЗП меньше 2000.
 
 select e.employee_name 
 from employee_salary es 
 join employees e on es.employee_id = e.id
 join salary s on es.salary_id = s.id
 where s.monthly_salary < 2000;

 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select es.salary_id
 from employee_salary es 
 left outer join employees e on es.employee_id = e.id 
 where e.employee_name is null ;

 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select s.id
 from employee_salary es 
 left outer join employees e on es.employee_id = e.id 
 left outer join salary s on s.id = e.id
 where e.employee_name is null and s.monthly_salary < 2000 ;

 5. Найти всех работников кому не начислена ЗП.
 select e.employee_name
 from employee_salary es
 join employees e on e.id = es.salary_id
 left outer join salary s on es.salary_id = s.id
 where s.monthly_salary is null ;

 6. Вывести всех работников с названиями их должности.
 select e.employee_name, r.role_name
 from roles_employee re
 left outer join roles r on re.role_id = r.id
 left outer join employees e on re.employee_id = e.id ;

 7. Вывести имена и должность только Java разработчиков.
 select e.employee_name, r.role_name
 from roles_employee re
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 where r.role_name like '%Java%' ; 
  
 8. Вывести имена и должность только Python разработчиков.
 
 select e.employee_name, r.role_name
 from roles_employee re
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 where r.role_name like '%Python%' ;

 9. Вывести имена и должность всех QA инженеров. QA engineer
 
 select e.employee_name, r.role_name
 from roles_employee re
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 where r.role_name like '%QA engineer%' ;

 10. Вывести имена и должность ручных QA инженеров. Manual QA engineer
 
 select e.employee_name, r.role_name
 from roles_employee re
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 where r.role_name like '%Manual QA engineer%' ;

 11. Вывести имена и должность автоматизаторов QA Automation QA engineer
 
 select e.employee_name, r.role_name
 from roles_employee re
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 where r.role_name like '%Automation QA engineer%' ;

 12. Вывести имена и зарплаты Junior специалистов
 
 select e.employee_name, s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Junior%' ;
 
 13. Вывести имена и зарплаты Middle специалистов
 
 select e.employee_name, s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Middle%' ;

 14. Вывести имена и зарплаты Senior специалистов
 
 select e.employee_name, s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Senior%' ;
 
 15. Вывести зарплаты Java разработчиков
 
 select s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Java%' ;
 
 16. Вывести зарплаты Python разработчиков
 
 select s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Python%' ;

 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select e.employee_name, s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Junior Python%' ;
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
 select e.employee_name, s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Middle JavaScript%' ;
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 select e.employee_name, s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 join employees e on re.employee_id = e.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Senior Java%' ;
 
 20. Вывести зарплаты Junior QA инженеров
 select s.monthly_salary 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Junior Manual QA%' or r.role_name like '%Junior Automation QA%' ;
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
 select AVG(s.monthly_salary) 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%Junior%' ;
 
 22. Вывести сумму зарплат JS разработчиков
 
 select SUM(s.monthly_salary) 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%JavaScript%' ;

 23. Вывести минимальную ЗП QA инженеров
 
 select MIN(s.monthly_salary) 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%QA%' ;

 24. Вывести максимальную ЗП QA инженеров
 
 select MAX(s.monthly_salary) 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%QA%' ;
 
 25. Вывести количество QA инженеров
 
 select COUNT(r.id) 
 from roles_employee re
 join roles r on re.role_id = r.id
 where r.role_name like '%QA%';
 
 26. Вывести количество Middle специалистов.
 
 select COUNT(r.id) 
 from roles_employee re
 join roles r on re.role_id = r.id
 where r.role_name like '%QA%';

 27. Вывести количество разработчиков
 
 select COUNT(r.id) 
 from roles_employee re
 join roles r on re.role_id = r.id
 where r.role_name like '%developer%';
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select SUM(s.monthly_salary) 
 from roles_employee re
 join employee_salary es on es.id = re.id
 join roles r on re.role_id = r.id
 left outer join salary s on es.salary_id = s.id 
 where r.role_name like '%developer%' ;

 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
select e.employee_name, r.role_name, s.monthly_salary
from employee_salary es 
left outer join roles_employee re on re.id = es.id
left outer join employees e on e.id = es.id 
left outer join roles r on re.id = r.id
left outer join salary s on es.id = s.id
order by s.monthly_salary asc ;
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
select e.employee_name, r.role_name, s.monthly_salary
from employee_salary es 
left outer join roles_employee re on re.id = es.id
left outer join employees e on e.id = es.id 
left outer join roles r on re.id = r.id
left outer join salary s on es.id = s.id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc ;
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
select e.employee_name, r.role_name, s.monthly_salary
from employee_salary es 
left outer join roles_employee re on re.id = es.id
left outer join employees e on e.id = es.id 
left outer join roles r on re.id = r.id
left outer join salary s on es.id = s.id
where s.monthly_salary < 2300
order by s.monthly_salary asc ;
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 
select e.employee_name, r.role_name, s.monthly_salary
from employee_salary es 
left outer join roles_employee re on re.id = es.id
left outer join employees e on e.id = es.id 
left outer join roles r on re.id = r.id
left outer join salary s on es.id = s.id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary asc ;


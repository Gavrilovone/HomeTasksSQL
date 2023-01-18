/*�������� ������� ������ 4*/

/*1. �������� ������ ���� �����������, � ������� ����� ����� ������ 10 ����.*/
select * from employees WHERE first_name LIKE '__________%';

/*2. �������� ������ ���� �����������, �������� ������� ������ 1000.*/
SELECT * FROM employees where MOD(salary, 1000)=0;

/*3. �������� ���������� ����� � ������ 3� ������� ����� ����������� 
������ ����������, ���� ��� ����� ����������� � ������� ���.���.���� */
select phone_number,SUBSTR(phone_number,1,3) from employees
where LENGTH(phone_number)= 12;

/*4. �������� ������ ���� �����������, � ������� ��������� ����� � ����� 
����� 'm' � ����� ����� ������ 5��.*/
select * FROM employees where length(first_name) > 5 and substr(first_name, -1, 1) = 'm';

/*5. �������� ���� ��������� �������.*/
select next_day('17.01.23', '�������') from dual;

/*6. �������� ������ ���� �����������, ������� �������� � �������� 
������ 12 ��� � 6�� ������� (150 �������).*/
SELECT * FROM job_history where MONTHS_BETWEEN(end_date,start_date)>150; 

/*7. �������� ���������� �����, ������� � �������� PHONE_NUMBER ��� '.' �� '-'.*/
select  REPLACE(phone_number, '.','-') from employees;

/*8. �������� ���, email, job_id ��� ���� ���������� � �������: STEVEN sking Ad_Pres*/
select UPPER(first_name), lower(email), initcap(job_id) from employees;

/*9. �������� ���������� � ����� ��������� � ��� �/�, �� ��������� 
������ || , � ����� ����: Steven24000 */
select CONCAT(first_name, salary) from employees;

/*10.�������� ���������� � ���� ����� ���������� �� ������, ���������� ����
����� �� ������ �� ������ � ������ ��� ���� ����� �� ������*/
select hire_date, ROUND(hire_date, 'MM' ) from employees;

/*11.�������� ���������� � ����� � ������� ���� ����������. ��� ������ ��������
�� 10 �������� � ���� ����� ����� ������ 10, �� ���������� �� 10 �������� 
������ $. ������� ������ �������� �� 15 �������� � ���� ����� ������� ������ 15,
�� ����� ��������  ������� ������� ������ ! ������� ����������.*/
select RPAD(first_name, 10, '$'), LPAD(last_name, 15, '!') from employees ;

/*12.�������� ��� ���������� � ������� ������ ����� �a� � ��� �����.*/
select first_name, INSTR(first_name, 'a', 1, 2) from employees;

/*13.�������� �� ����� ����� '!!!HELLO!! MY FRIEND!!!!!!!!' � ��� �� �����, �� 
��� ������� ��������������� ���� � ������ � ����� ������.*/
select REPLACE('!!!!Hello!!! MY Friend!!!!!!', '!') from dual;

/*14.�������� ���������� �:
- �/� ���������,
- �/� ���������� �� ����������� 3.1415 ,
- ���������� �� ������ �������� ������� ����������� �/�-��, 
- ����� ���������� ����� �� ����������� �/�.*/
select salary, salary*3.1415, ROUND(salary*3.1415), ROUND(salary*3.1415, -3) from employees;

/*15.�������� ���������� �:
- ���� ����� ���������� �� ������,
- ����, ������� ���� ����� ��� ����, ����� �������� ���������� ��  ������,
- ���� ���������� ��� � ������ �������� ���������� �� ������.*/
select hire_date, ADD_MONTHS(hire_date,6) from employees;






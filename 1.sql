INSERT INTO 
employees (employee_id, name, department, salary, hire_date)
VALUES 
(1, '佐藤 太郎', '営業', 350000, '2020-04-01'),
(2, '鈴木 花子', '開発', 420000, '2019-07-15'),
(3, '田中 一郎', '開発', 390000, '2021-01-10'),
(4, '高橋 健', '営業', 300000, '2022-05-20'),
(5, '伊藤 美咲', '経理', 280000, '2021-09-01');

SELECT name, salary
FROM employees

SELECT AVG(salary),department
FROM employees
GROUP BY department
HAVING AVG(salary) >= 350000;

SELECT name,hire_date
FROM employees
WHERE hire_date >= '2021-01-01'

問題4（ORDER BY）
給与が高い順に社員の名前と給与を表示してください。
出力カラム：name, salary
SELECT name,salary
FROM employees
ORDER BY salary DESC;

問題5（LIKE 検索）
名前に「田」が含まれている社員の name と department を取得してください。
SELECT name , department
FROM employees
WHERE name LIKE '%田%';

問題6（副問い合わせ）
社員全体の平均給与より高い給与をもらっている社員の name と salary を表示してください。
SELECT name , salary
FROM employees
WHERE salary > (
        SELECT AVG(salary) 
        FROM employees
);

問題7
「開発部（department_id = 2） の平均給与より高い給与をもらっている社員の name と salary」を取得してください。
SELECT name , salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees WHERE department = '開発');


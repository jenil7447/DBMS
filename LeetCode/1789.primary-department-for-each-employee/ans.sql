-- Rule A (Multiple Departments): If an employee belongs to multiple departments, we only want the row where primary_flag = 'Y'.

-- Rule B (Single Department): If an employee belongs to exactly one department, we want that row, even though its primary_flag is 'N'.

-- Method 1: The "Divide and Conquer" Approach (UNION)
SELECT employee_id,department_id
FROM Employee
WHERE primary_flag = 'Y'
UNION
SELECT employee_id,department_id
FROM Employee
GROUP BY employee_id
HAVING COUNT(department_id) = 1

-- Method 2: The "Filter by Condition" Approach (OR)
SELECT employee_id,department_id
FROM Employee
WHERE primary_flag = 'Y'
OR employee_id IN (
    SELECT employee_id
    FROM Employee
    GROUP BY employee_id
    HAVING COUNT(department_id) =1
)
-- Method 3: The "Window Function" Approach (Advanced & Elegant)
WITH RankedEmployee AS (
    SELECT employee_id,department_id,primary_flag,
    COUNT(*) OVER(PARTITION BY employee_id) AS department_count
    FROM Employee
)
SELECT employee_id,department_id
FROM RankedEmployee 
WHERE primary_flag = 'Y' OR department_count = 1;

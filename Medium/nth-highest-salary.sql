CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN

        DECLARE result INT ;
        DECLARE offset_val INT ;
        set offset_val = N - 1;
        SELECT distinct salary from Employee order by salary desc limit 1 offset offset_val into result;
        return result;

END
-- Schema: CREATE TABLE "difference-of-squares" ("number" INT, "property" TEXT, "result" INT);
-- Task: update the difference-of-squares table and set the result based on the number and property fields.
UPDATE "difference-of-squares"
SET result = 
    CASE property
        WHEN 'squareOfSum' THEN POWER((number * (number + 1)) / 2, 2)
        WHEN 'sumOfSquares' THEN (number * (number + 1) * (2 * number + 1)) / 6
        WHEN 'differenceOfSquares' THEN 
            POWER((number * (number + 1)) / 2, 2) - 
            (number * (number + 1) * (2 * number + 1)) / 6
    END;

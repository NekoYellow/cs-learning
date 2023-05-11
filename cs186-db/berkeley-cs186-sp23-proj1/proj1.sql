-- Before running drop any existing views
DROP VIEW IF EXISTS q0;
DROP VIEW IF EXISTS q1i;
DROP VIEW IF EXISTS q1ii;
DROP VIEW IF EXISTS q1iii;
DROP VIEW IF EXISTS q1iv;
DROP VIEW IF EXISTS q2i;
DROP VIEW IF EXISTS q2ii;
DROP VIEW IF EXISTS q2iii;
DROP VIEW IF EXISTS q3i;
DROP VIEW IF EXISTS q3ii;
DROP VIEW IF EXISTS q3iii;
DROP VIEW IF EXISTS q4i;
DROP VIEW IF EXISTS q4ii;
DROP VIEW IF EXISTS q4iii;
DROP VIEW IF EXISTS q4iv;
DROP VIEW IF EXISTS q4v;

-- Question 0
CREATE VIEW q0(era)
AS
  SELECT MAX(era) FROM pitching
;

-- Question 1i
CREATE VIEW q1i(namefirst, namelast, birthyear)
AS
  SELECT namefirst, namelast, birthyear
  FROM people
  WHERE weight > 300
;

-- Question 1ii
CREATE VIEW q1ii(namefirst, namelast, birthyear)
AS
  SELECT namefirst, namelast, birthyear
  FROM people
  WHERE namefirst LIKE '% %' -- instr(namefirst, ' ') > 0
  ORDER BY namefirst, namelast
;

-- Question 1iii
CREATE VIEW q1iii(birthyear, avgheight, count)
AS
  SELECT birthyear, AVG(height), COUNT(*)
  FROM people
  GROUP BY birthyear
  ORDER BY birthyear
;

-- Question 1iv
CREATE VIEW q1iv(birthyear, avgheight, count)
AS
  SELECT birthyear, AVG(height), COUNT(*)
  FROM people
  GROUP BY birthyear
  HAVING AVG(height) > 70
  ORDER BY birthyear
;

-- Question 2i
CREATE VIEW q2i(namefirst, namelast, playerid, yearid)
AS
  SELECT p.namefirst, p.namelast, h.playerid, h.yearid
  FROM halloffame h, people p
  WHERE h.playerid = p.playerid AND h.inducted = 'Y'
  ORDER BY h.yearid DESC, h.playerid
;

-- Question 2ii
CREATE VIEW q2ii(namefirst, namelast, playerid, schoolid, yearid)
AS
  SELECT p.namefirst, p.namelast, p.playerid, c.schoolid, h.yearid
  FROM halloffame h, people p, collegeplaying c, schools s
  WHERE h.playerid = p.playerid AND
        h.playerid = c.playerid AND
        c.schoolid = s.schoolid AND
        h.inducted = 'Y' AND s.schoolstate = 'CA'
  ORDER BY h.yearid DESC, c.schoolid, p.playerid
;

-- Question 2iii
CREATE VIEW q2iii(playerid, namefirst, namelast, schoolid)
AS
  SELECT t.playerid, t.namefirst, t.namelast, t.schoolid
  FROM halloffame h, (
    SELECT p.playerid, namefirst, namelast, schoolid
    FROM people p LEFT JOIN collegeplaying c
    ON p.playerid = c.playerid
  ) t
  ON h.playerid = t.playerid
  WHERE h.inducted = 'Y'
  ORDER BY t.playerid DESC, schoolid
;

-- Question 3i
CREATE VIEW q3i(playerid, namefirst, namelast, yearid, slg)
AS
  SELECT playerid, namefirst, namelast, yearid, ROUND(slg, 4)
  FROM people NATURAL JOIN (
    SELECT playerid, yearid, (1.0*H + 1.0*H2B + 2.0*H3B + 3.0*HR)/AB slg
    FROM batting
    WHERE AB > 50
    ORDER BY slg DESC
    LIMIT 10
  )
  ORDER BY slg DESC, yearid, playerid
;

-- Question 3ii
CREATE VIEW q3ii(playerid, namefirst, namelast, lslg)
AS
  SELECT playerid, namefirst, namelast, ROUND(lslg, 4)
  FROM people NATURAL JOIN (
    SELECT playerid, yearid, (1.0*SUM(H) + 1.0*SUM(H2B) + 2.0*SUM(H3B) + 3.0*SUM(HR))/SUM(AB) lslg
    FROM batting
    GROUP BY playerid
    HAVING SUM(AB) > 50
    ORDER BY lslg DESC
    LIMIT 10
  )
  ORDER BY lslg DESC, playerid
;

-- Question 3iii
CREATE VIEW q3iii(namefirst, namelast, lslg)
AS
  SELECT namefirst, namelast, ROUND(lslg, 4)
  FROM people NATURAL JOIN (
    SELECT playerid, yearid, (1.0*SUM(H) + 1.0*SUM(H2B) + 2.0*SUM(H3B) + 3.0*SUM(HR))/SUM(AB) lslg
    FROM batting
    GROUP BY playerid
    HAVING SUM(AB) > 50 AND lslg > (
      SELECT (1.0*SUM(H) + 1.0*SUM(H2B) + 2.0*SUM(H3B) + 3.0*SUM(HR))/SUM(AB) tlslg
      FROM batting
      GROUP BY playerid
      HAVING playerid = 'mayswi01'
    )
  )
  ORDER BY lslg DESC, playerid
;

-- Question 4i
CREATE VIEW q4i(yearid, min, max, avg)
AS
  SELECT yearid, MIN(salary) min, MAX(salary) max, ROUND(AVG(salary), 4)
  FROM salaries
  GROUP BY yearid
  ORDER BY yearid
;

-- Question 4ii
CREATE VIEW q4ii(binid, low, high, count)
AS
  SELECT binid, low, high, COUNT(*)+(CASE WHEN binid=9 THEN 1 ELSE 0 END) AS count
  FROM salaries, (
    SELECT binid, binid*(max-min)/10+min AS low, (binid+1)*(max-min)/10+min AS high
    FROM binids, (
        SELECT MIN(salary) AS min, MAX(salary) AS max
        FROM salaries
        WHERE yearid = 2016
      ) AS minmax
  ) AS bins
  WHERE low <= salary AND salary < high AND yearid = 2016
  GROUP BY binid, low, high
  ORDER BY binid
;

-- Question 4iii
CREATE VIEW q4iii(yearid, mindiff, maxdiff, avgdiff)
AS
  WITH t1 AS (
    SELECT yearid, MIN(salary) min, MAX(salary) max, AVG(salary) avg
    FROM salaries
    GROUP BY yearid
    ORDER BY yearid
  ), t2 AS (
    SELECT yearid, MIN(salary) min, MAX(salary) max, AVG(salary) avg
    FROM salaries
    GROUP BY yearid
    ORDER BY yearid
  )
  SELECT t1.yearid, t1.min-t2.min AS mindiff, t1.max-t2.max AS maxdiff, ROUND(t1.avg-t2.avg, 4) AS avgdiff
  FROM t1, t2
  WHERE t1.yearid = t2.yearid+1
  ORDER BY t1.yearid
;

-- Question 4iv
CREATE VIEW q4iv(playerid, namefirst, namelast, salary, yearid)
AS
  SELECT playerid, namefirst, namelast, salary, yearid
  FROM people NATURAL JOIN salaries
  WHERE yearid = 2000 AND salary = (
    SELECT MAX(salary)
    FROM salaries
    WHERE yearid = 2000
  )
  UNION
  SELECT playerid, namefirst, namelast, salary, yearid
  FROM people NATURAL JOIN salaries
  WHERE yearid = 2001 AND salary = (
    SELECT MAX(salary)
    FROM salaries
    WHERE yearid = 2001
  )
;

-- Question 4v
CREATE VIEW q4v(team, diffAvg) AS
  SELECT a.teamid AS team, MAX(s.salary)-MIN(s.salary) AS diffAvg
  FROM allstarfull AS a, salaries AS s
  WHERE a.playerid = s.playerid AND a.yearid = 2016 AND s.yearid = 2016
  GROUP BY a.teamid
;


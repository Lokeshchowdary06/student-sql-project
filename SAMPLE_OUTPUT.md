# Sample Query Outputs

---

## ➤ 1. All Students
| student_id | student_name       | department |
|------------|--------------------|------------|
| 1          | Lokesh Chowdary    | CSE        |
| 2          | Pallavi            | ECE        |
| 3          | Rahul              | Mechanical |

---

## ➤ 2. INNER JOIN – Students With Enrolled Courses
| student_name      | course_name       | grade |
|-------------------|-------------------|-------|
| Lokesh Chowdary   | Database Systems  | A     |
| Lokesh Chowdary   | Java Programming  | B     |
| Pallavi           | Database Systems  | A     |
| Rahul             | Computer Networks | C     |

---

## ➤ 3. GROUP BY – Student Count Per Course
| course_name        | total_students |
|--------------------|----------------|
| Database Systems   | 2              |
| Java Programming   | 1              |
| Computer Networks  | 1              |

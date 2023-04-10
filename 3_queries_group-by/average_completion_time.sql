SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students_id = students_id.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
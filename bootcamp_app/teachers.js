const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// localhost:5432:*:labber:labber - .pgpass

pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name iLIKE '%${process.argv[2] || 'JUL02'}%'
ORDER BY teachers.name;
`)
.then(res => {
  console.log(res.rows);
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));


// Answer to the DraftKings Interview

public class Student {
    var name: String?
    var grade: Int?
    var score: Int?
    init(name: String, grade :Int) {
        self.name = name
        self.grade = grade
    }
}

func grades(_ s1: Student, _ s2: Student) -> Bool {
    return s1.grade! > s2.grade!
}

func setScores(students: inout [Student]) {
    for n in 0..<students.count {
        if n == 0 {
            students[n].score = 1
        }
        else {
            let lastScore = students[n-1].score!
            students[n].score = students[n-1].grade! > students[n].grade! ? lastScore + 1 : lastScore
        }
    }
}


var students = [Student]()
students.append(Student(name: "Steve", grade: 50))
students.append(Student(name: "Tim", grade: 95))
students.append(Student(name: "Conor", grade: 60))
students.append(Student(name: "Jack", grade: 70))
students.append(Student(name: "Mike", grade: 75))
students.append(Student(name: "Alex", grade: 75))
students.append(Student(name: "Alex", grade: 75))
students.append(Student(name: "Paul", grade: 90))
students.append(Student(name: "Nick", grade: 90))

var sortedStudents = students.sorted(by: grades)

setScores(students: &sortedStudents)

for student in sortedStudents {
    print("Grade: \(student.grade!) Score: \(student.score!)")
}



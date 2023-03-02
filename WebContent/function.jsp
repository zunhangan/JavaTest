<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department-wise Student List</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th {
  background-color: lightgrey;
  padding: 5px;
}
td {
  padding: 5px;
}
table {
  margin: 0 auto;
}
</style>
<script>
function showStudentName(studentId, studentName) {
  alert("Student Name: " + studentName);
}
</script>
</head>
<body>
        <h1 style="text-align:center;">Welcome <%= request.getAttribute("username") %>!</h1>
    	<h2 style="text-align:center;">Student List</h2>
    <table>
        <thead>
            <tr>
                <th>Department</th>
                <th>Student ID</th>
                <th>Mark</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <%
                String[][] students = {
                        {"Department 1", "001", "John Doe", "85"},
                        {"Department 1", "002", "Jane Doe", "60"},
                        {"Department 1", "003", "Bob Smith", "40"},
                        {"Department 1", "004", "Alice Jones", "70"},
                        {"Department 2", "101", "Tom Brown", "55"},
                        {"Department 2", "102", "Mary Green", "80"},
                        {"Department 2", "103", "David Lee", "90"},
                        {"Department 2", "104", "Sarah Kim", "65"},
                        {"Department 3", "201", "Chris Davis", "45"},
                        {"Department 3", "202", "Lisa Wilson", "75"},
                        {"Department 3", "203", "Kevin Lee", "55"},
                        {"Department 3", "204", "Nancy Chen", "50"},
                        {"Department 4", "301", "Andrew Wong", "60"},
                        {"Department 4", "302", "Emily Young", "35"},
                        {"Department 4", "303", "Steven Liu", "80"},
                        {"Department 4", "304", "Grace Chen", "90"}
                };
                int[] passedStudents = {0, 0, 0, 0};
                int[] totalStudents = {0, 0, 0, 0};
                
                for (String[] student : students) {
                    int departmentIndex = Integer.parseInt(student[0].split(" ")[1]) - 1;
                    int mark = Integer.parseInt(student[3]);
                    boolean passed = mark >= 50;
                    if (passed) {
                        passedStudents[departmentIndex]++;
                    }
                    totalStudents[departmentIndex]++;
            %>
            <tr>
                <td><%= student[0] %></td>
                <td onclick="showStudentName('<%= student[1] %>', '<%= student[2] %>')" style="cursor: pointer;" title="Click to show student name"><%= student[1] %></td>
                <td><%= student[3] %></td>
                <td><%= passed ? "Passed" : "Failed" %></td>
            </tr>
            <% } %>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="4">
                    <table>
                        <thead>
                            <tr>
                                <th>Department</th>
                                <th>Passed Students</th>
                                <th>Total Students</th>
                                <th>Passing Percentage</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i = 0; i < 4; i++) { %>
                            <tr>
                                <td>Department <%= i + 1 %></td>
                                <td><%= passedStudents[i] %></td>
                                <td><%= totalStudents[i] %></td>
                                <td><%= totalStudents[i] > 0 ? passedStudents[i] * 100 / totalStudents[i] + "%" : "N/A" %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </td>
                </tr>
                </tfoot>
                </table>
                </body>
                </html>
                

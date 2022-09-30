package net.skhu.dto;

public class Student {
	String studentNo;
	String name;
	int semester;


	public Student(String studentNo,String name,int semester){
		this.studentNo=studentNo;
		this.name=name;
		this.semester=semester;
	}

	public Student() {}
	public String getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}

}

package project.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PERSON")
public class Person implements Serializable {

	private static final long serialVersionUID = -5527566248002296042L;
	
	@Id
	@Column(name = "STUDENT_ID")
	@GeneratedValue
	private Integer studentid;
	
	@Column(name = "FIRST_NAME")
	private String firstName;
	
	@Column(name = "LAST_NAME")
	private String lastName;
	
	@Column(name = "COURSES1")
	private String courses1;

	@Column(name = "COURSES2")
	private String courses2;

	@Column(name = "COURSES3")
	private String courses3;
        
	public Integer getId() {
		return studentid;
	}

	public void setId(Integer id) {
		this.studentid = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCourses1() {
		return courses1;
	}

	public void setCourses1(String courses1) {
		this.courses1 = courses1;
	}
        
	public String getCourses2() {
		return courses2;
	}

	public void setCourses2(String courses2) {
		this.courses2 = courses2;
	}
        
	public String getCourses3() {
		return courses3;
	}

	public void setCourses3(String courses3) {
		this.courses3 = courses3;
	}
}

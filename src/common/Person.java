package common; //기본 패키지 이외의 패키지(규약 1번)

public class Person {
	private String name; //필드 생성 (멤버 변수, 규약 2번)
	private int age;
	
	public Person() {} //기본 생성자 (규약 3번)
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	} //인수를 받는 생성자


	public String getName() {return name;} 
	public int getAge() {return age;}

	public void setName(String name) {this.name = name;}
	public void setAge(int age) {this.age = age;}
	// public getter/setter 생성 (규약 4번, 5번)
	
	
}

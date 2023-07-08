package mvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import mvc.dto.Student;
@Component
public class StudentDao {

	@Autowired
	EntityManager m ;

	public void save(Student student) {
		EntityTransaction t = m.getTransaction();
		t.begin();
		m.persist(student);
		t.commit();
	}
	public List<Student> fetchAll(){
		return m.createQuery("select x from Student x").getResultList();
	}
	public List<Student> fetchByName(String name){
		return m.createQuery("select x from Student x where name=?1").setParameter(1, name).getResultList();
	}
	public void delete(int id) {
		EntityTransaction t = m.getTransaction();
		t.begin();
		m.remove(m.find(Student.class, id));
		t.commit();
		
	}
	public Student fetchById(int id) {
		
		return m.find(Student.class, id);
	}
	public void update(Student student) {
		EntityTransaction t = m.getTransaction();
		t.begin();
		m.merge(student);
		t.commit();
	}
}
  
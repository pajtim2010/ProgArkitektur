package project.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import project.model.Person;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("personService")
@Transactional
public class PersonService {

	protected static Logger logger = Logger.getLogger("service");
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	public List<Person> getAll() {
		logger.debug("Retrieving all persons");
		
		Session session = sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("FROM  Person");
                
		return  query.list();
	}
	
	public Person get( Integer studentid ) {
		Session session = sessionFactory.getCurrentSession();
		
		Person person = (Person) session.get(Person.class, studentid);
		
		return person;
	}
        
	public void add(Person person) {
		logger.debug("Adding new person");
		
		Session session = sessionFactory.getCurrentSession();
		
		session.save(person);
	}
	
	public void delete(Integer studentid) {
		logger.debug("Deleting existing person");
		
		Session session = sessionFactory.getCurrentSession();
		
		Person person = (Person) session.get(Person.class, studentid);
		
		session.delete(person);
	}
	
	public void edit(Person person) {
		logger.debug("Editing existing person");
		
		Session session = sessionFactory.getCurrentSession();
		
		Person existingPerson = (Person) session.get(Person.class, person.getId());
		
		existingPerson.setFirstName(person.getFirstName());
		existingPerson.setLastName(person.getLastName());
		existingPerson.setCourses1(person.getCourses1());
                existingPerson.setCourses2(person.getCourses2());
                existingPerson.setCourses3(person.getCourses3());

		session.save(existingPerson);
	}
}

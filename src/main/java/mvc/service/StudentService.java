package mvc.service;

import java.sql.Date;
import java.time.LocalDate;
import java.time.Period;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import mvc.dao.StudentDao;
import mvc.dto.Student;

@Service
public class StudentService {
	@Autowired
	StudentDao dao;

	public ModelAndView Save(Student student, String date) {
		student.setDob(Date.valueOf(date));
		student.setAge(Period.between(LocalDate.parse(date), LocalDate.now()).getYears());
		dao.save(student);
		ModelAndView view = new ModelAndView();
		view.setViewName("Home");
		view.addObject("Success", "Data added sucessfully");
		return view;
	}

	public ModelAndView fetchall() {
		
		ModelAndView view=new ModelAndView();
		List<Student> list=dao.fetchAll();
		if (list.isEmpty()) {
			view.addObject("fail", "No Data Found");
			view.setViewName("Home");
		}
		else{
			view.setViewName("Result");
			view.addObject("list",list);
		}
		return view;
	}

	public ModelAndView fetchbyname(String name) {
		ModelAndView view=new ModelAndView();
		List<Student> list=dao.fetchByName(name);
		if (list.isEmpty()) {
			view.addObject("fail", "No Data Found");
			view.setViewName("Home");
		}
		else{
			view.setViewName("Result");
			view.addObject("list",list);
		}
		return view;
	}

	public ModelAndView delete(int id) {
		ModelAndView view=new ModelAndView();
		
		dao.delete(id);
		List<Student> list=dao.fetchAll();
		if (list.isEmpty()) {
			view.addObject("fail", "Deleted Successs No more Data Found");
			view.setViewName("Home");
		}
		else{
			view.setViewName("Result");
			view.addObject("Success", "Deleted sucessfully");
			view.addObject("list",list);
		}
		return view;
		
	}

	public ModelAndView edit(int id) {
		ModelAndView view= new ModelAndView();
				
				Student student=dao.fetchById(id);
				view.setViewName("Edit");
				view.addObject("student", student);
				
				return view;
	}

	public ModelAndView update(Student student , String date) {
		student.setDob(Date.valueOf(date));
		student.setAge(Period.between(student.getDob().toLocalDate(), LocalDate.now()).getYears());
		dao.update(student);
		ModelAndView view = new ModelAndView();
		view.setViewName("Result");
		view.addObject("list", dao.fetchAll());
		view.addObject("Success", "Data updated sucessfully");
		return view;
	}

}

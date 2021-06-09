package dao.impl;

import java.util.List;

import dao.ICourseDAO;
import mapper.CourseMapper;
import model.Course;

public class CourseDAO extends AbstractDAO<Course> implements ICourseDAO {
	private static CourseDAO instance = new CourseDAO();

	public static CourseDAO getInstance() {
		return instance;
	}

	private CourseDAO() {
	}

	@Override
	public int doInsert(Course t, Object... params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean doUpdate(Course t, Object... params) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doDelete(int id, Object... params) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Course doGet(int id, Object... params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Course> getCourses() {
		String sql = "SELECT * FROM NGANH";
		return query(sql, new CourseMapper());
	}

	public static void main(String[] args) {
		System.out.println(CourseDAO.getInstance().getCourses());
	}
}

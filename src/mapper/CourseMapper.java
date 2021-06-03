package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.Course;

public class CourseMapper implements RowMapper<Course>{

	@Override
	public Course mapper(ResultSet rs) {
		Course course = new Course();
		try {
			course.setId(rs.getInt(1));
			course.setName(rs.getString(2));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return course;
	}

}

package Interfaces;
import java.util.ArrayList;

import Model.User;

public interface UserDAO {



	
   public void saveStudent(User user);
   public ArrayList<User> getStudent();
   public void deleteStudent(int id);
   public void updateStudent(User user);

}

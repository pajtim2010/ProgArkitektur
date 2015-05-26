
package project.dao;


import java.util.List;
import project.model.userEntity;

public interface userDAO
{
    public void addUser(userEntity user);
    public List<userEntity> getAllUsers();
    public void deleteUser(Integer userId);
}
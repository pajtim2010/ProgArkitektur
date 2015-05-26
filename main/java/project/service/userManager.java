package project.service;

import java.util.List;

import project.model.userEntity;

public interface userManager {
    public void addUser(userEntity user);
    public List<userEntity> getAllUsers();
    public void deleteUser(Integer userId);
}

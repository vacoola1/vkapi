package ua.vacoola.vkapi.service;


import ua.vacoola.vkapi.model.User;
import ua.vacoola.vkapi.util.exception.NotFoundException;

import java.util.List;

/**
 * User: gkislin
 * Date: 22.08.2014
 */
public interface UserService {

    User save(User user);

    void delete(int id) throws NotFoundException;

    User get(int id) throws NotFoundException;

    User getByEmail(String email) throws NotFoundException;

    List<User> getAll();

    void update(User user);

    void evictCache();

    void enable(int id, boolean enable);

}

package kimhyunki.bookstore.user.service;

import kimhyunki.bookstore.user.dao.UserDao;
import kimhyunki.bookstore.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	@Autowired private UserDao userDao;

	@Override
	public boolean joinUser(User user) {
		return userDao.addUser(user)>0;
	}
	
}

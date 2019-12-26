package kimhyunki.bookstore.user.dao;



import kimhyunki.bookstore.user.dao.mapper.UserMapper;
import kimhyunki.bookstore.user.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired private UserMapper userMapper;

	@Override
	public int addUser(User user) {
		return userMapper.addUser(user);
	}
}

package org.shop.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;


import org.shop.pojo.User;

public interface UserService {
	User login(User user);
	int touser(User user);
	List findall( User user);
	int delete(int id);
	User findid(int id);
	int  userup(User user);


}

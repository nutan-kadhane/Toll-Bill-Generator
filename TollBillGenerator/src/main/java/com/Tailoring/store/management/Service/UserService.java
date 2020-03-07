package com.Tailoring.store.management.Service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.Tailoring.store.management.Model.LoginUser;
import com.Tailoring.store.management.Model.User;

@Service
public interface UserService {
	public boolean addUser(User user);
	public boolean isUser(LoginUser user);
}

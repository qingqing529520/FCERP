package com.fcerp.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fcerp.base.entity.User;
import com.fcerp.base.service.IUserService;

/**
 * <p>
 *  前端控制器
 * </p>
 * @author Qing
 * @since 2018-10-18
 */
@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserService userService;

    @PostMapping("/select")
	public List<User> select(@RequestParam(value="name",required=false) String name) {
		return userService.selectList(name);
	}
    @PostMapping("/delete")
	public boolean delete(@RequestParam("id") String id) {
		return userService.deleteById(id);
	}
    @PostMapping("/save")
	public boolean save(@RequestBody User user) {
		return userService.insertOrUpdate(user);
	}
}


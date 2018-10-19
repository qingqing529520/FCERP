package com.fcerp.base.service.impl;

import com.fcerp.base.entity.User;
import com.fcerp.base.dao.UserMapper;
import com.fcerp.base.service.IUserService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

import java.util.List;

import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Qing
 * @since 2018-10-18
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

	@Override
	public List<User> selectList(String name) {
		// TODO Auto-generated method stub
		return this.baseMapper.selectList(new EntityWrapper<User>().like("username", name));
	}

}

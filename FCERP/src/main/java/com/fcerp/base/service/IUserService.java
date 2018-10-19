package com.fcerp.base.service;

import java.util.List;

import com.baomidou.mybatisplus.service.IService;
import com.fcerp.base.entity.User;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Qing
 * @since 2018-10-18
 */
public interface IUserService extends IService<User> {

	List<User> selectList(String name);
}

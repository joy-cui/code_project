package org.suirui.code.service.impl;

import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.suirui.code.mapper.UserMapper;
import org.suirui.code.pojo.User;
import org.suirui.code.service.IUserService;
@Service
public class UserServiceImpl implements IUserService {
    private static final org.apache.commons.logging.Log logger= LogFactory.getLog(UserServiceImpl.class);
    @Autowired
    private UserMapper userMapper;
    @Override
    public int insert(User user) {
        logger.error("PersonServiceImpl.. insert。。。。。。");
        return userMapper.insert(user);
    }
}

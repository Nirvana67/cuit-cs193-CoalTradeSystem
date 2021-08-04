package com.cuit.CoalTradeSystem.service.impl;

import com.cuit.CoalTradeSystem.dao.UserDao;
import com.cuit.CoalTradeSystem.domain.User;
import com.cuit.CoalTradeSystem.service.UserService;
import com.cuit.CoalTradeSystem.utils.SqlSessionUtil;

public class UserServiceImpl implements UserService {

    private UserDao userDao = SqlSessionUtil.getSqlSession().getMapper(UserDao.class);

    public boolean register(User a) {
        boolean flag = true;

        int count = userDao.register(a);

        if(1!=count){
            //添加失败
            flag = false;
        }
        // System.out.println("falg="+flag);


        return flag;
    }

}

package com.services.common.core.exception.user;

import com.services.common.core.exception.base.BaseException;

/**
 * 用户信息异常类
 * 
 * @author services
 */
public class UserException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public UserException(String code, Object[] args)
    {
        super("user", code, args, null);
    }
}

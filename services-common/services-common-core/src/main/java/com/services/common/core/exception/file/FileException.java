package com.services.common.core.exception.file;

import com.services.common.core.exception.base.BaseException;

/**
 * 文件信息异常类
 * 
 * @author services
 */
public class FileException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args)
    {
        super("file", code, args, null);
    }

}

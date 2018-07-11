package com.wsy.blog.constant;

/**
 * 常量接口
 */
public interface Constant {
	/**
	 * 启用状态
	 */
	int STATUS_ENABLE = 0;
	/**
	 * 禁用状态
	 */

	/**
	 * 用户角色admin
	 */
	String USER_ROLE_ADMIN = "admin";
	/**
	 * 用户角色normal
	 */
	String USER_ROLE_NORMAL = "normal";
	
	/**
	 * 过滤器默认字符集
	 */
	String FILTER_CHARSET_UTF8 = "UTF-8";
	
	/**
	 * 图片保存路径
	 */
	String PRODUCT_IMAGE_FOLDER_NAME="/productImage/";

	
	/**
	 * 获取文件上传路径的前缀
	 */
	String UPLOAD_PATH_PREFIX = "environment";

	/**
	 * 
	 * 获取文件上传路径的后缀
	 */
	String UPLOAD_PATH_SUFFIX = ".path";
	/**
	 * 分页
	 */
	int PAGE_SIZE = 5;
	
	/**
	 * 当前页，默认为第一页
	 */
	public static final String PAGE_NO_DEFAULT = "1";
	
	/**
	 * 一页显示多少天数据，默认五条
	 */
	public static final String PAGE_SIZE_DEFAULT = "5";
	
	
}

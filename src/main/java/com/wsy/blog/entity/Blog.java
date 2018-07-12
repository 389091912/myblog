package com.wsy.blog.entity;

public class Blog {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_blog.id
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_blog.title
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    private String title;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_blog.content
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_blog.create_date
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    private String createDate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_blog.image_path
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    private String imagePath;


    private String recentlyDate;

    private String commentSum;

    public String getRecentlyDate() {
        return recentlyDate;
    }

    public void setRecentlyDate(String recentlyDate) {
        this.recentlyDate = recentlyDate;
    }

    public String getCommentSum() {
        return commentSum;
    }

    public void setCommentSum(String commentSum) {
        this.commentSum = commentSum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_blog.id
     *
     * @return the value of t_blog.id
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_blog.id
     *
     * @param id the value for t_blog.id
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_blog.title
     *
     * @return the value of t_blog.title
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_blog.title
     *
     * @param title the value for t_blog.title
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_blog.content
     *
     * @return the value of t_blog.content
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_blog.content
     *
     * @param content the value for t_blog.content
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_blog.create_date
     *
     * @return the value of t_blog.create_date
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public String getCreateDate() {
        return createDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_blog.create_date
     *
     * @param createDate the value for t_blog.create_date
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public void setCreateDate(String createDate) {
        this.createDate = createDate == null ? null : createDate.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_blog.image_path
     *
     * @return the value of t_blog.image_path
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public String getImagePath() {
        return imagePath;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createDate='" + createDate + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", recentlyDate='" + recentlyDate + '\'' +
                ", commentSum='" + commentSum + '\'' +
                '}';
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_blog.image_path
     *
     * @param imagePath the value for t_blog.image_path
     *
     * @mbggenerated Wed Jul 11 22:25:05 CST 2018
     */
    public void setImagePath(String imagePath) {


        this.imagePath = imagePath == null ? null : imagePath.trim();
    }
}
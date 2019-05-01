package com.blogging.blogweb.model.entity;

/**
 * @author techoneduan
 * @date 2019/5/1
 */
public class RegisterReqDTO {

    private String name;

    private String password;

    private String permission;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }
}

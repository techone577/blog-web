package com.blogging.blogweb.model.entity;

public class PostListQueryDTO {

    private Integer lastMinId;

    private Integer pageSize;

    //查询类型 home-首页 all-所有 tag-按标签查询
    private String type;

    private String typeValue;

    public Integer getLastMinId() {
        return lastMinId;
    }

    public void setLastMinId(Integer lastMinId) {
        this.lastMinId = lastMinId;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTypeValue() {
        return typeValue;
    }

    public void setTypeValue(String typeValue) {
        this.typeValue = typeValue;
    }
}

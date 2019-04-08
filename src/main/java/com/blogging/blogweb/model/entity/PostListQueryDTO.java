package com.blogging.blogweb.model.entity;

public class PostListQueryDTO {

    private Integer lastMinId;

    private Integer pageSize;

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
}

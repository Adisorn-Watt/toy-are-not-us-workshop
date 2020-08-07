package com.example.backend;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class PagingResponse {
    @JsonProperty("products")
    private List<ToyResponse> toyResponses;
    private int page;
    @JsonProperty("item_per_page")
    private int itemPerPage;

    public PagingResponse(int page, int itemPerPage) {
        this.page = page;
        this.itemPerPage = itemPerPage;
    }

    public List<ToyResponse> getToyResponses() {
        return toyResponses;
    }

    public void setToyResponses(List<ToyResponse> toyResponses) {
        this.toyResponses = toyResponses;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getItemPerPage() {
        return itemPerPage;
    }

    public void setItemPerPage(int itemPerPage) {
        this.itemPerPage = itemPerPage;
    }
}

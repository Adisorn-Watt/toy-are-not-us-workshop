package com.example.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class ToyController {

    @Autowired
    private ToyRepository toyRepository;
    @GetMapping("/toys")
    public PagingResponse getAllToy(
            @RequestParam(defaultValue = "1",name = "page") int page,
            @RequestParam(defaultValue = "10",name = "item_per_page") int itemPerPage,
            @RequestParam(defaultValue = "None",name = "age") int age,
            @RequestParam(defaultValue = "None",name = "gender") int gender
    ){
        PagingResponse pagingResponse = new PagingResponse(page,itemPerPage);
        List<ToyResponse> toysResponseList = new ArrayList<>();


        Pageable pageable = PageRequest.of(page, itemPerPage);
        Page<Toy> toysPagination = toyRepository.findAll(pageable);
        Iterable<Toy> toys = toysPagination.getContent();
        for(Toy toy: toysPagination.getContent()){
            toysResponseList.add(new ToyResponse(
                    toy.getId(),
                    toy.getProduct_name(),
                    toy.getProduct_id(),
                    toy.getProduct_price(),
                    toy.getProduct_image(),
                    toy.getProduct_gender(),
                    toy.getProduct_age(),
                    toy.getProduct_status(),
                    toy.getProduct_brand()
            ));
        }
        pagingResponse.setToyResponses(toysResponseList);
        return pagingResponse;
    }
}

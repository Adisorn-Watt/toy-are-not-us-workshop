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
            @RequestParam(defaultValue = "None",name = "age") String age,
            @RequestParam(defaultValue = "None",name = "gender") String gender
    ){
        int pageInt = page -1;
        PagingResponse pagingResponse = new PagingResponse(pageInt,itemPerPage);
        List<ToyResponse> toysResponseList = new ArrayList<>();

        Pageable pageable = PageRequest.of(pageInt, itemPerPage);
        Page<Toy> toysPagination = toyRepository.findAll(pageable);
        Iterable<Toy> toys = toysPagination.getContent();
        for(Toy toy: toysPagination.getContent()){
            toysResponseList.add(new ToyResponse(
                    toy.getId(),
                    toy.getName(),
                    toy.getGender(),
                    toy.getAge(),
                    toy.getPrice(),
                    toy.getAvailable(),
                    toy.getBrand(),
                    toy.getImage()
            ));
        }
        pagingResponse.setToyResponses(toysResponseList);
        return pagingResponse;
    }
}

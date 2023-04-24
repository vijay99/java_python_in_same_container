package com.example.java_python_in_same_container.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
public class NameController {

    @GetMapping("/names")
    public List<String> getNames() {
        return Arrays.asList("Ram","Shyam","Smith");
    }
}

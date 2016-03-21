package com.lhzl.drp.controller;

import com.lhzl.drp.model.User;
import com.lhzl.drp.service.UserService;
import com.lhzl.drp.util.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


/**
 * Created by chenhao on 2015/9/7.
 */

@Controller
@RequestMapping("/userController")
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @RequestMapping("/queryUserById")
    @ResponseBody
    public Response queryUserById(int id) {
        User user = userService.queryUserById(id);
        return new Response().success(user);
    }

    @RequestMapping("/queryUser")
    @ResponseBody
    public Response queryUser(@RequestBody Map<String, Object> map) {
        List<User> users = userService.queryUser(map);
        return new Response().success(users);
    }

    @RequestMapping("/insertUser")
    @ResponseBody
    public Response insertUser(@RequestBody @Valid User user, BindingResult binding) {
        if (binding.hasErrors()) {
            return new Response().failure("验证参数失败");
        }
        userService.insertUser(user);
        return new Response().success();
    }

    @RequestMapping("/updateUser")
    @ResponseBody
    public Response updateUser(@RequestBody @Valid User user) {
        userService.updateUser(user);
        return new Response().success();
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public Response deleteUser(@RequestBody ArrayList<Integer> ids) {
        userService.deleteUser(ids);
        return new Response().success();
    }

}

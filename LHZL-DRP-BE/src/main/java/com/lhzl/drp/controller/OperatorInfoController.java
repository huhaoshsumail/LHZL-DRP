package com.lhzl.drp.controller;

import com.lhzl.drp.model.Operatorinfo;
import com.lhzl.drp.model.Response;
import com.lhzl.drp.model.Userinfo;
import com.lhzl.drp.service.OperatorinfoService;
import com.lhzl.drp.service.UserService;
import com.lhzl.drp.util.Contains;
import com.lhzl.drp.util.Tools;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

//操作员类
@Controller
@RequestMapping("/operatorInfoController")
public class OperatorInfoController {

    private static final Logger logger = LoggerFactory.getLogger(OperatorInfoController.class);

    @Autowired
    private OperatorinfoService operatorinfoService;

    @RequestMapping("/login")
    public Response login(Operatorinfo oi, HttpServletRequest request){
        //密码转换
        //oi.setOperpwd(Tools.string2MD5(oi.getOperpwd()));
        oi = operatorinfoService.login(oi);
        if(oi!=null){
            if(null!=oi.getStatus() && "N".equals(oi.getStatus())){
                    request.getSession().setAttribute(Contains.Login.operatorinfo, oi);
                    //根据用户的角色查询用户的菜单
                    //List<sysMenu> lis = sysMenuImpl.findByrid(ui.getRoleId());
                    //request.getSession().setAttribute("menulist", lis);
            }else{
                request.getSession().setAttribute("mess", "用户不正常!");
            }
        }else{
            request.getSession().setAttribute("mess", "用户名或密码错误!");
        }
        return new Response().success();

    }
//    @RequestMapping("/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ")
//    @ResponseBody
//    public Response queryUserById(long id) {
//        Userinfo user = userService.queryUserById(id);
//        return new Response().success(user);
//    }
//
//    @RequestMapping("/queryUser")
//    @ResponseBody
//    public Response queryUser(@RequestBody Map<String, Object> map) {
//        List<Userinfo> users = userService.queryUser(map);
//        Response res = new Response().success(users);
//        if (map.containsKey("count")) {
//            res.setCount((Integer) map.get("count"));
//        }
//        return res;
//    }
//
//    @RequestMapping("/insertUser")
//    @ResponseBody
//    public Response insertUser(@RequestBody @Valid Userinfo user) {
//        userService.insertUser(user);
//        return new Response().success();
//    }
//
//    @RequestMapping("/updateUser")
//    @ResponseBody
//    public Response updateUser(@RequestBody @Valid Userinfo user) {
//        userService.updateUser(user);
//        return new Response().success();
//    }
//
//    @RequestMapping("/deleteUser")
//    @ResponseBody
//    public Response deleteUser(long id) {
//        userService.deleteUser(id);
//        return new Response().success();
//    }

}

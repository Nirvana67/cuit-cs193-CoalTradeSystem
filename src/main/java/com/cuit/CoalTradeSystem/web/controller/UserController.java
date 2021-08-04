package com.cuit.CoalTradeSystem.web.controller;

import com.cuit.CoalTradeSystem.domain.User;
import com.cuit.CoalTradeSystem.service.UserService;
import com.cuit.CoalTradeSystem.service.impl.UserServiceImpl;
import com.cuit.CoalTradeSystem.utils.PrintJson;
import com.cuit.CoalTradeSystem.utils.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class UserController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("进入用户控制器");

        String path  = request.getServletPath();

        if("/settings/user/login.do".equals(path)){
            //login(request,response);
        }else if("/settings/user/register.do".equals(path)){
            register(request,response);
        }


    }



    private void register(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("执行用户注册操作");

        String loginNumber = request.getParameter("loginNumber");
        String loginPassword  = request.getParameter("loginPassword");
        String legalPerson  = request.getParameter("legalPerson");
        String legalId  = request.getParameter("legalId");
        String registArea  = request.getParameter("registArea");
        String enterpriseMail  = request.getParameter("enterpriseMail");
        String phoneNuber  = request.getParameter("phoneNuber");
        String faxes  = request.getParameter("faxes");
        String postalCode  = request.getParameter("postalCode");
        String registFund  = request.getParameter("registFund");
        String businessNumber  = request.getParameter("businessNumber");
        String organizCode  = request.getParameter("organizCode");
        String licenseNumber  = request.getParameter("licenseNumber");
        String taxRegistrCode  = request.getParameter("taxRegistrCode");
        String depositBank  = request.getParameter("depositBank");
        String accountNumber  = request.getParameter("accountNumber");
        String locationQuantityQualityOfStorage  = request.getParameter("locationQuantityQualityOfStorage");
        String transportationOfCapacity  = request.getParameter("transportationOfCapacity");
        String suppilerIntroduction  = request.getParameter("suppilerIntroduction");
        String suppilerName  = request.getParameter("suppilerName");
        String businessTpye  = request.getParameter("businessTpye");


        User a = new User();
        a.setLoginNumber(loginNumber);
        a.setLegalPerson(legalPerson);
        a.setLoginPassword(loginPassword);
        a.setSuppilerName(suppilerName);
        a.setBusinessTpye(businessTpye);
        a.setRegistArea(registArea);
        a.setLegalId(legalId);
        a.setEnterpriseMail(enterpriseMail);
        a.setPhoneNuber(phoneNuber);
        a.setFaxes(faxes);
        a.setPostalCode(postalCode);
        a.setRegistFund(registFund);
        a.setBusinessNumber(businessNumber);
        a.setOrganizCode(organizCode);
        a.setLicenseNumber(licenseNumber);
        a.setTaxRegistrCode(taxRegistrCode);
        a.setDepositBank(depositBank);
        a.setAccountNumber(accountNumber);
        a.setLocationQuantityQualityOfStorage(locationQuantityQualityOfStorage);
        a.setTransportationOfCapacity(transportationOfCapacity);
        a.setSuppilerIntroduction(suppilerIntroduction);




        UserService as = (UserService) ServiceFactory.getService(new UserServiceImpl());

        boolean flag = as.register(a);

        PrintJson.printJsonFlag(response,flag);

    }

    /*private void login(HttpServletRequest request, HttpServletResponse response) {

        System.out.println("进入登录验证操作");

        String loginAct = request.getParameter("loginAct");
        String loginPwd = request.getParameter("loginPwd");
        // System.out.println("在Controller"+loginAct+loginPwd);

        //把密码加密
        loginPwd = MD5Util.getMD5(loginPwd);

        // System.out.println("加密"+loginPwd);

        //接收ip地址
        String ip = request.getRemoteAddr();
        //System.out.println(ip);


        //创建Service对象
        UserService us = (UserService) ServiceFactory.getService(new UserServiceImpl());


        try{

            // System.out.println("进入Service的login");
            User user = us.login(loginAct,loginPwd,ip);

            request.getSession().setAttribute("user",user);


            //执行到这里说明登录没有问题，业务层没有抛出异常
            PrintJson.printJsonFlag(response,true);

        }catch (Exception e){
            e.printStackTrace();

            //验证登录失败，抛出了异常，登陆失败
            String msg = e.getMessage();

            System.out.println(msg);

            Map<String,Object> map = new HashMap<String,Object>();
            map.put("success",false);
            map.put("msg",msg);

            //将登录信息传到前端 信息都封装在map
            PrintJson.printJsonObj(response,map);


        }


    }*/
}


package com.example.web.entity;

import java.time.LocalDate;

public class LoginInfo {//javaBean
    private Integer id;
    private String name;
    private String psw;
    private String mail;
    private LocalDate birth;
    private int level;
    private int age;

    public LoginInfo(String name, String psw, String mail, LocalDate birth, int level, int age) {
        this.name = name;
        this.psw = psw;
        this.mail = mail;
        this.birth = birth;
        this.level = level;
        this.age = age;
    }



    public LoginInfo() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public LocalDate getBirth() {
        return birth;
    }

    public void setBirth(LocalDate birth) {
        this.birth = birth;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {this.age = age;}

}

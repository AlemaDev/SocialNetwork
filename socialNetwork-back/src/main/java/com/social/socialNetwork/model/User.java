package com.social.socialNetwork.model;

import javax.persistence.*;
import java.io.Serializable;

//I won't be using lombok just yet
@Entity
public class User implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)//this tells entity how to generate that id
    @Column(nullable = false, updatable = false) //this makes the id not updatable and not nullable
    private Long id;
    private String name;
    private String email;
    private String rol;
    private String imageUrl;

    public User(String name, String email, String rol, String imageUrl) {
        this.name = name;
        this.email = email;
        this.rol = rol;
        this.imageUrl = imageUrl;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}

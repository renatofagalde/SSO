package br.com.likwi.sso.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Data
@Entity(name = "user")
public class User {

    @Id
    @GeneratedValue
    private long id;

    private String firstName;

    private String lastName;

    private String email;

    private String username;

    private String password;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Role> roles;
}

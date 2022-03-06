package br.com.likwi.sso.repository;

import br.com.likwi.sso.entity.User;

import java.util.Optional;


public interface UserRepositoryQuery {

    Optional<User> findByUserName(String userName);

}

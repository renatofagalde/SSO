package br.com.likwi.sso.service;

import br.com.likwi.sso.entity.User;
import br.com.likwi.sso.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User getUserByUsername(String username) {
        final User user = this.userRepository.findByUserName(username)
                .orElseThrow(IllegalArgumentException::new);

        return user;
    }
}

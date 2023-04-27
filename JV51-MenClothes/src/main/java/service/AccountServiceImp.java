package service;

import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.AccountRepository;

import java.util.List;

@Service
public class AccountServiceImp implements AccountService {
    @Autowired
    private AccountRepository accountRepository;

    @Override
    public void addAccount(User account) {
        accountRepository.save(account);
    }

    @Override
    public List<User> viewAllAccount() {
        return (List<User>) accountRepository.findAll();
    }

    @Override
    public User getUserByUserName(String username) {
        return (User) accountRepository.getUserByUsername(username);
    }

    @Override
    public User getUserById(int id) {
        return accountRepository.getUserById(id);
    }
}

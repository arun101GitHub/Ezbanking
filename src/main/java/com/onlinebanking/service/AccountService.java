package com.onlinebanking.service;

import com.onlinebanking.entity.PrimaryAccount;
import com.onlinebanking.entity.PrimaryTransaction;
import com.onlinebanking.entity.SavingsAccount;
import com.onlinebanking.entity.SavingsTransaction;
import java.security.Principal;


public interface AccountService {

    PrimaryAccount createPrimaryAccount();

    SavingsAccount createSavingsAccount();

    void deposit(String accountType, double amount, Principal principal);

    void withdraw(String accountType, double amount, Principal principal);

}
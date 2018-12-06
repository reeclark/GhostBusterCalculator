package com.GhostBusterCalculator.GhostBusterCalculator.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.GhostBusterCalculator.GhostBusterCalculator.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}

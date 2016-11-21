package com.monespace.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class UserRole implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int userRoleId;
//	@Expose
//	private int userId;
	@Expose
	private int roleId;

//	@OneToOne
//	@JoinColumn(name = "userId", nullable = false, insertable = false, updatable = false)
//	private User user;

	@OneToOne
	@JoinColumn(name = "roleId", nullable = false, insertable = false, updatable = false)
	private Role role;
	
	@OneToOne
	private UserDetail userDetail;
	
	public int getUserRoleId() {
		return userRoleId;
	}

	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

//	public int getUserId() {
//		return userId;
//	}
//
//	public void setUserId(int userId) {
//		this.userId = userId;
//	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
}

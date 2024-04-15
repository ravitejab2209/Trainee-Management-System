package com.reva.tms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.reva.tms.bean.Trainee;
import com.reva.tms.util.DBUtil;

public class TraineeDao {
	public boolean validateUser(String uname,String pwd) {
	   	try {			
			Connection con = DBUtil.getConnection();
			
			String cmd = "select * from login where username=? and password=?";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1, uname);
			ps.setString(2, pwd);
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				return true;
			}			
			return false;			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}
	
	public boolean addtrainee(Trainee p) {
		try {			
			Connection con = DBUtil.getConnection();
			
			String cmd = "insert into trainee values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setInt(1, p.getTraineeId());
			ps.setString(2, p.getTraineeName());
			ps.setString(3, p.getTraineeLocation());
			ps.setString(4, p.getTraineeDomain());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		  return false;
	}
	
	public boolean deletetrainee(int traineeid) {
		try {			
			Connection con = DBUtil.getConnection();
			
			String cmd = "delete from trainee where traineeid=?";
			
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setInt(1, traineeid);
			ps.executeUpdate();
			return true;			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updatetrainee(Trainee p) {
		
		try {			
			Connection con = DBUtil.getConnection();
			
			String cmd = "update trainee set traineename=?,traineelocation=?,traineedomain=? where traineeid=?";
			
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setString(1, p.getTraineeName());
			ps.setString(2, p.getTraineeLocation());
			ps.setString(3, p.getTraineeDomain());
			ps.setInt(4, p.getTraineeId());
			
			ps.executeUpdate();
			return true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		  return false;
	}
	
	public Trainee retrievetrainee(int traineeid) {
		try {			
			Connection con = DBUtil.getConnection();
			
			String cmd = "select * from trainee where traineeid=?";
			PreparedStatement ps = con.prepareStatement(cmd);
			ps.setInt(1, traineeid);
			ResultSet rs =  ps.executeQuery();
			if(rs.next()) {
				int traineeid1 = rs.getInt(1);
				String traineename1 = rs.getString(2);
				String traineelocation1 = rs.getString(3);
				String traineedomain1 = rs.getString(4);
				Trainee p = new Trainee(traineeid1,traineename1, traineelocation1, traineedomain1);
				return p;
			}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<Trainee> retrieveall(){
		ArrayList<Trainee> tList = new ArrayList<Trainee>();
		try {			
			Connection con = DBUtil.getConnection();
			
			String cmd = "select * from trainee";
			PreparedStatement ps = con.prepareStatement(cmd);
			ResultSet rs =  ps.executeQuery();
			
			while (rs.next()) {
				int traineeid = rs.getInt(1);
				String traineename = rs.getString(2);
				String traineelocation = rs.getString(3);
				String traineedomain = rs.getString(4);
				Trainee t1 = new Trainee(traineeid, traineename, traineelocation, traineedomain);			
				tList.add(t1);
			}
			return tList;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return tList;
	}

	

}

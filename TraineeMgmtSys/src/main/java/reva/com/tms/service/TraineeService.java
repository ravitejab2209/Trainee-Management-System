package reva.com.tms.service;

import java.util.ArrayList;

import com.reva.tms.bean.Trainee;
import com.reva.tms.dao.TraineeDao;

public class TraineeService {
	
	TraineeDao dao=new TraineeDao();
	
	public boolean validateUser(String uname, String pwd) {
		boolean flag = dao.validateUser(uname, pwd);
		return flag;
	}

	public boolean addtrainee(Trainee p) {
		boolean flag = dao.addtrainee(p);
		return flag;
	}

	public boolean deletetrainee(int traineeid) {
		boolean flag = dao.deletetrainee(traineeid);
		return flag;
	}

	public boolean updatetrainee(Trainee p) {

		boolean flag = dao.updatetrainee(p);
		return flag;
	}
	
	public Trainee retrievetrainee(int traineeid) {
		Trainee p = dao.retrievetrainee(traineeid);
		return p;
	}
	
	public ArrayList<Trainee> retrieveall(){
		ArrayList<Trainee> tList = dao.retrieveall();
		return tList;
	}

}

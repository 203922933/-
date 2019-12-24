package service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.TAnnounEntity;
import dao.AnnounDao;

@Transactional
@Service("AnnounService")
public class AnnounService {
	private AnnounDao announDao;
	private TAnnounEntity announ;
	
	public TAnnounEntity getAnnoun() {
		return announ;
	}

	public void setAnnoun(TAnnounEntity announ) {
		this.announ = announ;
	}

	public void setAnnounDao(AnnounDao announDao) {
		this.announDao = announDao;
	}
	
	//��ȡȫ�������б�
	public List<TAnnounEntity> getAll() {
		List<TAnnounEntity> announ =  announDao.theAll();
		return announ;
	}
	
	//����������Ϣ
	public boolean addNew(TAnnounEntity announ) {
		if(announDao.addAnnoun(announ)) {
			System.out.println("222");
			return true;
		}
		return false;
	}
	
	//��ȡ�������
	public int theID(String username) {
		int theID = announDao.associateID(username, "1");
		return theID;
	}
}
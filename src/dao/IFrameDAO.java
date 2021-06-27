package dao;

import java.util.List;

import model.TrainingFrame;

public interface IFrameDAO {
	public boolean insertFrame(TrainingFrame frame, String id);
	
	public List<String> getListFrameByIdCollege(int idCollege);
	
	public List<TrainingFrame> getListFrame();
}

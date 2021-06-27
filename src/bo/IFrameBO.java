package bo;

import java.util.List;

import model.TrainingFrame;

public interface IFrameBO {
	
	public List<TrainingFrame> getListFrame();
	
	public List<String> getNameFrameByCollege(int idCollege);
}

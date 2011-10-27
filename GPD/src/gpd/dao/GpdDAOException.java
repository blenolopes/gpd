package gpd.dao;

public class GpdDAOException extends Exception {
	private static final long serialVersionUID = 1L;

	public GpdDAOException() {	
	}
	
	public GpdDAOException(String arg) {
		super(arg);
	}
	
	public GpdDAOException(Throwable arg) {
		super(arg);
	}
	
	public GpdDAOException(String arg, Throwable arg1) {
		super(arg, arg1);
	}
}
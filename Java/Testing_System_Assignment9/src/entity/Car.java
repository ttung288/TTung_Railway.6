package entity;



public class Car {

	private String name;
	private String type;
	private Engine engine;

	public Car() {
		this.name = name;
		this.type = type;
	}

	public void setEngine(Engine engine2) {
		this.engine = engine2;
	}


	public class Engine {

		private String engineType;

		public String getEngineType() {
			return engineType;
		}

		public void setEngineType(String engineType) {
			this.engineType = engineType;
		}

		@Override
		public String toString() {
			return engineType;
		}
	}

		
		
		


	public Car(String name, String type) {
		super();
		this.name = name;
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void printInfor() {
		// TODO Auto-generated method stub
		System.out.println("Car Name: " + name);
		System.out.println("Car Type: " + type);
		System.out.println("Car Engine: " + engine);
	}
	
	

}

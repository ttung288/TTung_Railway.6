package entitily.ex3;

public abstract class Person {
		private String name;

		public Person(String name) {
			super();
			this.name = name;
		}

		public Person() {
			super();
		}

		@Override
		public String toString() {
			return "Person [name=" + name + "]";
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		
		
}

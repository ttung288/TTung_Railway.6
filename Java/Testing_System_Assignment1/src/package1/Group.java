package package1;

import java.time.LocalDate;

public class Group {
	int			group_id;
	String		group_name;
	Account		creator_id;
	LocalDate	create_date;
	
	Account[] 	accounts;
}

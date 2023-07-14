package random;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class examealinea2 {
    
    Scanner input = null;
		try {
			input = new Scanner(new FileInputStream("exames_passados\\testepratico\\events.txt"));
		} catch (FileNotFoundException e) {
			System.out.println("events.txt não encontrado.");
			System.exit(1);
		}

        while (input.hasNextLine()){
            String line = input.nextLine();
			char firstchar = line.charAt(0);
			line = line.substring(2);
			String[] lineSplit = line.split(",");

            if(firstchar == "#"){

            }else if(firstchar == "*"){

            }
        }

    
}

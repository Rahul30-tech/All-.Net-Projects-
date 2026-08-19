using System;
public class HelloWorld
{
			public static void Main(string[] args)
			{
			Console.WriteLine("Select Type of Employee");
			Console.WriteLine("1. Full-time Employee");
			Console.WriteLine("2. Part-time Employee");
			Console.Write("Enter your choice: ");
			int ch = Convert.ToInt32(Console.ReadLine());
			employee e = null;
			Ipayrol payrol = null;
			if (ch == 1)
			{
			e = new FullTimeEmp();
			payrol = (Ipayrol)e;
			}
			else if (ch == 2)
			{
			e = new PartTimeEmp();
			payrol = (Ipayrol)e;
			}
			else
			{
			Console.WriteLine("Invalid Choice");
			}
			
			return;
			
			e.acceptdet();
			e.dispdet();
			payrol.calcSal();
			}
			// Interface
			interface Ipayrol
			{
			void calcSal();
			
			FACULTY OF ENGINEERING AND TECHNOLOGY
			Department of Computer Engineering
			01CE1523 - .NET Technologies
			
			Rahulkumar(92400103030) BATCH: A |5
			}
			// Parent Class
			class employee
			{
			public int empid;
			public string ename;
			public double bsal;
			// Constructor
			public employee()
			{
			Console.WriteLine("\n************************");
			Console.WriteLine("Employee Payroll System");
			Console.WriteLine("************************");
			}
			// Accept Details
			public void acceptdet()
			{
			Console.Write("Enter Employee ID => ");
			empid = Convert.ToInt32(Console.ReadLine());
			Console.Write("Enter Employee Name => ");
			ename = Console.ReadLine();
			Console.Write("Enter Basic Salari => ");
			bsal = Convert.ToDouble(Console.ReadLine());
			}
			// Display Details
			public void dispdet()
			{
			Console.WriteLine("\nEmployee Details");
			Console.WriteLine("");
			Console.WriteLine("Employee ID "+empid);
			Console.WriteLine("Employee Name "+ename);
			Console.WriteLine("Basic Salary "+bsal);
			
			}
			
			// Full-Time Employee
			class FullTimeEmp : employee, Ipayrol
			{
			public void calcSal()
			{
			double da = bsal * 0.20;
			double hra = bsal * 0.50;
			double ma = bsal * 0.35;
			double pf = bsal * 0.06;
			double netsal = (bsal + da + hra + ma) - pf;
			
			FACULTY OF ENGINEERING AND TECHNOLOGY
			Department of Computer Engineering
			01CE1523 - .NET Technologies
			
			Rahulkumar(92400103030) BATCH: A |6
			Console.WriteLine("\nEmployee Type : Full-Time");
			Console.WriteLine("DA => " + da);
			Console.WriteLine("HRA => " + hra);
			Console.WriteLine("Medical Allow.=> " + ma);
			Console.WriteLine("PF => " + pf);
			Console.WriteLine("Net Salary =>" + netsal);
			}
			}
			// Part-Time Employee
			class PartTimeEmp : employee, Ipayrol
			{
			public void calcSal()
			{
			double netsal = bsal;
			Console.WriteLine("\nEmployee Type : Part-Time");
			Console.WriteLine("Net Salary : " + netsal);
			}
			}
			
			using System;
			class Student
			{
			// Private Data Members
			private string name;
			private int age;
			private string gender;
			private double percentage;
			private string scholarship;
			private string facilities;
			private string branch;
			public Student(string n, int a, string g, double p)
			{
			name = n;
			age = a;
			gender = g;
			percentage = p;

			if (percentage >= 90)
			{
			scholarship = "100% Scholarship";
			facilities = "Bus + Hostel + Food + Books + Laptop";
			branch = "Computer Science";
			}
			else if (percentage >= 80)
			{
			scholarship = "75% Scholarship";
			facilities = "Bus + Hostel + Food";
			branch = "Information Technology";
			}
			else if (percentage >= 70)
			{
			scholarship = "50% Scholarship";
			facilities = "Bus + Food";
			branch = "Electronics";
			
			scholarship = "25% Scholarship";
			facilities = "Bus Only";
			branch = "Mechanical";
			}
			
			public void Display()
			{
			Console.WriteLine("\n===== STUDENT ADMISSION DETAILS =====");
			Console.WriteLine("Name : " + name);
			Console.WriteLine("Age : " + age);
			Console.WriteLine("Gender : " + gender);
			Console.WriteLine("Percentage : " + percentage + "%");
			Console.WriteLine("Branch : " + branch);
			Console.WriteLine("Scholarship : " + scholarship);
			Console.WriteLine("Facilities : " + facilities);
			}
			}


			class Program
			{
			static void Main(string[] args)
			{
			double totalMarks, obtainedMarks, percentage;
			Console.Write("Enter Total Marks: ");
			totalMarks = Convert.ToDouble(Console.ReadLine());
			Console.Write("Enter Obtained Marks: ");
			obtainedMarks = Convert.ToDouble(Console.ReadLine());
					
			percentage = (obtainedMarks / totalMarks) * 100;
			Console.WriteLine("\nPercentage = " + percentage + "%");
			if (percentage < 60)
			{
			Console.WriteLine("Sorry! You are not eligible for Scholarship.");
			return;
			}
			Console.WriteLine("Congratulations! You are eligible for Scholarship.");
			Console.Write("Enter Name: ");
			string name = Console.ReadLine();
			Console.Write("Enter Age: ");
			int age = Convert.ToInt32(Console.ReadLine());
			Console.Write("Enter Gender: ");
			string gender = Console.ReadLine();
			Student s1 = new Student(name, age, gender, percentage);
			s1.Display();
			}
}

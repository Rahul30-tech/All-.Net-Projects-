using System;
namespace Practical2
{
    internal class Program
      {
      static void Main(string[] args)
      {
      Student student = new Student();
      student.EnterStudentDetails();
      student.CheckScholarshipEligibility();
      student.DisplayStudentInformation();
      Console.ReadKey();
      }
      class Student
      {
      // Public Data Members
      public int AdmissionNumber;
      public string StudentName;
      public string CourseName;
      public int SemesterNumber;
      public double Percentage;
      // Private Data Members
      private double AdmissionFee;
      private bool IsScholarshipEligible;
      private const double ScholarshipRate = 0.10;
      // Constructor
      public Student()
      {
      ShowWelcomeMessage();
      }
      // Display Heading
      private void ShowWelcomeMessage()
      {
      Console.WriteLine("----------------------------------------");
      Console.WriteLine(" Student Admission System ");
      Console.WriteLine("----------------------------------------");
      Console.WriteLine();
      }
      // Accept Student Details
      public void EnterStudentDetails()
      {
      Console.Write("Enter Admission Number: ");
      AdmissionNumber = Convert.ToInt32(Console.ReadLine());
      Console.Write("Enter Student Name: ");
      StudentName = Console.ReadLine();
      Console.Write("Enter Course Name: ");
      CourseName = Console.ReadLine();
      Console.Write("Enter Semester: ");
      SemesterNumber = Convert.ToInt32(Console.ReadLine());
      Console.Write("Enter Percentage: ");
      Percentage = Convert.ToDouble(Console.ReadLine());
      Console.Write("Enter Admission Fee: ");
      AdmissionFee = Convert.ToDouble(Console.ReadLine());
      }
      // Check Admission and Scholarship Eligibility
      public void CheckScholarshipEligibility()
      {
      // Check Course
      if (!CourseName.Equals("Computer Engineering", StringComparison.OrdinalIgnoreCase))
      {
      Console.WriteLine("\n----------------------------------------");
      Console.WriteLine("Admission Status : Not Eligible");
      Console.WriteLine("Reason : Admission is only available for Computer Engineering
      
      students.");
      
      Console.WriteLine("----------------------------------------");
      Environment.Exit(0);
      
      }
      // Check Percentage for Admission
      if (Percentage < 50)
      {
      Console.WriteLine("\n----------------------------------------");
      Console.WriteLine("Admission Status : Not Eligible");
      Console.WriteLine("Reason : Minimum 50% marks are required for admission.");
      Console.WriteLine("----------------------------------------");
      Environment.Exit(0);
      }
      // Scholarship Criteria
      if (Percentage >= 75 && AdmissionFee <= 50000)
      {
      IsScholarshipEligible = true;
      }
      else
      {
      IsScholarshipEligible = false;
      }
      }
      // Calculate Final Fee
      private double CalculateFinalFee()
      {
      if (IsScholarshipEligible)
      {
      return AdmissionFee - (AdmissionFee * ScholarshipRate);
      }
      return AdmissionFee;
      }
      // Display Student Information
      public void DisplayStudentInformation()
      {
      double finalFee = CalculateFinalFee();
      Console.WriteLine();
      Console.WriteLine("----------------------------------------");
      Console.WriteLine(" Student Admission Details ");
      Console.WriteLine("----------------------------------------");
      Console.WriteLine("Admission Number : " + AdmissionNumber);
      Console.WriteLine("Student Name : " + StudentName);
      Console.WriteLine("Course Name : " + CourseName);
      Console.WriteLine("Semester : " + SemesterNumber);
      Console.WriteLine("Percentage : " + Percentage + "%");
      Console.WriteLine("Admission Status : Eligible");
      Console.WriteLine("Scholarship : " + (IsScholarshipEligible ? "Eligible" : "Not Eligible"));
      Console.WriteLine("Final Fee : " + CalculateFinalFee());
      Console.WriteLine("----------------------------------------");
      }
    }
}
      
      
      
      
      
      

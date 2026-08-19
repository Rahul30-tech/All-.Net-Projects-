using System;
using System.Collections.Generic;
class Expense
{
    public int expId;
    public string category;
    public double amt;
    public string paymentMode;
    public DateTime expDate;
    public void accdet()
    {
      Console.Write("Enter Expense ID: ");
      expId = Convert.ToInt32(Console.ReadLine());
      Console.Write("Enter Expense Category: ");
      category = Console.ReadLine();
      Console.Write("Enter Amount: ");
      amt = Convert.ToDouble(Console.ReadLine());
      if (amt <= 0)
      {
      throw new Exception("Expense amount must be more than Zero");
      }
      Console.Write("Enter Payment Mode (Cash/UPI/Card): ");
      paymentMode = Console.ReadLine();
      expDate = DateTime.Now;
    }
    // Method to display expense details
    public void dispDet()
    {
      Console.WriteLine("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
      Console.WriteLine("Expense Id = " + expId);
      Console.WriteLine("Category = " + category);
      Console.WriteLine("Amount = " + amt);
      Console.WriteLine("Payment Mode = " + paymentMode);
      Console.WriteLine("Date = " + expDate);
      Console.WriteLine("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
    }
  }
class Program
{
    static void Main(string[] args)
    {
      int ch;
      List<Expense> expenses = new List<Expense>();
      do
      {
      Console.WriteLine("~~~~~~~~~~~~~~~~~");
      Console.WriteLine("Expense Tracker Module");
      Console.WriteLine("1. Add Expense");
      Console.WriteLine("2. View All Expense");
      Console.WriteLine("3. View Total Expense Amount");
      Console.WriteLine("4. Exit");
      try
      {
        Console.Write("Enter your choice = ");
        ch = Convert.ToInt32(Console.ReadLine());
        switch (ch)
        {
          case 1:
          try
          {
            Expense exp = new Expense();
            exp.accdet();
            expenses.Add(exp);
            Console.WriteLine("Expense added successfully");
          }catch (FormatException)
          {
            Console.WriteLine("Error: Please enter a valid numeric value.");
          }
          catch (Exception ex)
          {
            Console.WriteLine("Error: " + ex.Message);
          }
          finally
          {
            Console.WriteLine("Expense processing completed.");
          }
          break;
        case 2:
          if (expenses.Count == 0)
          {
          Console.WriteLine("No expense found.");
          }
          else
          {
              foreach (Expense exp in expenses)
              {
                exp.dispDet();
              }
          }
          break;
        case 3:
          double t = 0;
          foreach (Expense expense in expenses)
          {
            t += expense.amt;
          }
          Console.WriteLine("Total Expense = " + t);
          break;
        case 4:
          Console.WriteLine("Thank you for using Expense Tracker.");
          break;
        default:
          Console.WriteLine("Invalid Choice.");
          break;
        }
      }catch (FormatException)
      {
        Console.WriteLine("Error: Please enter a valid menu choice.");
        ch = 0;
      }
    } while (ch != 4);
  }
}

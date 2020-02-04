using System;

namespace BusApp
{
    class CustomerManager
    {
        //AdminRepository adminRepository = new AdminRepository();
        CustomerRepository customerRepository = new CustomerRepository();
        public void GetDetails()
        {
            
            Console.Write("Enter your Name : ");
            string name = Console.ReadLine();
            Console.Write("Enter your Phone Number : ");
            string phone = Console.ReadLine();
            Console.Write("Enter your Age : ");
            DateTime age = Convert.ToDateTime(Console.ReadLine());
            Console.Write("Enter your UserId : ");
            string userId = Console.ReadLine();
            Console.Write("Enter your Password : ");
            string password = Console.ReadLine();

            Console.WriteLine("Enter your role");
            Console.WriteLine("1. Admin");
            Console.WriteLine("2. User");
            byte choice = Convert.ToByte(Console.ReadLine());
            Customer customer = new Customer(userId, password, name, phone, age);
            //if (choice == 1)
            //    //adminRepository.SignUp(customer);
            //else
                customerRepository.SignUp(customer);
        }

        public void makeLogin()
        {
            Console.WriteLine("Enter your User Name");
            string name = Console.ReadLine();
            Console.WriteLine("Enter your password");
            string password = Console.ReadLine();

            Console.WriteLine("Enter your role");
            Console.WriteLine("1. Admin");
            Console.WriteLine("2. User");
            byte choice = Convert.ToByte(Console.ReadLine());
            Customer customer = new Customer(name,password);
            //if (choice == 1)
            //    //adminRepository.LogIn(customer);
            //else
                customerRepository.LogIn(customer);
        }
    }
}

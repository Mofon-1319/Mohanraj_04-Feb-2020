using System;

namespace BusApp
{
    class Customer
    {
        public string userName { get; set; }
        public string userId { get; set; }
        public string userPassword { get; set; }

        public string userPhone { get; set; }

        public DateTime dateOfBirth { get; set; }

        public Customer()
        {

        }
        public Customer(string userId, string password)
        {
            this.userId = userId;
            this.userPassword = password;
        }
        public Customer(string name, string userId, string password, string phone, DateTime date)
        {
            this.userName = name;
            this.userId = userId;
            this.userPassword = password;
            this.userPhone = phone;
            dateOfBirth = date;
        }
    }
}

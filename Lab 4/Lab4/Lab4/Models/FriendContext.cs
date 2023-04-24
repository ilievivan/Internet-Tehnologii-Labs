using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Lab4.Models
{
    public class FriendContext : DbContext
    {
        public DbSet<Friend> Friends { get; set; }
        public FriendContext(): base("FriendConnection") { }

        public static FriendContext Create()
        {
            return new FriendContext();
        }
    }
}
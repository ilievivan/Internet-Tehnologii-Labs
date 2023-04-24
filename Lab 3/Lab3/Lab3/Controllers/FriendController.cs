using Lab3.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lab3.Controllers
{
    public class FriendController : Controller
    {
        private static List<Friend> friends = new List<Friend>()
        {
            new Friend(){ Id = 0, Ime = "Example Exampleson", MestoZiveenje = "Example street 0"}
        };

        // GET: Friend
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ShowAllFriends()
        {
            return View(friends);
        }
        public ActionResult NewFriend()
        {
            Friend model = new Friend();
            return View(model);
        }
        [HttpPost]
        public ActionResult InsertNewFriend(Friend model)
        {
            if (!ModelState.IsValid)
            {
                return View("NewFriend", model);
            }
            friends.Add(model);
            return View("ShowAllFriends", friends);
        }

        public ActionResult EditFriend(int id)
        {
            var model = friends.ElementAt(id);
            return View(model);
        }
        [HttpPost]
        public ActionResult EditFriend(Friend model)
        {
            if (!ModelState.IsValid)
            {
                return View("EditFriend", model);
            }
            var forUpdate = friends.ElementAt(model.Id);
            forUpdate.Ime = model.Ime;
            forUpdate.MestoZiveenje = model.MestoZiveenje;
            return View("ShowAllFriends", friends);
        }

        public ActionResult DeleteFriend(int id)
        {
            friends.RemoveAt(id);
            return View("ShowAllFriends", friends);
        }
    }
}
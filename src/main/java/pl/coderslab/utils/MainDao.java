package pl.coderslab.utils;

public class MainDao {
    public static void main(String[] args) {
        UserDAO userDao = new UserDAO();
        User user = new User();
        user.setUserName("Julia");
        user.setEmail("kruchkowska@gmail.com");
        user.setPassword("kr");
        userDao.create(user);
        User user2 = new User();
        user2.setUserName("Jaro");
        user2.setEmail("jaro@gmail.com");
        user2.setUserName("jaro");
        userDao.create(user2);

//        User read = userDao.showUser(1);
//        System.out.println(read);
//        User dwa = userDao.showUser(2);
//        System.out.println(dwa);

//        User userToUpdate = userDao.showUser(1);
//        userToUpdate.setUserName("Arkadiusz");
//        userToUpdate.setEmail("arek@coderslab.pl");
//        userToUpdate.setPassword("superPassword");
//        userDao.update(userToUpdate);

//        userDao.delete(2);

        User[] all = userDao.showAll();
        for (User u : all) {
            System.out.println(u);
        }
    }
}

-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE DATABASE `ii-test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ii-test`;

CREATE TABLE `comment` (
  `id_comment` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `text_preprocesor` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `comment` (`id_comment`, `name`, `comment`, `text_preprocesor`, `created`) VALUES
(1,	'Poznamka 1',	'Správná poznámka.',	'texy',	'2018-10-11 10:25:23'),
(2,	'Lorem ipsum',	'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis condimentum augue id magna semper rutrum. Nam quis nulla. Aenean id metus id velit ullamcorper pulvinar. Vivamus luctus egestas leo. Etiam bibendum elit eget erat. Ut tempus purus at lorem. Etiam posuere lacus quis dolor. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam rhoncus aliquam metus.\r\n\r\nAliquam in lorem sit amet leo accumsan lacinia. Vivamus luctus egestas leo. Aliquam erat volutpat. Praesent vitae arcu tempor neque lacinia pretium. Sed vel lectus. Donec odio tempus molestie, porttitor ut, iaculis quis, sem. Aliquam erat volutpat. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Donec vitae arcu. Vivamus luctus egestas leo. In dapibus augue non sapien. Aliquam erat volutpat. Maecenas lorem. Aliquam in lorem sit amet leo accumsan lacinia.\r\n\r\nNulla est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Integer pellentesque quam vel velit. Donec iaculis gravida nulla. Phasellus faucibus molestie nisl. Morbi imperdiet, mauris ac auctor dictum, nisl ligula egestas nulla, et sollicitudin sem purus in lacus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin in tellus sit amet nibh dignissim sagittis. Donec iaculis gravida nulla. Aenean placerat. Praesent in mauris eu tortor porttitor accumsan. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam posuere lacus quis dolor. In dapibus augue non sapien. Integer vulputate sem a nibh rutrum consequat. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n\r\nFusce suscipit libero eget elit. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Praesent vitae arcu tempor neque lacinia pretium. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. In dapibus augue non sapien. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Aliquam erat volutpat. Fusce aliquam vestibulum ipsum. Vivamus ac leo pretium faucibus. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Integer in sapien. Integer imperdiet lectus quis justo.\r\n\r\nCurabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien. Integer imperdiet lectus quis justo. Nullam rhoncus aliquam metus. Etiam sapien elit, consequat eget, tristique non, venenatis quis, ante. Maecenas sollicitudin. Nullam dapibus fermentum ipsum. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. In sem justo, commodo ut, suscipit at, pharetra vitae, orci. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',	'texy',	'2018-10-11 10:30:52'),
(3,	'Welcome!',	'Welcome!\r\n--------\r\n\r\nNette is a **rapid development framework**\r\nfor PHP. It enables PHP users to rapidly\r\ndevelop smart and robust web applications,\r\nwithout any loss to flexibility.\r\n\r\n- Extremely Simple\r\n- Event handling model\r\n- Components\r\n- No configuration',	'texy',	'2018-10-11 10:36:27'),
(4,	'Test',	'Tohle je test.',	'texy',	'2018-10-11 14:40:11'),
(5,	'Poznámka MySql',	'Text TextTextTextTextTextTextTextTextTextText TextTextTextTextTextText TextTextTextTextTextText',	'texy',	'2018-10-12 09:18:01');

-- 2018-10-12 09:38:51

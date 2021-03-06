-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 04 2015 г., 12:56
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `jeisport`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` VALUES('<p><img alt="" src="/ckeditor/kcfinder/upload/images/back.jpg" style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px; height:375px; line-height:22.3999996185303px; width:500px" /><span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px">Таким образом постоянный количественный рост и сфера нашей активности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Товарищи! сложившаяся структура организации требуют от нас анализа направлений прогрессивного развития. Идейные соображения высшего порядка, а также консультация с широким активом влечет за собой процесс внедрения и модернизации форм развития.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `e-mail` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` VALUES(2, 'murat', '', 'murat123', '', '', '');
INSERT INTO `admins` VALUES(3, 'viktor', '', 'viktor123', '', '', '');
INSERT INTO `admins` VALUES(4, 'andrey', '', '123', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_email`
--

DROP TABLE IF EXISTS `admin_email`;
CREATE TABLE IF NOT EXISTS `admin_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_email`
--

INSERT INTO `admin_email` VALUES('admin@example.com');

-- --------------------------------------------------------

--
-- Структура таблицы `backcalls`
--

DROP TABLE IF EXISTS `backcalls`;
CREATE TABLE IF NOT EXISTS `backcalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `point_url` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` enum('on','0','','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `backcalls`
--

INSERT INTO `backcalls` VALUES(14, 'выфв', 'выфвф', '/edinoborstvaa/ajkidott/dasda/', '11.02.2015 03:45:58', '127.0.0.1', 'on');
INSERT INTO `backcalls` VALUES(15, 'вфыв', 'выфв', '/edinoborstvaa/ajkidott/dasda/', '11.02.2015 03:54:29', '127.0.0.1', '');
INSERT INTO `backcalls` VALUES(16, 'фыв', 'фыв', '/edinoborstvaa/ajkidott/dasda/', '14.02.2015 04:16:21', '127.0.0.1', '');
INSERT INTO `backcalls` VALUES(17, 'Андрей', 'выф выф вфыв', '/edinoborstvaa/ajkidott/dasda/', '14.02.2015 10:05:54', '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `pos` enum('main','news','blog','') NOT NULL,
  `clicks` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` VALUES(1, 'http://filezilla.ru/', 'main', 1, 85, 'cfdeaab665d10378ee62812c62bdce8f.jpg', 0, 'on');
INSERT INTO `banners` VALUES(2, 'http://vk.com/bestad', 'news', 2, 36, '80cd8478295674887819f8cc4a12df48.jpg', 0, 'on');
INSERT INTO `banners` VALUES(6, 'http://mail.ru/', 'blog', 0, 16, '59d2b7d7a7ac77eda9816c5ff5fef1f4.jpg', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` VALUES(1, 'Пост!', 'post', '<p>Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;</p>\r\n', '0000-00-00 00:00:00', '', '', '', '1371e81502a177207b027773273e9ff1.jpg', 0, 27, 'on');
INSERT INTO `blog` VALUES(2, 'Новая статья в блоге', 'novaja_statja_v_bloge', '<p><span style="color:rgba(0, 0, 0, 0.498039); font-family:arial,sans-serif; font-size:18px">New coub editor is perfect for quickly looping and remixing videos. Now you can create video mashups with up to 10 video sources!</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', '7505771fd12b8978f7c389461a26ab39.jpg', 0, 3, 'on');
INSERT INTO `blog` VALUES(3, 'Тестовый блог', 'testovyj_blog', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Однажды, много лет назад, я разговорилась со знакомым программистом и среди прочих реплик помню его фразу о том, что изобретена некая гениальная штука, благодаря которой все знания человечества станут доступны любому субъекту, &ndash; Всемирная информационная сеть.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'eebd2ae770ab15ef03c165066f6e957c.jpg', 0, 0, 'on');
INSERT INTO `blog` VALUES(4, 'Опасности райских кущей', 'opasnosti_rajskih_kuschej', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Интернет для меня третий перелом в истории человеческой культуры &ndash; после появления языка и изобретения книги</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote1" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">1</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. В Древней Греции оратора, выступавшего на площади в Афинах, слышали не более двадцати тысяч человек. Это был звуковой предел общения: география языка &ndash; это племя. Потом пришла книга, которая расширила круг общения до географии страны.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'cd89c797df227cc97e84275e28534807.jpg', 0, 0, 'on');
INSERT INTO `blog` VALUES(5, 'Дмитрий Быков (2011)', 'dmitrij_bykov_(2011)', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Со временем возникнет новая иерархия человечества, новая гуманная цивилизация</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote4" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">4</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. А пока&hellip; пока в Интернете доминирует &laquo;оборотная сторона&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote5" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">5</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;этого грандиозного открытия-прорыва &ndash; его разрушительная сила</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote6" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">6</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Неслучайно</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote7" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">7</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;Всемирная сеть становится орудием в руках террористов, хакеров и фанатиков всех мастей.</span></p>\r\n', '2015-01-01 12:00:00', '', '', '', '88711998a9e0c151d082fdfb9c75a8e0.jpg', 0, 0, 'on');
INSERT INTO `blog` VALUES(6, 'Новый пост в блоге! Урааа!!!!', 'novyj_post_v_bloge_uraaa', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Самый наглядный факт современности: Интернет, который немыслимо расширил возможности простого человека для высказывания и действия, лежит в основе нынешнего &laquo;восстания масс&raquo;. Это явление, возникшее еще в первой половине двадцатого века, вызванное вульгаризацией культуры &ndash; материальной и духовной, породило и коммунизм, и нацизм</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote8" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">8</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Сегодня он обращен к &laquo;массовому&raquo; в любом человеке, питается от него и удовлетворяет его во всех отношениях &ndash; от языкового до политического и потребительского</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote9" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">9</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">, ибо невероятно приблизил к народу желанные &laquo;хлеб и зрелища&raquo;, включая самые низкие</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote10" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">10</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Этот наперсник, проповедник и исповедник толп превращает в &laquo;шум&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote11" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">11</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;все, к чему прикасается, чему дает жизнь,</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote12" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">12</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;плодит пошлость, невежество и агрессию, давая им неслыханный, завораживающий выход не просто наружу, а на весь мир. Опаснее всего, что это игривое и очень смышленое &laquo;дитя&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote13" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">13</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;новой цивилизации уничтожает критерии &ndash; духовные, нравственные и поведенческие коды существования человеческого общества</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote14" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">14</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Что поделать, в интернет-пространстве все равны в самом площадном смысле этого слова</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote15" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">15</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. И я думаю: не слишком ли высокую цену мы платим за прекрасную возможность поговорить с далеким другом, прочесть редкую книгу, увидеть гениальную картину и услышать великую оперу? Не чересчур ли рано сделано это грандиозное открытие? Иными словами, доросло ли человечество до самого себя?</span></p>\r\n', '2015-02-14 08:43:00', '', '', '', 'dba04eba85e4c714d19f7e8d17ad7199.jpg', 0, 9, 'on');
INSERT INTO `blog` VALUES(7, 'Новый пост в блоге! Урааа!!!!', 'novyj_post_v_bloge_uraaa', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Самый наглядный факт современности: Интернет, который немыслимо расширил возможности простого человека для высказывания и действия, лежит в основе нынешнего &laquo;восстания масс&raquo;. Это явление, возникшее еще в первой половине двадцатого века, вызванное вульгаризацией культуры &ndash; материальной и духовной, породило и коммунизм, и нацизм</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote8" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">8</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Сегодня он обращен к &laquo;массовому&raquo; в любом человеке, питается от него и удовлетворяет его во всех отношениях &ndash; от языкового до политического и потребительского</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote9" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">9</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">, ибо невероятно приблизил к народу желанные &laquo;хлеб и зрелища&raquo;, включая самые низкие</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote10" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">10</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Этот наперсник, проповедник и исповедник толп превращает в &laquo;шум&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote11" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">11</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;все, к чему прикасается, чему дает жизнь,</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote12" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">12</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;плодит пошлость, невежество и агрессию, давая им неслыханный, завораживающий выход не просто наружу, а на весь мир. Опаснее всего, что это игривое и очень смышленое &laquo;дитя&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote13" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">13</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;новой цивилизации уничтожает критерии &ndash; духовные, нравственные и поведенческие коды существования человеческого общества</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote14" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">14</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Что поделать, в интернет-пространстве все равны в самом площадном смысле этого слова</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote15" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">15</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. И я думаю: не слишком ли высокую цену мы платим за прекрасную возможность поговорить с далеким другом, прочесть редкую книгу, увидеть гениальную картину и услышать великую оперу? Не чересчур ли рано сделано это грандиозное открытие? Иными словами, доросло ли человечество до самого себя?</span></p>\r\n', '2015-02-14 08:43:00', '', '', '', 'dba04eba85e4c714d19f7e8d17ad7199.jpg', 0, 6, 'on');
INSERT INTO `blog` VALUES(8, 'Новая статья в блоге', 'novaja_statja_v_bloge', '<p><span style="color:rgba(0, 0, 0, 0.498039); font-family:arial,sans-serif; font-size:18px">New coub editor is perfect for quickly looping and remixing videos. Now you can create video mashups with up to 10 video sources!</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', '7505771fd12b8978f7c389461a26ab39.jpg', 0, 3, 'on');
INSERT INTO `blog` VALUES(9, 'Опасности райских кущей', 'opasnosti_rajskih_kuschej', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Интернет для меня третий перелом в истории человеческой культуры &ndash; после появления языка и изобретения книги</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote1" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">1</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. В Древней Греции оратора, выступавшего на площади в Афинах, слышали не более двадцати тысяч человек. Это был звуковой предел общения: география языка &ndash; это племя. Потом пришла книга, которая расширила круг общения до географии страны.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'cd89c797df227cc97e84275e28534807.jpg', 0, 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `h1` varchar(255) NOT NULL,
  `h2` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `text` text NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` VALUES(55, 'Фитнес клубы', 'СЕКЦИИ И КЛУБЫ ЕДИНОБОРСТВ', 'вфывфы', 'fitnes-club', '87785e3e0c820addcc924a926e262770.png', 'a2e2962e050f5e56bfb2c2ed266a2c9c.jpg', '581e1115d8756264290bd5f80fff39da.png', '', '', '', '<p><span style="font-family:rbcgrotesk-light; font-size:medium">Устали однообразно курсировать между домом и работой? Решили разбавить этот тандем яркой ноткой, занявшись своим телом и здоровьем, ведь &laquo;в здоровом теле &ndash; здоровый дух&raquo;? А может, вы ищете спортивные секции для детей, поскольку осенью снижается физическая активность, столь необходимая для полноценного развития ребенка? Тогда самое время сесть поудобнее и изучить самую актуальную и подробную информацию про спортивные клубы Москвы! Здесь вы найдете самые разные спортивные клубы, которые могут быть расположены около вашего места работы или дома, а также спортивные секции, где будут заниматься ваши дети. На сайте Jeisport.ru представлено огромное разнообразие спортивных клубов Москвы, среди которых вы найдете: Спортклубы и спортивные школы, в которых проводятся занятия по единоборствам: кикбоксинг, бокс, боевое самбо, муай-тай (тайский бокс) и многие другие, Фитнесклубы &ndash; замечательная возможность для прекрасных дам подтянуть фигуру и всегда выглядеть потрясающе: в нашем каталоге представлено большое разнообразие спортивных секций по аква-аэробике, пилатесу, фитнесу, в том числе для молодых мам и беременных, а также тренажерные залы, Спортклубы с бассейнами &ndash; то, что нужно для полного избавления от стрессов: в каталоге вы найдете бассейны по своему вкусу &ndash; крытые или открытые, Спортивные игры &ndash; раздел нашего сайта, который наверняка заинтересует любителей оздоровиться и насладиться игрой в баскетбол, бадминтон, пляжный или классический волейбол, хоккей, пинг-понг, керлинг, гольф и, конечно, футбол. К вашим услугам огромный выбор спортклубов, предлагающих посетителям поиграть в эти и другие спортивные игры, Танцы &ndash; для вашего удобства все спортивные танцевальные секции сгруппированы по танцевальным направлениям: латина, go-go, R&amp;B, бальные, клубные, хореография и многие другие; здесь же вы найдете спортивные танцевальные секции для детей, Активный отдых &ndash; то, что нужно для полного расслабления и восстановления сил! В этой категории любители острых ощущений и не только найдут информацию о парашютном спорте, велотрассах, роллердромах, скалодромах, скейтпарках, паркуре и полетах на шаре в Москве. С нами выбор спортивного клуба или секции в Москве &ndash; сплошное удовольствие!</span></p>\n', 0, 'on');
INSERT INTO `categories` VALUES(56, 'Единоборства', 'Единоборства', 'Единоборства1', 'edinoborstvaa', '584e049bf5f0610f0918139c9a7270ea.png', 'ca7ef2004ffb357de189dc48734bfd81.jpg', '5df20f2e456705a916602dadf3d6870e.png', '', '', '', '<p>dasdas</p>\r\n', 1, 'on');
INSERT INTO `categories` VALUES(57, 'Активный отдых', 'вфывыфв', '', 'aktivnyj_otdyh', '9b1f2de2704ed0e2312d0a5053affa05.png', '2517551ff51f3f1bd94b801fd1f0ac6a.jpg', '67692f50c3395cd1414392bdc663f0fb.png', '', '', '', '', 0, 'on');
INSERT INTO `categories` VALUES(58, 'Бассейны', 'выфвфы', 'выфвфы', 'bassejny', '2e2c2b3fd12a0dd0156ee040168c9c02.png', 'a5c9bf021581dbc7e667339dfed21aca.jpg', 'c7254a6077c4d45a5f6bafdf6e3b4ff1.png', '', '', '', '', 0, 'on');
INSERT INTO `categories` VALUES(59, 'Спортивные игры', 'dasd', '', 'sportivnye_igry', 'a44517d81303ae02dd889140d770797b.png', 'fa00f9ccc0cd7eb60b229720832eaf2c.jpg', '5f2a042d48368242d740d3d875ae15b5.png', '', '', '', '', 0, 'on');
INSERT INTO `categories` VALUES(60, 'Танцы', 'dasdas', 'вфывыф', 'tancy', '30ca7e2f783bb84fd95222651a34499c.png', 'f5f06ef8e0173cfb10d7e5b4b99c8808.jpg', 'e110f86c48cc589a95c9c0f7dee80a90.png', '', '', '', '', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email`
--

INSERT INTO `email` VALUES('protected.for@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` VALUES(1, 'Андрей', 'protected.for@gmail.com', '+996554709700', 'выф', 'QADSADASD', '26.11.2014 16:34:43', '127.0.0.1', 'on');
INSERT INTO `feedback` VALUES(2, 'Андрей', 'protected.for@gmail.com', '+996554709700', 'вфывфыв', 'фывфывыф', '27.11.2014 15:13:26', '127.0.0.1', 'on');
INSERT INTO `feedback` VALUES(4, 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/', 'rmknab@gmail.com', 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/', 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/', 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/<br />\n <a href="http://seointensiv.blogspot.ru/">SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/</a> [url=http://seointensiv.blogspot.ru/]SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/[/url]', '10.12.2014 05:28:18', '5.44.169.179', 'on');
INSERT INTO `feedback` VALUES(6, 'das', 'dsa@das.ru', 'dasdas', 'dsadsa', 'dsadsa', '08.02.2015 20:55:03', '127.0.0.1', 'on');
INSERT INTO `feedback` VALUES(7, 'dsad', 'dsad@dsa.ru', 'dsa', 'dsa', 'dsa', '10.02.2015 23:28:33', '127.0.0.1', 'on');
INSERT INTO `feedback` VALUES(8, 'Фыв', 'asd@asd.ru', 'фыв', 'выфвыфв', 'ыфвыфвфы', '14.02.2015 07:45:48', '127.0.0.1', 'on');
INSERT INTO `feedback` VALUES(9, 'Фыв', 'asd@asd.ru', 'фыв', 'выфвыфв', 'ыфвыфвфы', '14.02.2015 07:48:37', '127.0.0.1', 'on');
INSERT INTO `feedback` VALUES(10, 'Андрей Федотов', 'protected.for@gmail.com', '+996554709700', 'asd', 'das dasd adas', '14.02.2015 07:54:35', '127.0.0.1', 'on');
INSERT INTO `feedback` VALUES(11, 'dasdas', 'asd@asd.ru', 'asd', 'asd', 'asd', '14.02.2015 07:59:09', '127.0.0.1', 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `maintext`
--

DROP TABLE IF EXISTS `maintext`;
CREATE TABLE IF NOT EXISTS `maintext` (
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `maintext`
--

INSERT INTO `maintext` VALUES('<p><span style="color:rgb(0, 0, 0); font-family:rbcgrotesk-regular; font-size:14px">Современные секции единоборств - это огромный выбор различных видов борьбы. Если вы мечтаете о крепких кулаках, тогда можно записаться в секцию бокса, если ваша цель крепкие ноги &ndash; тхэквондо и т.д. Не зависимо от выбранногонаправления всегда необходимо ориентироваться на опыт, профессионализм тренера. Именно от его навыков и умения донести ученикам основы и азы боевого искусства зависит эффективность занятий.Польза или вред при посещении школы единоборств?</span></p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` VALUES(32, '12312312312312312312312', '12312312312312312312312', '', '2015-02-24 23:12:00', '', '', '', '8ebf239d559ceeb1e1fc87dfb69a6f42.jpg', 0, 0, 0, 'on');
INSERT INTO `news` VALUES(33, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 13, 'on');
INSERT INTO `news` VALUES(34, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on');
INSERT INTO `news` VALUES(35, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on');
INSERT INTO `news` VALUES(36, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on');
INSERT INTO `news` VALUES(37, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on');
INSERT INTO `news` VALUES(38, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on');
INSERT INTO `news` VALUES(39, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
CREATE TABLE IF NOT EXISTS `news_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `news_categories`
--

INSERT INTO `news_categories` VALUES(1, 'Футбол', 0, 'on');
INSERT INTO `news_categories` VALUES(2, 'Воллейбол', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_acl_groups`
--

DROP TABLE IF EXISTS `phpbb_acl_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` VALUES(1, 0, 88, 0, 1);
INSERT INTO `phpbb_acl_groups` VALUES(1, 0, 97, 0, 1);
INSERT INTO `phpbb_acl_groups` VALUES(1, 0, 115, 0, 1);
INSERT INTO `phpbb_acl_groups` VALUES(5, 0, 0, 5, 0);
INSERT INTO `phpbb_acl_groups` VALUES(5, 0, 0, 1, 0);
INSERT INTO `phpbb_acl_groups` VALUES(2, 0, 0, 6, 0);
INSERT INTO `phpbb_acl_groups` VALUES(3, 0, 0, 6, 0);
INSERT INTO `phpbb_acl_groups` VALUES(4, 0, 0, 5, 0);
INSERT INTO `phpbb_acl_groups` VALUES(4, 0, 0, 10, 0);
INSERT INTO `phpbb_acl_groups` VALUES(1, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES(2, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES(3, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES(6, 1, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES(1, 2, 0, 17, 0);
INSERT INTO `phpbb_acl_groups` VALUES(2, 2, 0, 15, 0);
INSERT INTO `phpbb_acl_groups` VALUES(3, 2, 0, 15, 0);
INSERT INTO `phpbb_acl_groups` VALUES(4, 2, 0, 21, 0);
INSERT INTO `phpbb_acl_groups` VALUES(5, 2, 0, 14, 0);
INSERT INTO `phpbb_acl_groups` VALUES(5, 2, 0, 10, 0);
INSERT INTO `phpbb_acl_groups` VALUES(6, 2, 0, 19, 0);
INSERT INTO `phpbb_acl_groups` VALUES(7, 0, 0, 23, 0);
INSERT INTO `phpbb_acl_groups` VALUES(7, 2, 0, 24, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_acl_options`
--

DROP TABLE IF EXISTS `phpbb_acl_options`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=122 ;

--
-- Дамп данных таблицы `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` VALUES(1, 'f_', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(2, 'f_announce', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(3, 'f_attach', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(4, 'f_bbcode', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(5, 'f_bump', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(6, 'f_delete', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(7, 'f_download', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(8, 'f_edit', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(9, 'f_email', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(10, 'f_flash', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(11, 'f_icons', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(12, 'f_ignoreflood', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(13, 'f_img', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(14, 'f_list', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(15, 'f_noapprove', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(16, 'f_poll', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(17, 'f_post', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(18, 'f_postcount', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(19, 'f_print', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(20, 'f_read', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(21, 'f_reply', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(22, 'f_report', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(23, 'f_search', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(24, 'f_sigs', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(25, 'f_smilies', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(26, 'f_sticky', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(27, 'f_subscribe', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(28, 'f_user_lock', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(29, 'f_vote', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(30, 'f_votechg', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(31, 'f_softdelete', 0, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(32, 'm_', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(33, 'm_approve', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(34, 'm_chgposter', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(35, 'm_delete', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(36, 'm_edit', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(37, 'm_info', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(38, 'm_lock', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(39, 'm_merge', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(40, 'm_move', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(41, 'm_report', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(42, 'm_split', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(43, 'm_softdelete', 1, 1, 0);
INSERT INTO `phpbb_acl_options` VALUES(44, 'm_ban', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(45, 'm_warn', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(46, 'a_', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(47, 'a_aauth', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(48, 'a_attach', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(49, 'a_authgroups', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(50, 'a_authusers', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(51, 'a_backup', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(52, 'a_ban', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(53, 'a_bbcode', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(54, 'a_board', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(55, 'a_bots', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(56, 'a_clearlogs', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(57, 'a_email', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(58, 'a_extensions', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(59, 'a_fauth', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(60, 'a_forum', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(61, 'a_forumadd', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(62, 'a_forumdel', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(63, 'a_group', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(64, 'a_groupadd', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(65, 'a_groupdel', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(66, 'a_icons', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(67, 'a_jabber', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(68, 'a_language', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(69, 'a_mauth', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(70, 'a_modules', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(71, 'a_names', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(72, 'a_phpinfo', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(73, 'a_profile', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(74, 'a_prune', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(75, 'a_ranks', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(76, 'a_reasons', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(77, 'a_roles', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(78, 'a_search', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(79, 'a_server', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(80, 'a_styles', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(81, 'a_switchperm', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(82, 'a_uauth', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(83, 'a_user', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(84, 'a_userdel', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(85, 'a_viewauth', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(86, 'a_viewlogs', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(87, 'a_words', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(88, 'u_', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(89, 'u_attach', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(90, 'u_chgavatar', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(91, 'u_chgcensors', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(92, 'u_chgemail', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(93, 'u_chggrp', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(94, 'u_chgname', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(95, 'u_chgpasswd', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(96, 'u_chgprofileinfo', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(97, 'u_download', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(98, 'u_hideonline', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(99, 'u_ignoreflood', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(100, 'u_masspm', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(101, 'u_masspm_group', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(102, 'u_pm_attach', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(103, 'u_pm_bbcode', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(104, 'u_pm_delete', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(105, 'u_pm_download', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(106, 'u_pm_edit', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(107, 'u_pm_emailpm', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(108, 'u_pm_flash', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(109, 'u_pm_forward', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(110, 'u_pm_img', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(111, 'u_pm_printpm', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(112, 'u_pm_smilies', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(113, 'u_readpm', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(114, 'u_savedrafts', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(115, 'u_search', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(116, 'u_sendemail', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(117, 'u_sendim', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(118, 'u_sendpm', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(119, 'u_sig', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(120, 'u_viewonline', 1, 0, 0);
INSERT INTO `phpbb_acl_options` VALUES(121, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_acl_roles`
--

DROP TABLE IF EXISTS `phpbb_acl_roles`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` VALUES(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1);
INSERT INTO `phpbb_acl_roles` VALUES(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3);
INSERT INTO `phpbb_acl_roles` VALUES(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4);
INSERT INTO `phpbb_acl_roles` VALUES(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2);
INSERT INTO `phpbb_acl_roles` VALUES(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3);
INSERT INTO `phpbb_acl_roles` VALUES(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1);
INSERT INTO `phpbb_acl_roles` VALUES(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2);
INSERT INTO `phpbb_acl_roles` VALUES(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4);
INSERT INTO `phpbb_acl_roles` VALUES(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5);
INSERT INTO `phpbb_acl_roles` VALUES(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3);
INSERT INTO `phpbb_acl_roles` VALUES(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1);
INSERT INTO `phpbb_acl_roles` VALUES(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2);
INSERT INTO `phpbb_acl_roles` VALUES(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4);
INSERT INTO `phpbb_acl_roles` VALUES(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7);
INSERT INTO `phpbb_acl_roles` VALUES(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5);
INSERT INTO `phpbb_acl_roles` VALUES(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1);
INSERT INTO `phpbb_acl_roles` VALUES(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2);
INSERT INTO `phpbb_acl_roles` VALUES(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3);
INSERT INTO `phpbb_acl_roles` VALUES(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9);
INSERT INTO `phpbb_acl_roles` VALUES(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8);
INSERT INTO `phpbb_acl_roles` VALUES(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6);
INSERT INTO `phpbb_acl_roles` VALUES(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4);
INSERT INTO `phpbb_acl_roles` VALUES(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6);
INSERT INTO `phpbb_acl_roles` VALUES(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_acl_roles_data`
--

DROP TABLE IF EXISTS `phpbb_acl_roles_data`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` VALUES(1, 46, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 48, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 49, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 50, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 52, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 53, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 54, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 58, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 59, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 60, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 61, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 62, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 63, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 64, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 65, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 66, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 69, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 71, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 73, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 74, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 75, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 76, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 83, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 84, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 86, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(1, 87, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 46, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 49, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 50, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 59, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 60, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 61, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 62, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 69, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 74, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(2, 86, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 46, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 49, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 50, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 52, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 63, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 64, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 65, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 75, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 83, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(3, 86, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 46, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 47, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 48, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 49, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 50, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 51, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 52, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 53, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 54, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 55, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 56, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 57, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 58, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 59, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 60, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 61, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 62, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 63, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 64, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 65, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 66, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 67, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 68, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 69, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 70, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 71, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 72, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 73, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 74, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 75, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 76, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 77, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 78, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 79, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 80, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 81, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 82, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 83, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 84, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 85, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 86, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(4, 87, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 89, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 90, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 91, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 93, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 94, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 95, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 96, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 97, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 98, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 99, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 100, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 101, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 102, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 103, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 104, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 105, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 107, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 108, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 109, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 110, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 111, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 112, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 113, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 114, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 115, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 116, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 117, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 118, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 119, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 120, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(5, 121, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 89, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 90, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 91, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 95, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 96, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 97, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 98, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 100, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 101, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 102, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 103, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 104, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 105, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 107, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 110, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 111, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 112, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 113, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 114, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 115, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 116, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 117, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 118, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 119, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(6, 121, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 90, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 91, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 95, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 96, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 97, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 98, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 103, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 104, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 105, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 109, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 110, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 111, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 112, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 113, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 118, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 119, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(7, 121, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 90, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 91, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 95, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 97, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 98, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 100, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 101, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 113, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 118, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 119, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(8, 121, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 88, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 90, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 91, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 92, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 95, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 96, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 97, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 98, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 103, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 104, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 105, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 106, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 109, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 110, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 111, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 112, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 113, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 118, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 119, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(9, 121, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 32, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 33, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 34, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 35, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 36, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 37, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 38, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 39, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 40, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 41, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 42, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 43, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 44, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(10, 45, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 32, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 33, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 35, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 36, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 37, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 38, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 39, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 40, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 41, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 42, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 43, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(11, 45, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(12, 32, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(12, 35, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(12, 36, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(12, 37, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(12, 41, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(12, 43, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(13, 32, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(13, 33, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(13, 36, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 2, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 5, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 6, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 10, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 11, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 12, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 16, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 26, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 28, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 30, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(14, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 5, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 6, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 11, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 30, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(15, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(16, 1, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(17, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(17, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(17, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(17, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(17, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(17, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(17, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(18, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(19, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(19, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(19, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(19, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(19, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 15, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(20, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 3, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 5, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 6, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 11, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 16, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 30, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(21, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 1, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 4, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 7, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 8, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 9, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 13, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 14, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 15, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 16, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 17, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 18, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 19, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 20, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 21, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 22, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 23, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 24, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 25, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 27, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 29, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(22, 31, 1);
INSERT INTO `phpbb_acl_roles_data` VALUES(23, 96, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(23, 100, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(23, 101, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(23, 118, 0);
INSERT INTO `phpbb_acl_roles_data` VALUES(24, 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_acl_users`
--

DROP TABLE IF EXISTS `phpbb_acl_users`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` VALUES(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_attachments`
--

DROP TABLE IF EXISTS `phpbb_attachments`;
CREATE TABLE IF NOT EXISTS `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_banlist`
--

DROP TABLE IF EXISTS `phpbb_banlist`;
CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_bbcodes`
--

DROP TABLE IF EXISTS `phpbb_bbcodes`;
CREATE TABLE IF NOT EXISTS `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_bookmarks`
--

DROP TABLE IF EXISTS `phpbb_bookmarks`;
CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_bots`
--

DROP TABLE IF EXISTS `phpbb_bots`;
CREATE TABLE IF NOT EXISTS `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=46 ;

--
-- Дамп данных таблицы `phpbb_bots`
--

INSERT INTO `phpbb_bots` VALUES(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', '');
INSERT INTO `phpbb_bots` VALUES(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', '');
INSERT INTO `phpbb_bots` VALUES(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', '');
INSERT INTO `phpbb_bots` VALUES(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', '');
INSERT INTO `phpbb_bots` VALUES(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', '');
INSERT INTO `phpbb_bots` VALUES(6, 1, 'Bing [Bot]', 8, 'bingbot/', '');
INSERT INTO `phpbb_bots` VALUES(7, 1, 'Exabot [Bot]', 9, 'Exabot', '');
INSERT INTO `phpbb_bots` VALUES(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', '');
INSERT INTO `phpbb_bots` VALUES(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', '');
INSERT INTO `phpbb_bots` VALUES(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', '');
INSERT INTO `phpbb_bots` VALUES(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', '');
INSERT INTO `phpbb_bots` VALUES(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', '');
INSERT INTO `phpbb_bots` VALUES(13, 1, 'Google Desktop', 15, 'Google Desktop', '');
INSERT INTO `phpbb_bots` VALUES(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', '');
INSERT INTO `phpbb_bots` VALUES(15, 1, 'Google [Bot]', 17, 'Googlebot', '');
INSERT INTO `phpbb_bots` VALUES(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', '');
INSERT INTO `phpbb_bots` VALUES(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', '');
INSERT INTO `phpbb_bots` VALUES(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', '');
INSERT INTO `phpbb_bots` VALUES(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', '');
INSERT INTO `phpbb_bots` VALUES(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', '');
INSERT INTO `phpbb_bots` VALUES(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', '');
INSERT INTO `phpbb_bots` VALUES(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', '');
INSERT INTO `phpbb_bots` VALUES(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', '');
INSERT INTO `phpbb_bots` VALUES(24, 1, 'MSN [Bot]', 26, 'msnbot/', '');
INSERT INTO `phpbb_bots` VALUES(25, 1, 'MSNbot Media', 27, 'msnbot-media/', '');
INSERT INTO `phpbb_bots` VALUES(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', '');
INSERT INTO `phpbb_bots` VALUES(27, 1, 'Online link [Validator]', 29, 'online link validator', '');
INSERT INTO `phpbb_bots` VALUES(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', '');
INSERT INTO `phpbb_bots` VALUES(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', '');
INSERT INTO `phpbb_bots` VALUES(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', '');
INSERT INTO `phpbb_bots` VALUES(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', '');
INSERT INTO `phpbb_bots` VALUES(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', '');
INSERT INTO `phpbb_bots` VALUES(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', '');
INSERT INTO `phpbb_bots` VALUES(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', '');
INSERT INTO `phpbb_bots` VALUES(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', '');
INSERT INTO `phpbb_bots` VALUES(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', '');
INSERT INTO `phpbb_bots` VALUES(37, 1, 'Voyager [Bot]', 39, 'voyager/', '');
INSERT INTO `phpbb_bots` VALUES(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', '');
INSERT INTO `phpbb_bots` VALUES(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', '');
INSERT INTO `phpbb_bots` VALUES(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', '');
INSERT INTO `phpbb_bots` VALUES(41, 1, 'YaCy [Bot]', 43, 'yacybot', '');
INSERT INTO `phpbb_bots` VALUES(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', '');
INSERT INTO `phpbb_bots` VALUES(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', '');
INSERT INTO `phpbb_bots` VALUES(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', '');
INSERT INTO `phpbb_bots` VALUES(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_config`
--

DROP TABLE IF EXISTS `phpbb_config`;
CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_config`
--

INSERT INTO `phpbb_config` VALUES('active_sessions', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_attachments', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_autologin', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_avatar', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_avatar_gravatar', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_avatar_local', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_avatar_remote', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_avatar_remote_upload', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_avatar_upload', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_bbcode', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_birthdays', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_bookmarks', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_cdn', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_emailreuse', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_forum_notify', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_live_searches', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_mass_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_name_chars', 'USERNAME_CHARS_ANY', 0);
INSERT INTO `phpbb_config` VALUES('allow_namechange', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_nocensors', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_password_reset', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_pm_attach', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_pm_report', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_post_flash', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_post_links', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_privmsg', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_quick_reply', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_sig', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_sig_bbcode', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_sig_flash', '0', 0);
INSERT INTO `phpbb_config` VALUES('allow_sig_img', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_sig_links', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_sig_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_sig_smilies', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_smilies', '1', 0);
INSERT INTO `phpbb_config` VALUES('allow_topic_notify', '1', 0);
INSERT INTO `phpbb_config` VALUES('assets_version', '1', 0);
INSERT INTO `phpbb_config` VALUES('attachment_quota', '52428800', 0);
INSERT INTO `phpbb_config` VALUES('auth_bbcode_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('auth_flash_pm', '0', 0);
INSERT INTO `phpbb_config` VALUES('auth_img_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('auth_method', 'db', 0);
INSERT INTO `phpbb_config` VALUES('auth_oauth_bitly_key', '', 0);
INSERT INTO `phpbb_config` VALUES('auth_oauth_bitly_secret', '', 0);
INSERT INTO `phpbb_config` VALUES('auth_oauth_facebook_key', '', 0);
INSERT INTO `phpbb_config` VALUES('auth_oauth_facebook_secret', '', 0);
INSERT INTO `phpbb_config` VALUES('auth_oauth_google_key', '', 0);
INSERT INTO `phpbb_config` VALUES('auth_oauth_google_secret', '', 0);
INSERT INTO `phpbb_config` VALUES('auth_smilies_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('avatar_filesize', '6144', 0);
INSERT INTO `phpbb_config` VALUES('avatar_gallery_path', 'images/avatars/gallery', 0);
INSERT INTO `phpbb_config` VALUES('avatar_max_height', '90', 0);
INSERT INTO `phpbb_config` VALUES('avatar_max_width', '90', 0);
INSERT INTO `phpbb_config` VALUES('avatar_min_height', '20', 0);
INSERT INTO `phpbb_config` VALUES('avatar_min_width', '20', 0);
INSERT INTO `phpbb_config` VALUES('avatar_path', 'images/avatars/upload', 0);
INSERT INTO `phpbb_config` VALUES('avatar_salt', 'fd0b5f7e2669d2edbd7459e3f5b2d8cb', 0);
INSERT INTO `phpbb_config` VALUES('board_contact', 'kenjetaev.ermek@hotmail.com', 0);
INSERT INTO `phpbb_config` VALUES('board_contact_name', '', 0);
INSERT INTO `phpbb_config` VALUES('board_disable', '0', 0);
INSERT INTO `phpbb_config` VALUES('board_disable_msg', '', 0);
INSERT INTO `phpbb_config` VALUES('board_email', 'kenjetaev.ermek@hotmail.com', 0);
INSERT INTO `phpbb_config` VALUES('board_email_form', '0', 0);
INSERT INTO `phpbb_config` VALUES('board_email_sig', 'Thanks, The Management', 0);
INSERT INTO `phpbb_config` VALUES('board_hide_emails', '1', 0);
INSERT INTO `phpbb_config` VALUES('board_index_text', '', 0);
INSERT INTO `phpbb_config` VALUES('board_startdate', '1418454675', 0);
INSERT INTO `phpbb_config` VALUES('board_timezone', 'UTC', 0);
INSERT INTO `phpbb_config` VALUES('browser_check', '1', 0);
INSERT INTO `phpbb_config` VALUES('bump_interval', '10', 0);
INSERT INTO `phpbb_config` VALUES('bump_type', 'd', 0);
INSERT INTO `phpbb_config` VALUES('cache_gc', '7200', 0);
INSERT INTO `phpbb_config` VALUES('cache_last_gc', '1424982949', 1);
INSERT INTO `phpbb_config` VALUES('captcha_gd', '1', 0);
INSERT INTO `phpbb_config` VALUES('captcha_gd_3d_noise', '1', 0);
INSERT INTO `phpbb_config` VALUES('captcha_gd_fonts', '1', 0);
INSERT INTO `phpbb_config` VALUES('captcha_gd_foreground_noise', '0', 0);
INSERT INTO `phpbb_config` VALUES('captcha_gd_wave', '0', 0);
INSERT INTO `phpbb_config` VALUES('captcha_gd_x_grid', '25', 0);
INSERT INTO `phpbb_config` VALUES('captcha_gd_y_grid', '25', 0);
INSERT INTO `phpbb_config` VALUES('captcha_plugin', 'core.captcha.plugins.gd', 0);
INSERT INTO `phpbb_config` VALUES('check_attachment_content', '1', 0);
INSERT INTO `phpbb_config` VALUES('check_dnsbl', '0', 0);
INSERT INTO `phpbb_config` VALUES('chg_passforce', '0', 0);
INSERT INTO `phpbb_config` VALUES('confirm_refresh', '1', 0);
INSERT INTO `phpbb_config` VALUES('contact_admin_form_enable', '1', 0);
INSERT INTO `phpbb_config` VALUES('cookie_domain', 'jeisport', 0);
INSERT INTO `phpbb_config` VALUES('cookie_name', 'phpbb3_6hsj5', 0);
INSERT INTO `phpbb_config` VALUES('cookie_path', '/', 0);
INSERT INTO `phpbb_config` VALUES('cookie_secure', '0', 0);
INSERT INTO `phpbb_config` VALUES('coppa_enable', '0', 0);
INSERT INTO `phpbb_config` VALUES('coppa_fax', '', 0);
INSERT INTO `phpbb_config` VALUES('coppa_mail', '', 0);
INSERT INTO `phpbb_config` VALUES('cron_lock', '0', 1);
INSERT INTO `phpbb_config` VALUES('database_gc', '604800', 0);
INSERT INTO `phpbb_config` VALUES('database_last_gc', '1423885834', 1);
INSERT INTO `phpbb_config` VALUES('dbms_version', '5.5.25', 0);
INSERT INTO `phpbb_config` VALUES('default_dateformat', 'D M d, Y g:i a', 0);
INSERT INTO `phpbb_config` VALUES('default_lang', 'ru', 0);
INSERT INTO `phpbb_config` VALUES('default_style', '1', 0);
INSERT INTO `phpbb_config` VALUES('delete_time', '0', 0);
INSERT INTO `phpbb_config` VALUES('display_last_edited', '1', 0);
INSERT INTO `phpbb_config` VALUES('display_last_subject', '1', 0);
INSERT INTO `phpbb_config` VALUES('display_order', '0', 0);
INSERT INTO `phpbb_config` VALUES('edit_time', '0', 0);
INSERT INTO `phpbb_config` VALUES('email_check_mx', '1', 0);
INSERT INTO `phpbb_config` VALUES('email_enable', '1', 0);
INSERT INTO `phpbb_config` VALUES('email_function_name', 'mail', 0);
INSERT INTO `phpbb_config` VALUES('email_max_chunk_size', '50', 0);
INSERT INTO `phpbb_config` VALUES('email_package_size', '20', 0);
INSERT INTO `phpbb_config` VALUES('enable_confirm', '1', 0);
INSERT INTO `phpbb_config` VALUES('enable_mod_rewrite', '0', 0);
INSERT INTO `phpbb_config` VALUES('enable_pm_icons', '1', 0);
INSERT INTO `phpbb_config` VALUES('enable_post_confirm', '1', 0);
INSERT INTO `phpbb_config` VALUES('extension_force_unstable', '0', 0);
INSERT INTO `phpbb_config` VALUES('feed_enable', '1', 0);
INSERT INTO `phpbb_config` VALUES('feed_forum', '1', 0);
INSERT INTO `phpbb_config` VALUES('feed_http_auth', '0', 0);
INSERT INTO `phpbb_config` VALUES('feed_item_statistics', '1', 0);
INSERT INTO `phpbb_config` VALUES('feed_limit_post', '15', 0);
INSERT INTO `phpbb_config` VALUES('feed_limit_topic', '10', 0);
INSERT INTO `phpbb_config` VALUES('feed_overall', '1', 0);
INSERT INTO `phpbb_config` VALUES('feed_overall_forums', '0', 0);
INSERT INTO `phpbb_config` VALUES('feed_topic', '1', 0);
INSERT INTO `phpbb_config` VALUES('feed_topics_active', '0', 0);
INSERT INTO `phpbb_config` VALUES('feed_topics_new', '1', 0);
INSERT INTO `phpbb_config` VALUES('flood_interval', '15', 0);
INSERT INTO `phpbb_config` VALUES('force_server_vars', '0', 0);
INSERT INTO `phpbb_config` VALUES('form_token_lifetime', '7200', 0);
INSERT INTO `phpbb_config` VALUES('form_token_mintime', '0', 0);
INSERT INTO `phpbb_config` VALUES('form_token_sid_guests', '1', 0);
INSERT INTO `phpbb_config` VALUES('forward_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('forwarded_for_check', '0', 0);
INSERT INTO `phpbb_config` VALUES('full_folder_action', '2', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_mysql_max_word_len', '254', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_mysql_min_word_len', '4', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_native_common_thres', '5', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_native_load_upd', '1', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_native_max_chars', '14', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_native_min_chars', '3', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_postgres_max_word_len', '254', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_postgres_min_word_len', '4', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_postgres_ts_name', 'simple', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_sphinx_id', 'f8eb0c0ad3c74f7d', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_sphinx_indexer_mem_limit', '512', 0);
INSERT INTO `phpbb_config` VALUES('fulltext_sphinx_stopwords', '0', 0);
INSERT INTO `phpbb_config` VALUES('gzip_compress', '0', 0);
INSERT INTO `phpbb_config` VALUES('hot_threshold', '25', 0);
INSERT INTO `phpbb_config` VALUES('icons_path', 'images/icons', 0);
INSERT INTO `phpbb_config` VALUES('img_create_thumbnail', '0', 0);
INSERT INTO `phpbb_config` VALUES('img_display_inlined', '1', 0);
INSERT INTO `phpbb_config` VALUES('img_imagick', '', 0);
INSERT INTO `phpbb_config` VALUES('img_link_height', '0', 0);
INSERT INTO `phpbb_config` VALUES('img_link_width', '0', 0);
INSERT INTO `phpbb_config` VALUES('img_max_height', '0', 0);
INSERT INTO `phpbb_config` VALUES('img_max_thumb_width', '400', 0);
INSERT INTO `phpbb_config` VALUES('img_max_width', '0', 0);
INSERT INTO `phpbb_config` VALUES('img_min_thumb_filesize', '12000', 0);
INSERT INTO `phpbb_config` VALUES('ip_check', '3', 0);
INSERT INTO `phpbb_config` VALUES('ip_login_limit_max', '50', 0);
INSERT INTO `phpbb_config` VALUES('ip_login_limit_time', '21600', 0);
INSERT INTO `phpbb_config` VALUES('ip_login_limit_use_forwarded', '0', 0);
INSERT INTO `phpbb_config` VALUES('jab_enable', '0', 0);
INSERT INTO `phpbb_config` VALUES('jab_host', '', 0);
INSERT INTO `phpbb_config` VALUES('jab_package_size', '20', 0);
INSERT INTO `phpbb_config` VALUES('jab_password', '', 0);
INSERT INTO `phpbb_config` VALUES('jab_port', '5222', 0);
INSERT INTO `phpbb_config` VALUES('jab_use_ssl', '0', 0);
INSERT INTO `phpbb_config` VALUES('jab_username', '', 0);
INSERT INTO `phpbb_config` VALUES('last_queue_run', '0', 1);
INSERT INTO `phpbb_config` VALUES('ldap_base_dn', '', 0);
INSERT INTO `phpbb_config` VALUES('ldap_email', '', 0);
INSERT INTO `phpbb_config` VALUES('ldap_password', '', 0);
INSERT INTO `phpbb_config` VALUES('ldap_port', '', 0);
INSERT INTO `phpbb_config` VALUES('ldap_server', '', 0);
INSERT INTO `phpbb_config` VALUES('ldap_uid', '', 0);
INSERT INTO `phpbb_config` VALUES('ldap_user', '', 0);
INSERT INTO `phpbb_config` VALUES('ldap_user_filter', '', 0);
INSERT INTO `phpbb_config` VALUES('legend_sort_groupname', '0', 0);
INSERT INTO `phpbb_config` VALUES('limit_load', '0', 0);
INSERT INTO `phpbb_config` VALUES('limit_search_load', '0', 0);
INSERT INTO `phpbb_config` VALUES('load_anon_lastread', '0', 0);
INSERT INTO `phpbb_config` VALUES('load_birthdays', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_cpf_memberlist', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_cpf_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_cpf_viewprofile', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_cpf_viewtopic', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_db_lastread', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_db_track', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0);
INSERT INTO `phpbb_config` VALUES('load_jumpbox', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_moderators', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_notifications', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_online', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_online_guests', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_online_time', '5', 0);
INSERT INTO `phpbb_config` VALUES('load_onlinetrack', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_search', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_tplcompile', '0', 0);
INSERT INTO `phpbb_config` VALUES('load_unreads_search', '1', 0);
INSERT INTO `phpbb_config` VALUES('load_user_activity', '1', 0);
INSERT INTO `phpbb_config` VALUES('max_attachments', '3', 0);
INSERT INTO `phpbb_config` VALUES('max_attachments_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('max_autologin_time', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_filesize', '262144', 0);
INSERT INTO `phpbb_config` VALUES('max_filesize_pm', '262144', 0);
INSERT INTO `phpbb_config` VALUES('max_login_attempts', '3', 0);
INSERT INTO `phpbb_config` VALUES('max_name_chars', '20', 0);
INSERT INTO `phpbb_config` VALUES('max_num_search_keywords', '10', 0);
INSERT INTO `phpbb_config` VALUES('max_pass_chars', '100', 0);
INSERT INTO `phpbb_config` VALUES('max_poll_options', '10', 0);
INSERT INTO `phpbb_config` VALUES('max_post_chars', '60000', 0);
INSERT INTO `phpbb_config` VALUES('max_post_font_size', '200', 0);
INSERT INTO `phpbb_config` VALUES('max_post_img_height', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_post_img_width', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_post_smilies', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_post_urls', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_quote_depth', '3', 0);
INSERT INTO `phpbb_config` VALUES('max_reg_attempts', '5', 0);
INSERT INTO `phpbb_config` VALUES('max_sig_chars', '255', 0);
INSERT INTO `phpbb_config` VALUES('max_sig_font_size', '200', 0);
INSERT INTO `phpbb_config` VALUES('max_sig_img_height', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_sig_img_width', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_sig_smilies', '0', 0);
INSERT INTO `phpbb_config` VALUES('max_sig_urls', '5', 0);
INSERT INTO `phpbb_config` VALUES('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0);
INSERT INTO `phpbb_config` VALUES('min_name_chars', '3', 0);
INSERT INTO `phpbb_config` VALUES('min_pass_chars', '6', 0);
INSERT INTO `phpbb_config` VALUES('min_post_chars', '1', 0);
INSERT INTO `phpbb_config` VALUES('min_search_author_chars', '3', 0);
INSERT INTO `phpbb_config` VALUES('new_member_group_default', '0', 0);
INSERT INTO `phpbb_config` VALUES('new_member_post_limit', '3', 0);
INSERT INTO `phpbb_config` VALUES('newest_user_colour', '', 1);
INSERT INTO `phpbb_config` VALUES('newest_user_id', '57', 1);
INSERT INTO `phpbb_config` VALUES('newest_username', 'murat', 1);
INSERT INTO `phpbb_config` VALUES('num_files', '0', 1);
INSERT INTO `phpbb_config` VALUES('num_posts', '1', 1);
INSERT INTO `phpbb_config` VALUES('num_topics', '1', 1);
INSERT INTO `phpbb_config` VALUES('num_users', '10', 1);
INSERT INTO `phpbb_config` VALUES('override_user_style', '0', 0);
INSERT INTO `phpbb_config` VALUES('pass_complex', 'PASS_TYPE_ANY', 0);
INSERT INTO `phpbb_config` VALUES('plupload_last_gc', '0', 1);
INSERT INTO `phpbb_config` VALUES('plupload_salt', 'd44936812a4fd23f9aac1eab9c249f31', 0);
INSERT INTO `phpbb_config` VALUES('pm_edit_time', '0', 0);
INSERT INTO `phpbb_config` VALUES('pm_max_boxes', '4', 0);
INSERT INTO `phpbb_config` VALUES('pm_max_msgs', '50', 0);
INSERT INTO `phpbb_config` VALUES('pm_max_recipients', '0', 0);
INSERT INTO `phpbb_config` VALUES('posts_per_page', '10', 0);
INSERT INTO `phpbb_config` VALUES('print_pm', '1', 0);
INSERT INTO `phpbb_config` VALUES('questionnaire_unique_id', '5b7e323c13fc2705', 0);
INSERT INTO `phpbb_config` VALUES('queue_interval', '60', 0);
INSERT INTO `phpbb_config` VALUES('rand_seed', '6599e66e14e05df4168c612a093e5baf', 1);
INSERT INTO `phpbb_config` VALUES('rand_seed_last_update', '1424982945', 1);
INSERT INTO `phpbb_config` VALUES('ranks_path', 'images/ranks', 0);
INSERT INTO `phpbb_config` VALUES('read_notification_expire_days', '30', 0);
INSERT INTO `phpbb_config` VALUES('read_notification_gc', '86400', 0);
INSERT INTO `phpbb_config` VALUES('read_notification_last_gc', '1423885846', 1);
INSERT INTO `phpbb_config` VALUES('record_online_date', '1418561949', 1);
INSERT INTO `phpbb_config` VALUES('record_online_users', '3', 1);
INSERT INTO `phpbb_config` VALUES('referer_validation', '1', 0);
INSERT INTO `phpbb_config` VALUES('require_activation', '0', 0);
INSERT INTO `phpbb_config` VALUES('script_path', '/forum', 0);
INSERT INTO `phpbb_config` VALUES('search_anonymous_interval', '0', 0);
INSERT INTO `phpbb_config` VALUES('search_block_size', '250', 0);
INSERT INTO `phpbb_config` VALUES('search_gc', '7200', 0);
INSERT INTO `phpbb_config` VALUES('search_indexing_state', '', 1);
INSERT INTO `phpbb_config` VALUES('search_interval', '0', 0);
INSERT INTO `phpbb_config` VALUES('search_last_gc', '1424975331', 1);
INSERT INTO `phpbb_config` VALUES('search_store_results', '1800', 0);
INSERT INTO `phpbb_config` VALUES('search_type', '\\phpbb\\search\\fulltext_native', 0);
INSERT INTO `phpbb_config` VALUES('secure_allow_deny', '1', 0);
INSERT INTO `phpbb_config` VALUES('secure_allow_empty_referer', '1', 0);
INSERT INTO `phpbb_config` VALUES('secure_downloads', '0', 0);
INSERT INTO `phpbb_config` VALUES('server_name', 'jeisport', 0);
INSERT INTO `phpbb_config` VALUES('server_port', '80', 0);
INSERT INTO `phpbb_config` VALUES('server_protocol', 'http://', 0);
INSERT INTO `phpbb_config` VALUES('session_gc', '3600', 0);
INSERT INTO `phpbb_config` VALUES('session_last_gc', '1424976342', 1);
INSERT INTO `phpbb_config` VALUES('session_length', '3600', 0);
INSERT INTO `phpbb_config` VALUES('site_desc', 'A short text to describe your forum', 0);
INSERT INTO `phpbb_config` VALUES('site_home_text', '', 0);
INSERT INTO `phpbb_config` VALUES('site_home_url', '', 0);
INSERT INTO `phpbb_config` VALUES('sitename', 'yourdomain.com', 0);
INSERT INTO `phpbb_config` VALUES('smilies_path', 'images/smilies', 0);
INSERT INTO `phpbb_config` VALUES('smilies_per_page', '50', 0);
INSERT INTO `phpbb_config` VALUES('smtp_auth_method', 'LOGIN', 0);
INSERT INTO `phpbb_config` VALUES('smtp_delivery', '1', 0);
INSERT INTO `phpbb_config` VALUES('smtp_host', 'smtp.googlemail.com', 0);
INSERT INTO `phpbb_config` VALUES('smtp_password', '????????????????321', 0);
INSERT INTO `phpbb_config` VALUES('smtp_port', '25', 0);
INSERT INTO `phpbb_config` VALUES('smtp_username', 'jeisportofficial', 0);
INSERT INTO `phpbb_config` VALUES('teampage_forums', '1', 0);
INSERT INTO `phpbb_config` VALUES('teampage_memberships', '1', 0);
INSERT INTO `phpbb_config` VALUES('topics_per_page', '25', 0);
INSERT INTO `phpbb_config` VALUES('tpl_allow_php', '0', 0);
INSERT INTO `phpbb_config` VALUES('upload_dir_size', '0', 1);
INSERT INTO `phpbb_config` VALUES('upload_icons_path', 'images/upload_icons', 0);
INSERT INTO `phpbb_config` VALUES('upload_path', 'files', 0);
INSERT INTO `phpbb_config` VALUES('use_system_cron', '0', 0);
INSERT INTO `phpbb_config` VALUES('version', '3.1.2', 0);
INSERT INTO `phpbb_config` VALUES('warnings_expire_days', '90', 0);
INSERT INTO `phpbb_config` VALUES('warnings_gc', '14400', 0);
INSERT INTO `phpbb_config` VALUES('warnings_last_gc', '1424975334', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_config_text`
--

DROP TABLE IF EXISTS `phpbb_config_text`;
CREATE TABLE IF NOT EXISTS `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_config_text`
--

INSERT INTO `phpbb_config_text` VALUES('contact_admin_info', '');
INSERT INTO `phpbb_config_text` VALUES('contact_admin_info_bitfield', '');
INSERT INTO `phpbb_config_text` VALUES('contact_admin_info_flags', '7');
INSERT INTO `phpbb_config_text` VALUES('contact_admin_info_uid', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_confirm`
--

DROP TABLE IF EXISTS `phpbb_confirm`;
CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_confirm`
--

INSERT INTO `phpbb_confirm` VALUES('18c21da62b874dae2dd5b94921d3d23e', '4f2dcf7b1b491989ff3f292f39a36fd0', 1, '75YS', 554738469, 0);
INSERT INTO `phpbb_confirm` VALUES('ddb86c37fad5489b95901c3cabcb4b20', 'bc0c027a7e408077b1a50dacf4bf29fb', 1, '1WHF', 1175694164, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_disallow`
--

DROP TABLE IF EXISTS `phpbb_disallow`;
CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_drafts`
--

DROP TABLE IF EXISTS `phpbb_drafts`;
CREATE TABLE IF NOT EXISTS `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_ext`
--

DROP TABLE IF EXISTS `phpbb_ext`;
CREATE TABLE IF NOT EXISTS `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ext_name` (`ext_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_extensions`
--

DROP TABLE IF EXISTS `phpbb_extensions`;
CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Дамп данных таблицы `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` VALUES(1, 1, 'gif');
INSERT INTO `phpbb_extensions` VALUES(2, 1, 'png');
INSERT INTO `phpbb_extensions` VALUES(3, 1, 'jpeg');
INSERT INTO `phpbb_extensions` VALUES(4, 1, 'jpg');
INSERT INTO `phpbb_extensions` VALUES(5, 1, 'tif');
INSERT INTO `phpbb_extensions` VALUES(6, 1, 'tiff');
INSERT INTO `phpbb_extensions` VALUES(7, 1, 'tga');
INSERT INTO `phpbb_extensions` VALUES(8, 2, 'gtar');
INSERT INTO `phpbb_extensions` VALUES(9, 2, 'gz');
INSERT INTO `phpbb_extensions` VALUES(10, 2, 'tar');
INSERT INTO `phpbb_extensions` VALUES(11, 2, 'zip');
INSERT INTO `phpbb_extensions` VALUES(12, 2, 'rar');
INSERT INTO `phpbb_extensions` VALUES(13, 2, 'ace');
INSERT INTO `phpbb_extensions` VALUES(14, 2, 'torrent');
INSERT INTO `phpbb_extensions` VALUES(15, 2, 'tgz');
INSERT INTO `phpbb_extensions` VALUES(16, 2, 'bz2');
INSERT INTO `phpbb_extensions` VALUES(17, 2, '7z');
INSERT INTO `phpbb_extensions` VALUES(18, 3, 'txt');
INSERT INTO `phpbb_extensions` VALUES(19, 3, 'c');
INSERT INTO `phpbb_extensions` VALUES(20, 3, 'h');
INSERT INTO `phpbb_extensions` VALUES(21, 3, 'cpp');
INSERT INTO `phpbb_extensions` VALUES(22, 3, 'hpp');
INSERT INTO `phpbb_extensions` VALUES(23, 3, 'diz');
INSERT INTO `phpbb_extensions` VALUES(24, 3, 'csv');
INSERT INTO `phpbb_extensions` VALUES(25, 3, 'ini');
INSERT INTO `phpbb_extensions` VALUES(26, 3, 'log');
INSERT INTO `phpbb_extensions` VALUES(27, 3, 'js');
INSERT INTO `phpbb_extensions` VALUES(28, 3, 'xml');
INSERT INTO `phpbb_extensions` VALUES(29, 4, 'xls');
INSERT INTO `phpbb_extensions` VALUES(30, 4, 'xlsx');
INSERT INTO `phpbb_extensions` VALUES(31, 4, 'xlsm');
INSERT INTO `phpbb_extensions` VALUES(32, 4, 'xlsb');
INSERT INTO `phpbb_extensions` VALUES(33, 4, 'doc');
INSERT INTO `phpbb_extensions` VALUES(34, 4, 'docx');
INSERT INTO `phpbb_extensions` VALUES(35, 4, 'docm');
INSERT INTO `phpbb_extensions` VALUES(36, 4, 'dot');
INSERT INTO `phpbb_extensions` VALUES(37, 4, 'dotx');
INSERT INTO `phpbb_extensions` VALUES(38, 4, 'dotm');
INSERT INTO `phpbb_extensions` VALUES(39, 4, 'pdf');
INSERT INTO `phpbb_extensions` VALUES(40, 4, 'ai');
INSERT INTO `phpbb_extensions` VALUES(41, 4, 'ps');
INSERT INTO `phpbb_extensions` VALUES(42, 4, 'ppt');
INSERT INTO `phpbb_extensions` VALUES(43, 4, 'pptx');
INSERT INTO `phpbb_extensions` VALUES(44, 4, 'pptm');
INSERT INTO `phpbb_extensions` VALUES(45, 4, 'odg');
INSERT INTO `phpbb_extensions` VALUES(46, 4, 'odp');
INSERT INTO `phpbb_extensions` VALUES(47, 4, 'ods');
INSERT INTO `phpbb_extensions` VALUES(48, 4, 'odt');
INSERT INTO `phpbb_extensions` VALUES(49, 4, 'rtf');
INSERT INTO `phpbb_extensions` VALUES(50, 5, 'rm');
INSERT INTO `phpbb_extensions` VALUES(51, 5, 'ram');
INSERT INTO `phpbb_extensions` VALUES(52, 6, 'wma');
INSERT INTO `phpbb_extensions` VALUES(53, 6, 'wmv');
INSERT INTO `phpbb_extensions` VALUES(54, 7, 'swf');
INSERT INTO `phpbb_extensions` VALUES(55, 8, 'mov');
INSERT INTO `phpbb_extensions` VALUES(56, 8, 'm4v');
INSERT INTO `phpbb_extensions` VALUES(57, 8, 'm4a');
INSERT INTO `phpbb_extensions` VALUES(58, 8, 'mp4');
INSERT INTO `phpbb_extensions` VALUES(59, 8, '3gp');
INSERT INTO `phpbb_extensions` VALUES(60, 8, '3g2');
INSERT INTO `phpbb_extensions` VALUES(61, 8, 'qt');
INSERT INTO `phpbb_extensions` VALUES(62, 9, 'mpeg');
INSERT INTO `phpbb_extensions` VALUES(63, 9, 'mpg');
INSERT INTO `phpbb_extensions` VALUES(64, 9, 'mp3');
INSERT INTO `phpbb_extensions` VALUES(65, 9, 'ogg');
INSERT INTO `phpbb_extensions` VALUES(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_extension_groups`
--

DROP TABLE IF EXISTS `phpbb_extension_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` VALUES(1, 'IMAGES', 1, 1, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0);
INSERT INTO `phpbb_extension_groups` VALUES(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_forums`
--

DROP TABLE IF EXISTS `phpbb_forums`;
CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) unsigned NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `phpbb_forums`
--

INSERT INTO `phpbb_forums` VALUES(1, 0, 1, 4, '', 'Категория', '', '', 7, '', '', '', 1, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1418454675, 'admin', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0);
INSERT INTO `phpbb_forums` VALUES(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:18:"Категория";i:1;i:0;}}', 'Ваш первый форум', 'описание первого форума', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 2, 'Welcome to phpBB3', 1418454675, 'admin', 'AA0000', 48, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 7, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_forums_access`
--

DROP TABLE IF EXISTS `phpbb_forums_access`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_forums_track`
--

DROP TABLE IF EXISTS `phpbb_forums_track`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_forums_watch`
--

DROP TABLE IF EXISTS `phpbb_forums_watch`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_groups`
--

DROP TABLE IF EXISTS `phpbb_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `phpbb_groups`
--

INSERT INTO `phpbb_groups` VALUES(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);
INSERT INTO `phpbb_groups` VALUES(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);
INSERT INTO `phpbb_groups` VALUES(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);
INSERT INTO `phpbb_groups` VALUES(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0);
INSERT INTO `phpbb_groups` VALUES(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0);
INSERT INTO `phpbb_groups` VALUES(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5);
INSERT INTO `phpbb_groups` VALUES(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_icons`
--

DROP TABLE IF EXISTS `phpbb_icons`;
CREATE TABLE IF NOT EXISTS `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `phpbb_icons`
--

INSERT INTO `phpbb_icons` VALUES(1, 'misc/fire.gif', 16, 16, 1, 1);
INSERT INTO `phpbb_icons` VALUES(2, 'smile/redface.gif', 16, 16, 9, 1);
INSERT INTO `phpbb_icons` VALUES(3, 'smile/mrgreen.gif', 16, 16, 10, 1);
INSERT INTO `phpbb_icons` VALUES(4, 'misc/heart.gif', 16, 16, 4, 1);
INSERT INTO `phpbb_icons` VALUES(5, 'misc/star.gif', 16, 16, 2, 1);
INSERT INTO `phpbb_icons` VALUES(6, 'misc/radioactive.gif', 16, 16, 3, 1);
INSERT INTO `phpbb_icons` VALUES(7, 'misc/thinking.gif', 16, 16, 5, 1);
INSERT INTO `phpbb_icons` VALUES(8, 'smile/info.gif', 16, 16, 8, 1);
INSERT INTO `phpbb_icons` VALUES(9, 'smile/question.gif', 16, 16, 6, 1);
INSERT INTO `phpbb_icons` VALUES(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_lang`
--

DROP TABLE IF EXISTS `phpbb_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `phpbb_lang`
--

INSERT INTO `phpbb_lang` VALUES(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited');
INSERT INTO `phpbb_lang` VALUES(2, 'ru', 'ru', 'Russian', 'Русский', 'rxu');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_log`
--

DROP TABLE IF EXISTS `phpbb_log`;
CREATE TABLE IF NOT EXISTS `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `phpbb_log`
--

INSERT INTO `phpbb_log` VALUES(1, 2, 2, 0, 0, 0, '127.0.0.1', 1418454713, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1659:"<strong>EMAIL/SMTP</strong><br /><em>/phpBB3/install/index.php</em><br /><br />Ran into problems sending Mail at <strong>Line 1505</strong>. Response: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 y10sm963243lal.43 - gsmtp\r\n<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP y10sm963243lal.43 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [195.114.245.15]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [195.114.245.15]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 y10sm963243lal.43 - gsmtp\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(2, 0, 2, 0, 0, 0, '127.0.0.1', 1418454713, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:"3.1.2";}');
INSERT INTO `phpbb_log` VALUES(3, 0, 2, 0, 0, 0, '127.0.0.1', 1418454785, 'LOG_LANGUAGE_PACK_UPDATED', 'a:1:{i:0;s:7:"Russian";}');
INSERT INTO `phpbb_log` VALUES(4, 0, 2, 0, 0, 0, '127.0.0.1', 1418454798, 'LOG_LANGUAGE_PACK_UPDATED', 'a:1:{i:0;s:7:"Russian";}');
INSERT INTO `phpbb_log` VALUES(5, 0, 2, 0, 0, 0, '127.0.0.1', 1418454985, 'LOG_CONFIG_SETTINGS', '');
INSERT INTO `phpbb_log` VALUES(6, 0, 2, 0, 0, 0, '127.0.0.1', 1418455029, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(7, 0, 2, 0, 0, 0, '127.0.0.1', 1418455073, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(8, 0, 2, 0, 0, 0, '127.0.0.1', 1418455173, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(9, 0, 2, 0, 0, 0, '127.0.0.1', 1418455315, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:30:"Ваш первый форум";}');
INSERT INTO `phpbb_log` VALUES(10, 2, 1, 0, 0, 0, '127.0.0.1', 1418549298, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1682:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1772458lad.17 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP w8sm1772458lad.17 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1772458lad.17 - gsmtp\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(11, 0, 2, 0, 0, 0, '127.0.0.1', 1418549400, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(12, 0, 2, 0, 0, 0, '127.0.0.1', 1418549429, 'LOG_USER_DELETED', 'a:1:{i:0;s:5:"user1";}');
INSERT INTO `phpbb_log` VALUES(13, 2, 1, 0, 0, 0, '127.0.0.1', 1418551729, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1679:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 l5sm511533lam.48 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP l5sm511533lam.48 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 l5sm511533lam.48 - gsmtp\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(14, 2, 1, 0, 0, 0, '127.0.0.1', 1418552037, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1682:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 e5sm1787058laf.44 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP e5sm1787058laf.44 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 e5sm1787058laf.44 - gsmtp\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(15, 2, 1, 0, 0, 0, '127.0.0.1', 1418552191, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1682:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1798387lad.17 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP w8sm1798387lad.17 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1798387lad.17 - gsmtp\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(16, 0, 2, 0, 0, 0, '127.0.0.1', 1418639608, 'LOG_ADMIN_AUTH_FAIL', '');
INSERT INTO `phpbb_log` VALUES(17, 0, 2, 0, 0, 0, '127.0.0.1', 1418639619, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(18, 2, 1, 0, 0, 0, '127.0.0.1', 1423236568, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:697:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />SMTP-сервер не поддерживает аутентификацию.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP zr10sm466615lbb.45 - gsmtp\r\n<br /># EHLO PROTECTED-PC<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [158.181.225.62]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(19, 2, 1, 0, 0, 0, '127.0.0.1', 1423236851, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:695:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />SMTP-сервер не поддерживает аутентификацию.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP g5sm478931lag.11 - gsmtp\r\n<br /># EHLO PROTECTED-PC<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [158.181.225.62]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(20, 0, 2, 0, 0, 0, '127.0.0.1', 1423239284, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(21, 0, 2, 0, 0, 0, '127.0.0.1', 1423239733, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(22, 2, 1, 0, 0, 0, '127.0.0.1', 1423466074, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:695:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />SMTP-сервер не поддерживает аутентификацию.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP v5sm1946053lby.9 - gsmtp\r\n<br /># EHLO PROTECTED-PC<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [158.181.225.62]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n</p><br />";}');
INSERT INTO `phpbb_log` VALUES(23, 0, 2, 0, 0, 0, '127.0.0.1', 1423885867, 'LOG_ADMIN_AUTH_SUCCESS', '');
INSERT INTO `phpbb_log` VALUES(24, 0, 2, 0, 0, 0, '127.0.0.1', 1423886024, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:18:"Категория";}');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_login_attempts`
--

DROP TABLE IF EXISTS `phpbb_login_attempts`;
CREATE TABLE IF NOT EXISTS `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_migrations`
--

DROP TABLE IF EXISTS `phpbb_migrations`;
CREATE TABLE IF NOT EXISTS `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `migration_end_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`migration_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_migrations`
--

INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1";}', 1, 1, '', 1418454714, 1418454714);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode";i:1;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12";i:2;s:57:"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module";i:3;s:39:"\\phpbb\\db\\migration\\data\\v310\\allow_cdn";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";i:5;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";i:6;s:40:"\\phpbb\\db\\migration\\data\\v310\\boardindex";i:7;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";i:8;s:45:"\\phpbb\\db\\migration\\data\\v310\\forgot_password";i:9;s:41:"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite";i:10;s:49:"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop";i:11;s:40:"\\phpbb\\db\\migration\\data\\v310\\namespaces";i:12;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";i:13;s:60:"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert";i:14;s:38:"\\phpbb\\db\\migration\\data\\v310\\plupload";i:15;s:51:"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth";i:16;s:52:"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules";i:17;s:38:"\\phpbb\\db\\migration\\data\\v310\\teampage";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha1";i:1;s:51:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\avatar_types";i:2;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";i:3;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:0:{}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";i:2;s:52:"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop";i:3;s:63:"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";i:5;s:54:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";i:1;s:52:"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module";i:2;s:59:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";i:1;s:50:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\board_contact_name";i:3;s:44:"\\phpbb\\db\\migration\\data\\v310\\jquery_update2";i:4;s:50:"\\phpbb\\db\\migration\\data\\v310\\live_searches_config";i:5;s:49:"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta3";i:1;s:69:"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable";i:2;s:58:"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:"\\phpbb\\db\\migration\\data\\v310\\extensions";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p2";i:2;s:41:"\\phpbb\\db\\migration\\data\\v310\\timezone_p2";i:3;s:52:"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display";i:4;s:46:"\\phpbb\\db\\migration\\data\\v310\\migrations_table";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";i:1;s:40:"\\phpbb\\db\\migration\\data\\v310\\bot_update";}', 1, 1, '', 1418454715, 1418454715);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";i:1;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta4";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form";i:3;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook";i:5;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype";i:7;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter";i:8;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc1";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes";i:3;s:41:"\\phpbb\\db\\migration\\data\\v310\\search_type";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";i:1;s:57:"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";i:1;s:66:"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc5";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p1";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:"\\phpbb\\db\\migration\\data\\v310\\timezone";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";}', 1, 1, '', 1418454717, 1418454717);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";}', 1, 1, '', 1418454718, 1418454718);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";i:1;s:42:"\\phpbb\\db\\migration\\data\\v31x\\style_update";}', 1, 1, '', 1418454718, 1418454718);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v312rc1";}', 1, 1, '', 1418454718, 1418454718);
INSERT INTO `phpbb_migrations` VALUES('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";i:1;s:49:"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global";}', 1, 1, '', 1418454718, 1418454718);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_moderator_cache`
--

DROP TABLE IF EXISTS `phpbb_moderator_cache`;
CREATE TABLE IF NOT EXISTS `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_modules`
--

DROP TABLE IF EXISTS `phpbb_modules`;
CREATE TABLE IF NOT EXISTS `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=207 ;

--
-- Дамп данных таблицы `phpbb_modules`
--

INSERT INTO `phpbb_modules` VALUES(1, 1, 1, '', 'acp', 0, 1, 66, 'ACP_CAT_GENERAL', '', '');
INSERT INTO `phpbb_modules` VALUES(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', '');
INSERT INTO `phpbb_modules` VALUES(3, 1, 1, '', 'acp', 1, 18, 43, 'ACP_BOARD_CONFIGURATION', '', '');
INSERT INTO `phpbb_modules` VALUES(4, 1, 1, '', 'acp', 1, 44, 51, 'ACP_CLIENT_COMMUNICATION', '', '');
INSERT INTO `phpbb_modules` VALUES(5, 1, 1, '', 'acp', 1, 52, 65, 'ACP_SERVER_CONFIGURATION', '', '');
INSERT INTO `phpbb_modules` VALUES(6, 1, 1, '', 'acp', 0, 67, 86, 'ACP_CAT_FORUMS', '', '');
INSERT INTO `phpbb_modules` VALUES(7, 1, 1, '', 'acp', 6, 68, 73, 'ACP_MANAGE_FORUMS', '', '');
INSERT INTO `phpbb_modules` VALUES(8, 1, 1, '', 'acp', 6, 74, 85, 'ACP_FORUM_BASED_PERMISSIONS', '', '');
INSERT INTO `phpbb_modules` VALUES(9, 1, 1, '', 'acp', 0, 87, 114, 'ACP_CAT_POSTING', '', '');
INSERT INTO `phpbb_modules` VALUES(10, 1, 1, '', 'acp', 9, 88, 101, 'ACP_MESSAGES', '', '');
INSERT INTO `phpbb_modules` VALUES(11, 1, 1, '', 'acp', 9, 102, 113, 'ACP_ATTACHMENTS', '', '');
INSERT INTO `phpbb_modules` VALUES(12, 1, 1, '', 'acp', 0, 115, 172, 'ACP_CAT_USERGROUP', '', '');
INSERT INTO `phpbb_modules` VALUES(13, 1, 1, '', 'acp', 12, 116, 151, 'ACP_CAT_USERS', '', '');
INSERT INTO `phpbb_modules` VALUES(14, 1, 1, '', 'acp', 12, 152, 161, 'ACP_GROUPS', '', '');
INSERT INTO `phpbb_modules` VALUES(15, 1, 1, '', 'acp', 12, 162, 171, 'ACP_USER_SECURITY', '', '');
INSERT INTO `phpbb_modules` VALUES(16, 1, 1, '', 'acp', 0, 173, 222, 'ACP_CAT_PERMISSIONS', '', '');
INSERT INTO `phpbb_modules` VALUES(17, 1, 1, '', 'acp', 16, 176, 185, 'ACP_GLOBAL_PERMISSIONS', '', '');
INSERT INTO `phpbb_modules` VALUES(18, 1, 1, '', 'acp', 16, 186, 197, 'ACP_FORUM_BASED_PERMISSIONS', '', '');
INSERT INTO `phpbb_modules` VALUES(19, 1, 1, '', 'acp', 16, 198, 207, 'ACP_PERMISSION_ROLES', '', '');
INSERT INTO `phpbb_modules` VALUES(20, 1, 1, '', 'acp', 16, 208, 221, 'ACP_PERMISSION_MASKS', '', '');
INSERT INTO `phpbb_modules` VALUES(21, 1, 1, '', 'acp', 0, 223, 238, 'ACP_CAT_CUSTOMISE', '', '');
INSERT INTO `phpbb_modules` VALUES(22, 1, 1, '', 'acp', 21, 228, 233, 'ACP_STYLE_MANAGEMENT', '', '');
INSERT INTO `phpbb_modules` VALUES(23, 1, 1, '', 'acp', 21, 224, 227, 'ACP_EXTENSION_MANAGEMENT', '', '');
INSERT INTO `phpbb_modules` VALUES(24, 1, 1, '', 'acp', 21, 234, 237, 'ACP_LANGUAGE', '', '');
INSERT INTO `phpbb_modules` VALUES(25, 1, 1, '', 'acp', 0, 239, 258, 'ACP_CAT_MAINTENANCE', '', '');
INSERT INTO `phpbb_modules` VALUES(26, 1, 1, '', 'acp', 25, 240, 249, 'ACP_FORUM_LOGS', '', '');
INSERT INTO `phpbb_modules` VALUES(27, 1, 1, '', 'acp', 25, 250, 257, 'ACP_CAT_DATABASE', '', '');
INSERT INTO `phpbb_modules` VALUES(28, 1, 1, '', 'acp', 0, 259, 282, 'ACP_CAT_SYSTEM', '', '');
INSERT INTO `phpbb_modules` VALUES(29, 1, 1, '', 'acp', 28, 260, 263, 'ACP_AUTOMATION', '', '');
INSERT INTO `phpbb_modules` VALUES(30, 1, 1, '', 'acp', 28, 264, 273, 'ACP_GENERAL_TASKS', '', '');
INSERT INTO `phpbb_modules` VALUES(31, 1, 1, '', 'acp', 28, 274, 281, 'ACP_MODULE_MANAGEMENT', '', '');
INSERT INTO `phpbb_modules` VALUES(32, 1, 1, '', 'acp', 0, 283, 284, 'ACP_CAT_DOT_MODS', '', '');
INSERT INTO `phpbb_modules` VALUES(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach');
INSERT INTO `phpbb_modules` VALUES(34, 1, 1, 'acp_attachments', 'acp', 11, 103, 104, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach');
INSERT INTO `phpbb_modules` VALUES(35, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach');
INSERT INTO `phpbb_modules` VALUES(36, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach');
INSERT INTO `phpbb_modules` VALUES(37, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach');
INSERT INTO `phpbb_modules` VALUES(38, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach');
INSERT INTO `phpbb_modules` VALUES(39, 1, 1, 'acp_ban', 'acp', 15, 163, 164, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban');
INSERT INTO `phpbb_modules` VALUES(40, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_IPS', 'ip', 'acl_a_ban');
INSERT INTO `phpbb_modules` VALUES(41, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban');
INSERT INTO `phpbb_modules` VALUES(42, 1, 1, 'acp_bbcodes', 'acp', 10, 89, 90, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode');
INSERT INTO `phpbb_modules` VALUES(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(47, 1, 1, 'acp_board', 'acp', 10, 91, 92, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(49, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_POST_SETTINGS', 'post', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(53, 1, 1, 'acp_board', 'acp', 4, 45, 46, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server');
INSERT INTO `phpbb_modules` VALUES(54, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server');
INSERT INTO `phpbb_modules` VALUES(55, 1, 1, 'acp_board', 'acp', 5, 53, 54, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server');
INSERT INTO `phpbb_modules` VALUES(56, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server');
INSERT INTO `phpbb_modules` VALUES(57, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server');
INSERT INTO `phpbb_modules` VALUES(58, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server');
INSERT INTO `phpbb_modules` VALUES(59, 1, 1, 'acp_bots', 'acp', 30, 265, 266, 'ACP_BOTS', 'bots', 'acl_a_bots');
INSERT INTO `phpbb_modules` VALUES(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(63, 1, 1, 'acp_database', 'acp', 27, 251, 252, 'ACP_BACKUP', 'backup', 'acl_a_backup');
INSERT INTO `phpbb_modules` VALUES(64, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_RESTORE', 'restore', 'acl_a_backup');
INSERT INTO `phpbb_modules` VALUES(65, 1, 1, 'acp_disallow', 'acp', 15, 169, 170, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names');
INSERT INTO `phpbb_modules` VALUES(66, 1, 1, 'acp_email', 'acp', 30, 267, 268, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable');
INSERT INTO `phpbb_modules` VALUES(67, 1, 1, 'acp_extensions', 'acp', 23, 225, 226, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions');
INSERT INTO `phpbb_modules` VALUES(68, 1, 1, 'acp_forums', 'acp', 7, 69, 70, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum');
INSERT INTO `phpbb_modules` VALUES(69, 1, 1, 'acp_groups', 'acp', 14, 153, 154, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group');
INSERT INTO `phpbb_modules` VALUES(70, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group');
INSERT INTO `phpbb_modules` VALUES(71, 1, 1, 'acp_icons', 'acp', 10, 95, 96, 'ACP_ICONS', 'icons', 'acl_a_icons');
INSERT INTO `phpbb_modules` VALUES(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_SMILIES', 'smilies', 'acl_a_icons');
INSERT INTO `phpbb_modules` VALUES(73, 1, 1, 'acp_inactive', 'acp', 13, 117, 118, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(74, 1, 1, 'acp_jabber', 'acp', 4, 49, 50, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber');
INSERT INTO `phpbb_modules` VALUES(75, 1, 1, 'acp_language', 'acp', 24, 235, 236, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language');
INSERT INTO `phpbb_modules` VALUES(76, 1, 1, 'acp_logs', 'acp', 26, 241, 242, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs');
INSERT INTO `phpbb_modules` VALUES(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs');
INSERT INTO `phpbb_modules` VALUES(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs');
INSERT INTO `phpbb_modules` VALUES(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs');
INSERT INTO `phpbb_modules` VALUES(80, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', '');
INSERT INTO `phpbb_modules` VALUES(81, 1, 1, 'acp_modules', 'acp', 31, 275, 276, 'ACP', 'acp', 'acl_a_modules');
INSERT INTO `phpbb_modules` VALUES(82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'UCP', 'ucp', 'acl_a_modules');
INSERT INTO `phpbb_modules` VALUES(83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'MCP', 'mcp', 'acl_a_modules');
INSERT INTO `phpbb_modules` VALUES(84, 1, 1, 'acp_permission_roles', 'acp', 19, 199, 200, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth');
INSERT INTO `phpbb_modules` VALUES(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth');
INSERT INTO `phpbb_modules` VALUES(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth');
INSERT INTO `phpbb_modules` VALUES(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth');
INSERT INTO `phpbb_modules` VALUES(88, 1, 1, 'acp_permissions', 'acp', 16, 174, 175, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(89, 1, 0, 'acp_permissions', 'acp', 20, 209, 210, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(90, 1, 1, 'acp_permissions', 'acp', 18, 187, 188, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `phpbb_modules` VALUES(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth');
INSERT INTO `phpbb_modules` VALUES(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `phpbb_modules` VALUES(93, 1, 1, 'acp_permissions', 'acp', 17, 177, 178, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `phpbb_modules` VALUES(94, 1, 1, 'acp_permissions', 'acp', 13, 121, 122, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `phpbb_modules` VALUES(95, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `phpbb_modules` VALUES(96, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `phpbb_modules` VALUES(97, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `phpbb_modules` VALUES(98, 1, 1, 'acp_permissions', 'acp', 14, 157, 158, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)');
INSERT INTO `phpbb_modules` VALUES(99, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `phpbb_modules` VALUES(100, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `phpbb_modules` VALUES(101, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `phpbb_modules` VALUES(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `phpbb_modules` VALUES(103, 1, 1, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(108, 1, 1, 'acp_php_info', 'acp', 30, 269, 270, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo');
INSERT INTO `phpbb_modules` VALUES(109, 1, 1, 'acp_profile', 'acp', 13, 125, 126, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile');
INSERT INTO `phpbb_modules` VALUES(110, 1, 1, 'acp_prune', 'acp', 7, 71, 72, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune');
INSERT INTO `phpbb_modules` VALUES(111, 1, 1, 'acp_prune', 'acp', 13, 127, 128, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel');
INSERT INTO `phpbb_modules` VALUES(112, 1, 1, 'acp_ranks', 'acp', 13, 129, 130, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks');
INSERT INTO `phpbb_modules` VALUES(113, 1, 1, 'acp_reasons', 'acp', 30, 271, 272, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons');
INSERT INTO `phpbb_modules` VALUES(114, 1, 1, 'acp_search', 'acp', 5, 61, 62, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search');
INSERT INTO `phpbb_modules` VALUES(115, 1, 1, 'acp_search', 'acp', 27, 255, 256, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search');
INSERT INTO `phpbb_modules` VALUES(116, 1, 1, 'acp_send_statistics', 'acp', 5, 63, 64, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server');
INSERT INTO `phpbb_modules` VALUES(117, 1, 1, 'acp_styles', 'acp', 22, 229, 230, 'ACP_STYLES', 'style', 'acl_a_styles');
INSERT INTO `phpbb_modules` VALUES(118, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles');
INSERT INTO `phpbb_modules` VALUES(119, 1, 1, 'acp_update', 'acp', 29, 261, 262, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board');
INSERT INTO `phpbb_modules` VALUES(120, 1, 1, 'acp_users', 'acp', 13, 119, 120, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(121, 1, 0, 'acp_users', 'acp', 13, 131, 132, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(122, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(123, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_PROFILE', 'profile', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(124, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PREFS', 'prefs', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(125, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(126, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_RANK', 'rank', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(127, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_SIG', 'sig', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(128, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group');
INSERT INTO `phpbb_modules` VALUES(129, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth');
INSERT INTO `phpbb_modules` VALUES(130, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_ATTACH', 'attach', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(131, 1, 1, 'acp_words', 'acp', 10, 99, 100, 'ACP_WORDS', 'words', 'acl_a_words');
INSERT INTO `phpbb_modules` VALUES(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user');
INSERT INTO `phpbb_modules` VALUES(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group');
INSERT INTO `phpbb_modules` VALUES(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum');
INSERT INTO `phpbb_modules` VALUES(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs');
INSERT INTO `phpbb_modules` VALUES(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots');
INSERT INTO `phpbb_modules` VALUES(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo');
INSERT INTO `phpbb_modules` VALUES(138, 1, 1, 'acp_permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `phpbb_modules` VALUES(139, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth');
INSERT INTO `phpbb_modules` VALUES(140, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)');
INSERT INTO `phpbb_modules` VALUES(141, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `phpbb_modules` VALUES(142, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)');
INSERT INTO `phpbb_modules` VALUES(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', '');
INSERT INTO `phpbb_modules` VALUES(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', '');
INSERT INTO `phpbb_modules` VALUES(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', '');
INSERT INTO `phpbb_modules` VALUES(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', '');
INSERT INTO `phpbb_modules` VALUES(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', '');
INSERT INTO `phpbb_modules` VALUES(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', '');
INSERT INTO `phpbb_modules` VALUES(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', '');
INSERT INTO `phpbb_modules` VALUES(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban');
INSERT INTO `phpbb_modules` VALUES(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban');
INSERT INTO `phpbb_modules` VALUES(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban');
INSERT INTO `phpbb_modules` VALUES(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_');
INSERT INTO `phpbb_modules` VALUES(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id');
INSERT INTO `phpbb_modules` VALUES(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id');
INSERT INTO `phpbb_modules` VALUES(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', '');
INSERT INTO `phpbb_modules` VALUES(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id');
INSERT INTO `phpbb_modules` VALUES(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id');
INSERT INTO `phpbb_modules` VALUES(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)');
INSERT INTO `phpbb_modules` VALUES(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', '');
INSERT INTO `phpbb_modules` VALUES(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', '');
INSERT INTO `phpbb_modules` VALUES(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report');
INSERT INTO `phpbb_modules` VALUES(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report');
INSERT INTO `phpbb_modules` VALUES(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report');
INSERT INTO `phpbb_modules` VALUES(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve');
INSERT INTO `phpbb_modules` VALUES(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve');
INSERT INTO `phpbb_modules` VALUES(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve');
INSERT INTO `phpbb_modules` VALUES(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve');
INSERT INTO `phpbb_modules` VALUES(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)');
INSERT INTO `phpbb_modules` VALUES(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report');
INSERT INTO `phpbb_modules` VALUES(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report');
INSERT INTO `phpbb_modules` VALUES(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)');
INSERT INTO `phpbb_modules` VALUES(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn');
INSERT INTO `phpbb_modules` VALUES(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn');
INSERT INTO `phpbb_modules` VALUES(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn');
INSERT INTO `phpbb_modules` VALUES(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id');
INSERT INTO `phpbb_modules` VALUES(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', '');
INSERT INTO `phpbb_modules` VALUES(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', '');
INSERT INTO `phpbb_modules` VALUES(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', '');
INSERT INTO `phpbb_modules` VALUES(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', '');
INSERT INTO `phpbb_modules` VALUES(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', '');
INSERT INTO `phpbb_modules` VALUES(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', '');
INSERT INTO `phpbb_modules` VALUES(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach');
INSERT INTO `phpbb_modules` VALUES(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth');
INSERT INTO `phpbb_modules` VALUES(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', '');
INSERT INTO `phpbb_modules` VALUES(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', '');
INSERT INTO `phpbb_modules` VALUES(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', '');
INSERT INTO `phpbb_modules` VALUES(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', '');
INSERT INTO `phpbb_modules` VALUES(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks');
INSERT INTO `phpbb_modules` VALUES(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', '');
INSERT INTO `phpbb_modules` VALUES(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', '');
INSERT INTO `phpbb_modules` VALUES(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', '');
INSERT INTO `phpbb_modules` VALUES(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg');
INSERT INTO `phpbb_modules` VALUES(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg');
INSERT INTO `phpbb_modules` VALUES(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg');
INSERT INTO `phpbb_modules` VALUES(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg');
INSERT INTO `phpbb_modules` VALUES(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', '');
INSERT INTO `phpbb_modules` VALUES(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', '');
INSERT INTO `phpbb_modules` VALUES(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', '');
INSERT INTO `phpbb_modules` VALUES(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo');
INSERT INTO `phpbb_modules` VALUES(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig');
INSERT INTO `phpbb_modules` VALUES(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar');
INSERT INTO `phpbb_modules` VALUES(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', '');
INSERT INTO `phpbb_modules` VALUES(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', '');
INSERT INTO `phpbb_modules` VALUES(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', '');
INSERT INTO `phpbb_modules` VALUES(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_notifications`
--

DROP TABLE IF EXISTS `phpbb_notifications`;
CREATE TABLE IF NOT EXISTS `phpbb_notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notification_time` int(11) unsigned NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `item_ident` (`notification_type_id`,`item_id`),
  KEY `user` (`user_id`,`notification_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_notification_types`
--

DROP TABLE IF EXISTS `phpbb_notification_types`;
CREATE TABLE IF NOT EXISTS `phpbb_notification_types` (
  `notification_type_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`notification_type_id`),
  UNIQUE KEY `type` (`notification_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_oauth_accounts`
--

DROP TABLE IF EXISTS `phpbb_oauth_accounts`;
CREATE TABLE IF NOT EXISTS `phpbb_oauth_accounts` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_oauth_tokens`
--

DROP TABLE IF EXISTS `phpbb_oauth_tokens`;
CREATE TABLE IF NOT EXISTS `phpbb_oauth_tokens` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_poll_options`
--

DROP TABLE IF EXISTS `phpbb_poll_options`;
CREATE TABLE IF NOT EXISTS `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_poll_votes`
--

DROP TABLE IF EXISTS `phpbb_poll_votes`;
CREATE TABLE IF NOT EXISTS `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_posts`
--

DROP TABLE IF EXISTS `phpbb_posts`;
CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `tid_post_time` (`topic_id`,`post_time`),
  KEY `post_username` (`post_username`),
  KEY `post_visibility` (`post_visibility`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_posts`
--

INSERT INTO `phpbb_posts` VALUES(1, 1, 2, 2, 0, '127.0.0.1', 1418454675, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 'This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_privmsgs`
--

DROP TABLE IF EXISTS `phpbb_privmsgs`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_privmsgs_folder`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_folder`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_privmsgs_rules`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_rules`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_privmsgs_to`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_to`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_profile_fields`
--

DROP TABLE IF EXISTS `phpbb_profile_fields`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `phpbb_profile_fields`
--

INSERT INTO `phpbb_profile_fields` VALUES(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', '');
INSERT INTO `phpbb_profile_fields` VALUES(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s');
INSERT INTO `phpbb_profile_fields` VALUES(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', '');
INSERT INTO `phpbb_profile_fields` VALUES(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', '');
INSERT INTO `phpbb_profile_fields` VALUES(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', '');
INSERT INTO `phpbb_profile_fields` VALUES(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/');
INSERT INTO `phpbb_profile_fields` VALUES(7, 'phpbb_wlm', 'profilefields.type.string', 'phpbb_wlm', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 7, 1, 1, 0, 1, 1, 1, '', '');
INSERT INTO `phpbb_profile_fields` VALUES(8, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'http://edit.yahoo.com/config/send_webmesg?.target=%s&amp;.src=pg');
INSERT INTO `phpbb_profile_fields` VALUES(9, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/');
INSERT INTO `phpbb_profile_fields` VALUES(10, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s');
INSERT INTO `phpbb_profile_fields` VALUES(11, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo');
INSERT INTO `phpbb_profile_fields` VALUES(12, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s');
INSERT INTO `phpbb_profile_fields` VALUES(13, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_profile_fields_data`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_data`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_wlm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_profile_fields_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_profile_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_profile_lang`
--

INSERT INTO `phpbb_profile_lang` VALUES(1, 1, 'LOCATION', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(1, 2, 'LOCATION', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(2, 1, 'WEBSITE', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(2, 2, 'WEBSITE', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(3, 1, 'INTERESTS', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(3, 2, 'INTERESTS', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(4, 1, 'OCCUPATION', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(4, 2, 'OCCUPATION', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(5, 1, 'AOL', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(5, 2, 'AOL', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(6, 1, 'ICQ', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(6, 2, 'ICQ', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(7, 1, 'WLM', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(7, 2, 'WLM', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(8, 1, 'YAHOO', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(8, 2, 'YAHOO', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(9, 1, 'FACEBOOK', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(9, 2, 'FACEBOOK', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(10, 1, 'TWITTER', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(10, 2, 'TWITTER', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(11, 1, 'SKYPE', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(11, 2, 'SKYPE', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(12, 1, 'YOUTUBE', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(12, 2, 'YOUTUBE', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(13, 1, 'GOOGLEPLUS', '', '');
INSERT INTO `phpbb_profile_lang` VALUES(13, 2, 'GOOGLEPLUS', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_ranks`
--

DROP TABLE IF EXISTS `phpbb_ranks`;
CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` VALUES(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_reports`
--

DROP TABLE IF EXISTS `phpbb_reports`;
CREATE TABLE IF NOT EXISTS `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_reports_reasons`
--

DROP TABLE IF EXISTS `phpbb_reports_reasons`;
CREATE TABLE IF NOT EXISTS `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` VALUES(1, 'warez', 'The post contains links to illegal or pirated software.', 1);
INSERT INTO `phpbb_reports_reasons` VALUES(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2);
INSERT INTO `phpbb_reports_reasons` VALUES(3, 'off_topic', 'The reported post is off topic.', 3);
INSERT INTO `phpbb_reports_reasons` VALUES(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_results`
--

DROP TABLE IF EXISTS `phpbb_search_results`;
CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_wordlist`
--

DROP TABLE IF EXISTS `phpbb_search_wordlist`;
CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

--
-- Дамп данных таблицы `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` VALUES(1, 'this', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(2, 'example', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(3, 'post', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(4, 'your', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(5, 'phpbb3', 0, 2);
INSERT INTO `phpbb_search_wordlist` VALUES(6, 'installation', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(7, 'everything', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(8, 'seems', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(9, 'working', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(10, 'you', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(11, 'may', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(12, 'delete', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(13, 'like', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(14, 'and', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(15, 'continue', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(16, 'set', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(17, 'board', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(18, 'during', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(19, 'the', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(20, 'process', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(21, 'first', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(22, 'category', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(23, 'forum', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(24, 'are', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(25, 'assigned', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(26, 'appropriate', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(27, 'permissions', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(28, 'for', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(29, 'predefined', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(30, 'usergroups', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(31, 'administrators', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(32, 'bots', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(33, 'global', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(34, 'moderators', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(35, 'guests', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(36, 'registered', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(37, 'users', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(38, 'coppa', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(39, 'also', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(40, 'choose', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(41, 'not', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(42, 'forget', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(43, 'assign', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(44, 'all', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(45, 'these', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(46, 'new', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(47, 'categories', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(48, 'forums', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(49, 'create', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(50, 'recommended', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(51, 'rename', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(52, 'copy', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(53, 'from', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(54, 'while', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(55, 'creating', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(56, 'have', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(57, 'fun', 0, 1);
INSERT INTO `phpbb_search_wordlist` VALUES(58, 'welcome', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_wordmatch`
--

DROP TABLE IF EXISTS `phpbb_search_wordmatch`;
CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` VALUES(1, 1, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 2, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 3, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 4, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 5, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 5, 1);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 6, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 7, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 8, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 9, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 10, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 11, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 12, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 13, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 14, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 15, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 16, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 17, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 18, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 19, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 20, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 21, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 22, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 23, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 24, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 25, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 26, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 27, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 28, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 29, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 30, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 31, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 32, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 33, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 34, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 35, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 36, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 37, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 38, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 39, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 40, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 41, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 42, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 43, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 44, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 45, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 46, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 47, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 48, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 49, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 50, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 51, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 52, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 53, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 54, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 55, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 56, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 57, 0);
INSERT INTO `phpbb_search_wordmatch` VALUES(1, 58, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_sessions`
--

DROP TABLE IF EXISTS `phpbb_sessions`;
CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` VALUES('4f2dcf7b1b491989ff3f292f39a36fd0', 1, 1424975330, 1424975330, 1424975335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'ucp.php?confirm_id=18c21da62b874dae2dd5b94921d3d23e&mode=confirm&type=1', 1, 0, 0, 0);
INSERT INTO `phpbb_sessions` VALUES('73561524ba4f1bf583cfc9342ab161a5', 1, 1424982944, 1424982944, 1424982944, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'index.php', 1, 0, 0, 0);
INSERT INTO `phpbb_sessions` VALUES('bc0c027a7e408077b1a50dacf4bf29fb', 1, 1424976341, 1424976341, 1424976341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'ucp.php?confirm_id=ddb86c37fad5489b95901c3cabcb4b20&mode=confirm&type=1', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_sessions_keys`
--

DROP TABLE IF EXISTS `phpbb_sessions_keys`;
CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_sessions_keys`
--

INSERT INTO `phpbb_sessions_keys` VALUES('9b4511b4f44009de1683c219d6dd4576', 2, '127.0.0.1', 1423239232);
INSERT INTO `phpbb_sessions_keys` VALUES('9eec2f6982c043b138f9c13014a4c44e', 2, '127.0.0.1', 1418639316);
INSERT INTO `phpbb_sessions_keys` VALUES('a0c1c93a9dbec896435120eaacfdfd74', 2, '127.0.0.1', 1418455164);
INSERT INTO `phpbb_sessions_keys` VALUES('a75a39f74bd0a571de2f39db551ac5e2', 2, '127.0.0.1', 1418638786);
INSERT INTO `phpbb_sessions_keys` VALUES('bef4610612a5569142d9369ade0a4220', 2, '127.0.0.1', 1418455008);
INSERT INTO `phpbb_sessions_keys` VALUES('d151ed9c3132b47a2c6471a88fa8c38b', 2, '127.0.0.1', 1418638836);
INSERT INTO `phpbb_sessions_keys` VALUES('dab92e8b6e65be163eda4c70675facaf', 2, '127.0.0.1', 1423239267);
INSERT INTO `phpbb_sessions_keys` VALUES('e17f4ac4d9f06ecb86e7ac4401ba23c0', 55, '127.0.0.1', 1423238999);
INSERT INTO `phpbb_sessions_keys` VALUES('f09fba754a08e109592c8efb23f3a0e8', 2, '127.0.0.1', 1418455070);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_sitelist`
--

DROP TABLE IF EXISTS `phpbb_sitelist`;
CREATE TABLE IF NOT EXISTS `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_smilies`
--

DROP TABLE IF EXISTS `phpbb_smilies`;
CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` VALUES(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1);
INSERT INTO `phpbb_smilies` VALUES(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1);
INSERT INTO `phpbb_smilies` VALUES(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1);
INSERT INTO `phpbb_smilies` VALUES(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1);
INSERT INTO `phpbb_smilies` VALUES(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1);
INSERT INTO `phpbb_smilies` VALUES(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1);
INSERT INTO `phpbb_smilies` VALUES(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1);
INSERT INTO `phpbb_smilies` VALUES(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1);
INSERT INTO `phpbb_smilies` VALUES(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1);
INSERT INTO `phpbb_smilies` VALUES(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1);
INSERT INTO `phpbb_smilies` VALUES(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1);
INSERT INTO `phpbb_smilies` VALUES(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1);
INSERT INTO `phpbb_smilies` VALUES(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1);
INSERT INTO `phpbb_smilies` VALUES(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1);
INSERT INTO `phpbb_smilies` VALUES(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1);
INSERT INTO `phpbb_smilies` VALUES(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1);
INSERT INTO `phpbb_smilies` VALUES(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1);
INSERT INTO `phpbb_smilies` VALUES(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1);
INSERT INTO `phpbb_smilies` VALUES(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1);
INSERT INTO `phpbb_smilies` VALUES(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1);
INSERT INTO `phpbb_smilies` VALUES(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1);
INSERT INTO `phpbb_smilies` VALUES(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1);
INSERT INTO `phpbb_smilies` VALUES(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1);
INSERT INTO `phpbb_smilies` VALUES(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1);
INSERT INTO `phpbb_smilies` VALUES(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1);
INSERT INTO `phpbb_smilies` VALUES(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1);
INSERT INTO `phpbb_smilies` VALUES(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1);
INSERT INTO `phpbb_smilies` VALUES(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1);
INSERT INTO `phpbb_smilies` VALUES(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1);
INSERT INTO `phpbb_smilies` VALUES(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1);
INSERT INTO `phpbb_smilies` VALUES(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1);
INSERT INTO `phpbb_smilies` VALUES(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1);
INSERT INTO `phpbb_smilies` VALUES(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1);
INSERT INTO `phpbb_smilies` VALUES(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1);
INSERT INTO `phpbb_smilies` VALUES(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1);
INSERT INTO `phpbb_smilies` VALUES(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1);
INSERT INTO `phpbb_smilies` VALUES(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1);
INSERT INTO `phpbb_smilies` VALUES(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1);
INSERT INTO `phpbb_smilies` VALUES(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1);
INSERT INTO `phpbb_smilies` VALUES(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1);
INSERT INTO `phpbb_smilies` VALUES(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1);
INSERT INTO `phpbb_smilies` VALUES(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_styles`
--

DROP TABLE IF EXISTS `phpbb_styles`;
CREATE TABLE IF NOT EXISTS `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) unsigned NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_styles`
--

INSERT INTO `phpbb_styles` VALUES(1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', 'kNg=', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_teampage`
--

DROP TABLE IF EXISTS `phpbb_teampage`;
CREATE TABLE IF NOT EXISTS `phpbb_teampage` (
  `teampage_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`teampage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `phpbb_teampage`
--

INSERT INTO `phpbb_teampage` VALUES(1, 5, '', 1, 0);
INSERT INTO `phpbb_teampage` VALUES(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics`
--

DROP TABLE IF EXISTS `phpbb_topics`;
CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  KEY `topic_visibility` (`topic_visibility`),
  KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_topics`
--

INSERT INTO `phpbb_topics` VALUES(1, 2, 0, 0, 0, 'Welcome to phpBB3', 2, 1418454675, 0, 2, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', 'Welcome to phpBB3', 1418454675, 1423241977, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics_posted`
--

DROP TABLE IF EXISTS `phpbb_topics_posted`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` VALUES(2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics_track`
--

DROP TABLE IF EXISTS `phpbb_topics_track`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics_watch`
--

DROP TABLE IF EXISTS `phpbb_topics_watch`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_users`
--

DROP TABLE IF EXISTS `phpbb_users`;
CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=58 ;

--
-- Дамп данных таблицы `phpbb_users`
--

INSERT INTO `phpbb_users` VALUES(1, 2, 1, '00000000000w27wrgg\ni1cjyo000000\ni1cjyo000000', 0, '', 1418454675, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '97843500a72ad004', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(2, 3, 5, 'zik0zjzik0zjzik0zc\ni1cjyo000000\nzik0zjzi8sg0', 0, '127.0.0.1', 1418454675, 'admin', 'admin', '$2y$10$obXAkj6EoWu7ggCb4ssZZeCxBYjMDU2lDJ2ZlmLRvRVuOWJMV.YXS', 0, 'jt4twggad34erzdsf@hotmail.com', 13310010827, '', 1424192718, 0, 0, 'ucp.php?login=external&mode=login&password=qaz2wsx&redirect=%2F&username=admin', '', 0, 0, 0, 0, 0, 0, 1, 'en', '', 'D M d, Y g:i a', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '03f5814c9da749c0', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(3, 2, 6, '', 0, '', 1418454699, 'AdsBot [Google]', 'adsbot [google]', '', 1418454699, '', 0, '', 0, 1418454699, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '21116ee5b90d3ba2', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(4, 2, 6, '', 0, '', 1418454700, 'Alexa [Bot]', 'alexa [bot]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c08cd3bff7159522', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(5, 2, 6, '', 0, '', 1418454700, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b2dfbcf74171735d', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(6, 2, 6, '', 0, '', 1418454700, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '338ec33511d9e2fb', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(7, 2, 6, '', 0, '', 1418454700, 'Baidu [Spider]', 'baidu [spider]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4afa1a85cbc23284', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(8, 2, 6, '', 0, '', 1418454701, 'Bing [Bot]', 'bing [bot]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3072fd9dbe0b87cc', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(9, 2, 6, '', 0, '', 1418454701, 'Exabot [Bot]', 'exabot [bot]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '92c92df8ebbd2e4e', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(10, 2, 6, '', 0, '', 1418454701, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '156c583a8edc770d', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(11, 2, 6, '', 0, '', 1418454701, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '54ac53d931955ade', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(12, 2, 6, '', 0, '', 1418454702, 'Francis [Bot]', 'francis [bot]', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '20dfd5c86c384c81', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(13, 2, 6, '', 0, '', 1418454702, 'Gigabot [Bot]', 'gigabot [bot]', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '322c083ea1e2cda7', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(14, 2, 6, '', 0, '', 1418454702, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8f80ccd2befb8ab4', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(15, 2, 6, '', 0, '', 1418454702, 'Google Desktop', 'google desktop', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '0e9de470090e94f8', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(16, 2, 6, '', 0, '', 1418454703, 'Google Feedfetcher', 'google feedfetcher', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e3ee0fe1d3ab1249', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(17, 2, 6, '', 0, '', 1418454703, 'Google [Bot]', 'google [bot]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a97bd6dda3bcb9a7', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(18, 2, 6, '', 0, '', 1418454703, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8cea4bbaacb4556d', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(19, 2, 6, '', 0, '', 1418454703, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9cd2e8717af0a1c5', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(20, 2, 6, '', 0, '', 1418454703, 'IBM Research [Bot]', 'ibm research [bot]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3ad4893e6b9aedcd', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(21, 2, 6, '', 0, '', 1418454704, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '10bfd5122dd00efa', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(22, 2, 6, '', 0, '', 1418454704, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'fbdeb018dfa75e35', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(23, 2, 6, '', 0, '', 1418454704, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '974acbf008c18c31', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(24, 2, 6, '', 0, '', 1418454704, 'Metager [Bot]', 'metager [bot]', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd8646b9a13d23282', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(25, 2, 6, '', 0, '', 1418454704, 'MSN NewsBlogs', 'msn newsblogs', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'bfc2870bc561dab1', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(26, 2, 6, '', 0, '', 1418454705, 'MSN [Bot]', 'msn [bot]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '04ddbfc1f0e26436', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(27, 2, 6, '', 0, '', 1418454705, 'MSNbot Media', 'msnbot media', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f7132b7546c702da', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(28, 2, 6, '', 0, '', 1418454705, 'Nutch [Bot]', 'nutch [bot]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'df8815d278efc42b', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(29, 2, 6, '', 0, '', 1418454705, 'Online link [Validator]', 'online link [validator]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'dbaaa3dc864383a1', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(30, 2, 6, '', 0, '', 1418454705, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '808917f58a298f1a', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(31, 2, 6, '', 0, '', 1418454706, 'Sensis [Crawler]', 'sensis [crawler]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4e88848005adecb4', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(32, 2, 6, '', 0, '', 1418454706, 'SEO Crawler', 'seo crawler', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3ce94161ff1e8e0f', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(33, 2, 6, '', 0, '', 1418454706, 'Seoma [Crawler]', 'seoma [crawler]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9ebd1db0828a5127', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(34, 2, 6, '', 0, '', 1418454706, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1c5f3d78f2df8b2a', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(35, 2, 6, '', 0, '', 1418454706, 'Snappy [Bot]', 'snappy [bot]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ba0049681afd05e7', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(36, 2, 6, '', 0, '', 1418454707, 'Steeler [Crawler]', 'steeler [crawler]', '', 1418454707, '', 0, '', 0, 1418454707, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b8c25a5c8bf3a200', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(37, 2, 6, '', 0, '', 1418454707, 'Telekom [Bot]', 'telekom [bot]', '', 1418454707, '', 0, '', 0, 1418454707, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7f4714a7d0219fb5', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(38, 2, 6, '', 0, '', 1418454707, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1418454707, '', 0, '', 0, 1418454707, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1025295bfc266ac6', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(39, 2, 6, '', 0, '', 1418454708, 'Voyager [Bot]', 'voyager [bot]', '', 1418454708, '', 0, '', 0, 1418454708, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ba2504b4cf3c616d', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(40, 2, 6, '', 0, '', 1418454708, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1418454708, '', 0, '', 0, 1418454708, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '240d48098dddbc8d', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(41, 2, 6, '', 0, '', 1418454708, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1418454708, '', 0, '', 0, 1418454708, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '57e02462702dafd3', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(42, 2, 6, '', 0, '', 1418454709, 'W3C [Validator]', 'w3c [validator]', '', 1418454709, '', 0, '', 0, 1418454709, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2754f6cdfe730ecb', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(43, 2, 6, '', 0, '', 1418454709, 'YaCy [Bot]', 'yacy [bot]', '', 1418454709, '', 0, '', 0, 1418454709, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8c44a42ee23a9475', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(44, 2, 6, '', 0, '', 1418454710, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1418454710, '', 0, '', 0, 1418454710, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ccb6f2a06b713ff8', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(45, 2, 6, '', 0, '', 1418454710, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1418454710, '', 0, '', 0, 1418454710, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4769227ef815e1f8', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(46, 2, 6, '', 0, '', 1418454710, 'Yahoo [Bot]', 'yahoo [bot]', '', 1418454710, '', 0, '', 0, 1418454710, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e3cc9b97e4d29212', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(47, 2, 6, '', 0, '', 1418454711, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1418454711, '', 0, '', 0, 1418454711, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3cdbc008adf32b0b', 0, 0, 0);
INSERT INTO `phpbb_users` VALUES(49, 0, 2, '', 0, '127.0.0.1', 1418551724, 'jhsdgasdg', 'jhsdgasdg', '$2y$10$po7mB6dbPMGRpo4GkXmZQ.domMBKkOppCjaD2k2d1KfzGs.LyuQBK', 1418551724, 'jhsdgasdg@mail.ru', 398765278017, '', 1418551839, 1418551724, 0, 'viewforum.php?f=2', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '3d713f9d2162ddd0', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(50, 0, 2, '', 0, '127.0.0.1', 1418552035, 'resagr', 'resagr', '$2y$10$Xh/s3e41vRpc.hheUgR8oO3Yo8eMBiB4XqiKCN9iIR2QBUadPaSjW', 1418552035, '54uhtsrsrht@namba.kg', 406198964720, '', 0, 1418552035, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '4d2b4f366772d2a8', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(51, 0, 2, '', 0, '127.0.0.1', 1418552189, 'dizufghjka', 'dizufghjka', '$2y$10$ojHMZdFTNkwxQJ5V6P8m4O8mz5cFNAPmdcetFaO3wvnIgDGbfyzum', 1418552189, 'dizufghjka@gmail.com', 14981037020, '', 0, 1418552189, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e75b8bf81861d0cd', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(52, 0, 2, '', 0, '127.0.0.1', 1418561617, 'protected', 'protected', '$2y$10$7Xa55trKvXpzEvXnOR.FiOPOIrqqmX8TzABQpfOK5UGYW5qlXCFo.', 1418561617, 'protected.for@gmail.com', 389024239523, '', 1418561745, 1418561617, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Antarctica/Vostok', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '6a29e124ff5c8768', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(53, 0, 2, '', 0, '127.0.0.1', 1418561867, 'andry', 'andry', '$2y$10$E/5hpnEgltf/Iwr.QDkGcun0YSSh6itIedKqaeBQZRel9c.YNz6ey', 1418561867, 'protected_by@mail.ru', 256812957320, '', 1418581697, 1418561867, 0, 'index.php', '', 0, 0, 0, 3, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e73d571faa18321a', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(54, 0, 2, '', 0, '127.0.0.1', 1418582399, 'login123', 'login123', '$2y$10$j87fWJPG7r7c8dZlNPTdNucOTfOtTEvd3sVKrLYqD6kuhE9l7iJla', 1418582399, 'email@mail.ru', 118448467813, '', 1418637404, 1418582399, 0, 'ucp.php?login=external&mode=login&password=pass123&redirect=%2F&username=login123', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '5b644e08b2af59f8', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(55, 0, 2, '', 0, '127.0.0.1', 1423236566, '123', '123', '$2y$10$fqE5tcXiKnqpLFlplxPwwenxAahuwBrV2Z.1oYV0DYOihG6Mxh9Da', 1423236566, '123@123.ru', 353749127910, '', 1423465914, 1423236566, 0, 'ucp.php?login=external&mode=login&password=123123&redirect=%2F&username=123', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd455b94923f7633f', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(56, 0, 2, '', 0, '127.0.0.1', 1423236849, 'asd', 'asd', '$2y$10$QQeYtnGyKuY/pFC6MBYou.580WhvpfJurKOGvXFeIReiYxzYt77wG', 1423236849, 'asd@asd.ru', 325484148110, '', 0, 1423236849, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cb1ffdbcd04e04bb', 1, 0, 0);
INSERT INTO `phpbb_users` VALUES(57, 0, 2, '', 0, '127.0.0.1', 1423466070, 'murat', 'murat', '$2y$10$eA5qQvfH0Oq5guuc5lxwgufwIY0O2FmXs/ic1cY8bsy40ZVwqFS42', 1423466070, 'asmuratbek@gmail.com', 240825792220, '', 1423863024, 1423466070, 0, 'ucp.php?login=external&mode=login&password=123123&redirect=%2F&username=murat', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '0fee948f6caedbac', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_user_group`
--

DROP TABLE IF EXISTS `phpbb_user_group`;
CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` VALUES(1, 1, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 2, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(4, 2, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(5, 2, 1, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 3, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 4, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 5, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 6, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 7, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 8, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 9, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 10, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 11, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 12, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 13, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 14, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 15, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 16, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 17, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 18, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 19, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 20, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 21, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 22, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 23, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 24, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 25, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 26, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 27, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 28, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 29, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 30, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 31, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 32, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 33, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 34, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 35, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 36, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 37, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 38, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 39, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 40, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 41, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 42, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 43, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 44, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 45, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 46, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(6, 47, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 49, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 49, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 50, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 50, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 51, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 51, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 52, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 52, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 53, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 53, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 54, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 54, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 55, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 55, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 56, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 56, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(2, 57, 0, 0);
INSERT INTO `phpbb_user_group` VALUES(7, 57, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_user_notifications`
--

DROP TABLE IF EXISTS `phpbb_user_notifications`;
CREATE TABLE IF NOT EXISTS `phpbb_user_notifications` (
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_user_notifications`
--

INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 2, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 2, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 2, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 2, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 3, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 3, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 3, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 3, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 4, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 4, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 4, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 4, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 5, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 5, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 5, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 5, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 6, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 6, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 6, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 6, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 7, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 7, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 7, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 7, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 8, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 8, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 8, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 8, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 9, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 9, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 9, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 9, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 10, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 10, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 10, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 10, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 11, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 11, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 11, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 11, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 12, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 12, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 12, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 12, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 13, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 13, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 13, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 13, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 14, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 14, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 14, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 14, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 15, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 15, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 15, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 15, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 16, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 16, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 16, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 16, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 17, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 17, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 17, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 17, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 18, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 18, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 18, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 18, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 19, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 19, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 19, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 19, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 20, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 20, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 20, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 20, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 21, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 21, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 21, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 21, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 22, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 22, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 22, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 22, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 23, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 23, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 23, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 23, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 24, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 24, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 24, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 24, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 25, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 25, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 25, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 25, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 26, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 26, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 26, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 26, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 27, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 27, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 27, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 27, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 28, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 28, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 28, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 28, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 29, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 29, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 29, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 29, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 30, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 30, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 30, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 30, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 31, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 31, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 31, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 31, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 32, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 32, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 32, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 32, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 33, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 33, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 33, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 33, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 34, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 34, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 34, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 34, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 35, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 35, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 35, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 35, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 36, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 36, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 36, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 36, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 37, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 37, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 37, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 37, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 38, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 38, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 38, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 38, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 39, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 39, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 39, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 39, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 40, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 40, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 40, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 40, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 41, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 41, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 41, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 41, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 42, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 42, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 42, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 42, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 43, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 43, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 43, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 43, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 44, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 44, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 44, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 44, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 45, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 45, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 45, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 45, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 46, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 46, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 46, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 46, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 47, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 47, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 47, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 47, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 48, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 48, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 48, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 48, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 49, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 49, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 49, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 49, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 50, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 50, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 50, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 50, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 51, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 51, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 51, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 51, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 52, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 52, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 52, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 52, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 53, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 53, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 53, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 53, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 54, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 54, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 54, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 54, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 55, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 55, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 55, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 55, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 56, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 56, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 56, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 56, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 57, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.post', 0, 57, 'notification.method.email', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 57, '', 1);
INSERT INTO `phpbb_user_notifications` VALUES('notification.type.topic', 0, 57, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_warnings`
--

DROP TABLE IF EXISTS `phpbb_warnings`;
CREATE TABLE IF NOT EXISTS `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_words`
--

DROP TABLE IF EXISTS `phpbb_words`;
CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_zebra`
--

DROP TABLE IF EXISTS `phpbb_zebra`;
CREATE TABLE IF NOT EXISTS `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_zebra`
--

INSERT INTO `phpbb_zebra` VALUES(54, 2, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `points`
--

DROP TABLE IF EXISTS `points`;
CREATE TABLE IF NOT EXISTS `points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  `payed` varchar(2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `subway1_id` varchar(11) NOT NULL,
  `time1` int(11) NOT NULL,
  `subway2_id` varchar(11) NOT NULL,
  `time2` int(11) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `admemail` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `graphite` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `payedf` varchar(255) NOT NULL,
  `payedt` varchar(255) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `price_year` varchar(255) NOT NULL,
  `price_6months` varchar(255) NOT NULL,
  `price_month` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Дамп данных таблицы `points`
--

INSERT INTO `points` VALUES(39, 'Международный центр исторического фехтования', 0, 'on', '0', 'dasda', '0', 'Международный центр исторического фехтования', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', '2e0f6fab16323115a7be7a0ffebc1d9b.jpg', 23, '0', 6, '1', 4, 'Москва, ул. Шарикопошниковская, д. 17', '+798512313', 'protected.for@gmail.com', 'asd@das.rudsa', 'excalibur-center.ru', 'Каждый день с 6 утра до 12 ночи', '<p>Фитнес-клуб &laquo;Мультиспорт&raquo; &ndash; это действительно мультикоктейль, состоящий из всех возможных радостей фитнес-жизни и сопутствующих развлечений. Очень удачное расположение, недалеко от комплекса &laquo;Лужники&raquo;, позволяет задействовать для занятий не только помещения фитнес-клуба, но и все прилегающее пространство.</p>\r\n\r\n<h6>К услугам гостей клуба:</h6>\r\n\r\n<ul>\r\n	<li>&mdash; тренажерные залы;</li>\r\n	<li>&mdash; залы групповых программ;</li>\r\n	<li>&mdash; единоборства;</li>\r\n	<li>&mdash; бассейн;</li>\r\n	<li>&mdash; фехтование;</li>\r\n	<li>&mdash; корты;</li>\r\n	<li>&mdash; школа сквош и многое другое!</li>\r\n</ul>\r\n\r\n<p>Кроме набора привычных услуг &laquo;Мультиспорт&raquo; предлагает и инновационные направления. А именно: занятия в студии FreeMotion, занятия на открытом воздухе Open air, целевые персонифицированные фитнес-программы, спортивная диагностика и фитнес-экспертиза. Здесь созданы все условия для того, чтобы спорт стал любимой частью вашей жизни &ndash; программы создаются с учетом только ваших особенностей, а выбор клубных карт порадует даже искушенного спортгурмана.</p>\r\n\r\n<p>В качестве разогрева до занятий или просто активного отдыха вы можете сыграть партию настольного тенниса или выбить страйк в боулинге. Ну а после тренировки добро пожаловать в спа, клубное кафе или фитобар.</p>\r\n\r\n<h6>Бассейн</h6>\r\n\r\n<p>есть бассейн, водные программы</p>\r\n\r\n<h6>Групповые программы</h6>\r\n\r\n<p>пилатес, interval, занятия для беременных, лечебная гимнастика, аквааэробика, аэробика, стретчинг, фитнес программы, йога, боевые искусства, танцы</p>\r\n\r\n<h6>Банный комплекс</h6>\r\n\r\n<p>финская сауна, турецкая баня (хамам), гидромассаж Прочие услуги фитнес магазин, СПА, детский фитнес, персональные тренировки, бар / ресторан</p>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '100.898438,59.879284', 'aahPguhmotk', '', '', '');
INSERT INTO `points` VALUES(40, 'Московская школа Айкидо', 0, 'on', '0', 'asdsad', '0', 'Московская школа Айкидо', 'Московская школа Айкидо "Каннагара Додзё" (центральный зал)', 'Московская школа Айкидо "Каннагара Додзё" (центральный зал)', 'aacdab92e1adb398423ce3ccb2daad68.jpg', 23, '2', 10, '1', 15, 'Москва, ул. Академика Петровского, д. 10', '+7 789 456 123', '', '', 'kannagara-aikido.ru', '6-23', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:15.5555562973022px">Додзё основано в 1989 г. С тех пор занятия идут, не прекращаясь. Участники клуба видят айкидо не только как острое оружие, но и как возможность развития личности.</span></p>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(41, 'Спортивный клуб "Ермак"', 0, 'on', '0', 'sportivnyj_klub_ermak', '0', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', '7ad3f0f6c2e27b8308643d167b73d1fa.jpg', 23, '1', 8, '0', 0, 'Москва, ул. Обручева, д. 23, корп. 3', '', '', '', 'www.ermakclub.ru', '6-23', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Cпортивный клуб &quot;Ермак&quot; приглашает всех желающих на тренировки по различным видам единоборств: Бокс, Кикбоксинг, Тайский бокс (Муай-Тай), Боевое самбо, Карате, Айкидо, Дзюдо, Джиу-джитсу, Микс файт (ММА).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Также мы рады предложить для ваших детей (от 5 лет) тренировки по следующим направлениям: Самбо, Бокс, Дзюдо, Карате, Айкидо, Джиу-джитсу и ОФП.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Для женщин у нас предусмотрены групповые программы по аэробике, стретчингу, тайбо, современным танцам и балету.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В тренерский состав спортивного клуба &quot;Ермак&quot; входят: заслуженные мастера спорта, чемпионы России, Европы и Мира, а также Олимпийские призеры.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Ждем Вас в нашем клубе!</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(42, 'Клуб контактных единоборств', 0, 'on', '0', 'klub_kontaktnyh_edinoborstv_kombat', '0', 'Клуб контактных единоборств', 'Клуб контактных единоборств "Комбат"', 'Клуб контактных единоборств "Комбат"', 'a5bfccb8b0d607a6b7eeeac95da2f32d.jpg', 23, '1', 8, '0', 0, 'Москва, ул. Новинский бульвар, д.18а', '', '', '', 'combat.narod.ru', 'с 6 до 23:00 Пн-Ср-Пт', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Автономная некоммерческая организация Клуб Единоборств &quot;Комбат&quot; основной своей целью ставит развитие спортивных и традиционных видов единоборств и систем самозащиты.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Спортсмены клуба &quot;Комбат&quot; - многократные победители и призеры чемпионатов Москвы по тайскому боксу, призеры всероссийских соревнований и неоднократные победители профессиональных турниров по тайскому боксу, а также победители и призеры соревнований по кикбоксингу, боксу, армейскому рукопашному бою, контактному каратэ.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Клуб Комбат является соучредителем Ассоциации Клубов Боевых Искусств (АКБИ) ЦАО города Москвы, &nbsp;совместно с которой было проведено 15 Открытых турниров ЦАО по каратэ, кикбоксингу и рукопашному бою.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Клуб Единоборств &quot;Комбат&quot; существует с 1997 года. Клуб возник на части коллектива спорт клуба &quot;Арбат 51&quot;, в котором в конце 80-х тренировали известные специалисты единоборств: Глеб Горячев, Николай Гречко, Александр Королев (каратэ Сэн&quot;э), Юрий Семенов (кикбоксинг ЕПАКК), Игорь Федорович Пестун, Александр Столяров (кикбоксинг КИТЭК), Константин Давыдов (каратэ, кикбоксинг клуб &quot;Будо&quot;), Алексей Иванов (каратэ Дзесимон).</div>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(43, 'Фитнес клуб "Палестра Sport"', 0, 'on', '0', 'fitnes_klub_palestra_sport', '0', 'Фитнес клуб "Палестра Sport"', 'Фитнес клуб "Палестра Sport"', 'Фитнес клуб "Палестра Sport"', 'c724e61f27f7cf4bbab241b59e6fcb14.jpg', 23, '2', 12, '0', 0, 'Москва, ул. 2-я Песчаная, д. 4а.', '', '', '', 'palestrasport.ru', '6-23', '<p>На территории &laquo;ПАЛЕСТРА Sport&raquo; находятся:</p>\n\n<ul>\n	<li>SPA-салон.</li>\n	<li>Три бассейна (детский, бассейн с морской водой и большой бассейн (25 м) с тремя плавательными дорожками и отдельной зоной для занятий по аква-аэробике).</li>\n	<li>Два тренажерных зала с новейшим оборудованием.</li>\n	<li>Зал единоборств.</li>\n	<li>Крытый теннисный корт со специальным покрытием.</li>\n	<li>Два зала для персональных тренировок.</li>\n	<li>Три зала для групповых тренировок.</li>\n	<li>Марокканский хаммам, сауна и русская баня.</li>\n	<li>SPA-кафе, ресторан, летняя терраса.</li>\n	<li>Детский Пиратский Клуб.</li>\n</ul>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(44, 'Олимпийский комплекс', 0, 'on', '0', 'olimpijskij_kompleks_luzhniki', '0', 'Олимпийский комплекс', 'Олимпийский комплекс "Лужники"', 'Олимпийский комплекс "Лужники"', '29019c3fb3280f9dc7a0dc5d3a080035.jpg', 23, '1', 7, '0', 0, 'Москва, ул. Лужники, д. 24', '', '', '', 'luzhniki.ru', '6-23', '<p>Олимпийский комплекс &quot;Лужники&quot; - крупнейший спортивно-развлекательный комплекс в России и Европе. Территория Лужников занимает площадь свыше 180 га, на которой расположены разнообразные объекты, предназначенные для проведения спортивных соревнований, концертов, других мероприятий и занятия спортом. Важнейшими сооружениями являются Большая спортивная арена , Малая спортивная арена, Дворец спорта, Плавательный бассейн, УСЗ &laquo;Дружба&raquo;, Спортивный городок, Топ-гольф комплекс (driving range).&nbsp;</p>\n\n<p>&quot;Лужники&quot; - грандиозный стадион, который не только обладает богатой историей, но и живет активной жизнью. На территории спорткомплекса регулярно проходят матчи и соревнования всероссийского и международного уровня, а также фестивали и концерты мировых знаменитостей.</p>\n\n<p>Среди занимающихся и посетителей стадиона систематически проводятся многочисленные спортивно-массовые соревнования по различным видам спорта, как среди детей, так и среди взрослых. Большое количество спортивных мероприятий проводятся совместно с городским спорткомитетом и Управлением спорта Центрального административного округа, спортивными Федерациями России.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(45, 'Клуб самбо им. И.И. Латышева', 0, 'on', '0', 'klub_sambo_im._i.i._latysheva', '0', 'Клуб самбо им. И.И. Латышева', 'Клуб самбо им. И.И. Латышева', 'Клуб самбо им. И.И. Латышева', '5343640fb759d18a60b93c5e39807dd5.jpg', 23, '0', 0, '0', 0, 'Москва, Линейный проспект, д. 9', '', '', '', 'www.latishev-club.narod.ru', '6:00-23:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:15.5555562973022px">Клуб им. И.И. Латышева один из известнейших в России и популярнейший среди ребят и родителей в г. Москва. Для сотен мальчишек и девчонок стены клуба стали вторым домом. Клуб назван в честь авиаконструктора, прославленного спортсмена, многократного Чемпиона СССР, заслуженного тренера России, судьи Всесоюзной категории Ильи Ивановича Латышева. 6 ноября 2002 г. клуб отпраздновал свое 20-летие. В клубе занимаются дети от 5 лет и старше и взрослые. Кроме секции самбо существует группа ОФП для малышей 5-6 лет, где ребят учат самостраховке, акробатике, развивают физические качества, много времени уделяется подвижным играм. Для взрослых есть секция боевого самбо и айкидо, для девушек и женщин - шейпинг и аэробика, для детей и взрослых - танцы.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(46, 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 0, 'on', '0', 'sportivno-ozdorovitelnyj_kompleks_atlant_korall', '0', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', '9fdcd99ccc9a7e6035b6104383087de3.jpg', 23, '1', 10, '0', 0, 'Москва, ул. Талалихина, д. 28', '', '', '', 'www.mybasseyn.ru', '6:00-23:00', '<p>Крытый каток: да</p>\n\n<p>Кафе: да</p>\n\n<p>Залы: кардиозал, тренажерный зал, зал бокса, зал групповых программ, зал восточных единоборств</p>\n\n<p>Спортивная медицина: фитнес-тестирование</p>\n\n<p>Занятия для детей: восточные единоборства</p>\n\n<p>Вода в бассейне: морская</p>\n\n<p>Прокат коньков: да</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Одним из лучших в столице является физкультурно-оздоровительный комплекс &laquo;Атлант&raquo;. Перечень предоставляемых услуг и обслуживание клиентов находится здесь на уровне мировых стандартов. Центром всех оздоровительных мероприятий, и, поистине, жемчужиной физкультурно-оздоровительного комплекса является его бассейн. Он славится на всю Москву.</p>\n\n<p>Настоящей гордостью, предметом особой заботы сотрудников бассейна и его изюминкой является вода. Она обладает уникальными оздоравливающими свойствами и настолько чиста, что не вызывает никаких аллергических реакций не только у обычных людей, но даже у людей с высокочувствительными свойствами кожи. Такой эффект достигается за счет того, что бассейн заполняется не хлорированной водой, а природной минеральной из артезианской скважины и по своим лечебным свойствам мало, чем отличается от воды Средиземного моря.</p>\n\n<p>Кроме того, вода, которая находится в чаше бассейна &laquo;Атлант&raquo;, постоянно пропускается через уникальную очистную систему. Сначала мощные насосы, которые работают круглые сутки, прогоняют воду через систему фильтров, а затем вода попадает в дезинфицирующий агрегат, где происходит дезинфекция на основе электролиза. В этом процессе применяются самые современные технологии, которые позволяют сохранять все полезные для здоровья человека свойства воды, а вредные компоненты выделить и удалить.</p>\n\n<p>Каток &quot;Центральный&quot;<br />\nРасписание:<br />\nВремя работы катка необходимо уточнять по телефону.</p>\n\n<p>Цены:<br />\nСуббота:<br />\nс 12:40 до 14:00 &ndash; 240 руб.;<br />\nс 16:00 до 17:00 &ndash; 180 руб.;<br />\nс 20:00 до 21:00 &ndash; 180 руб.<br />\nВоскресение:<br />\nс 14:00 до 15:00 &ndash; 180 руб.<br />\nПрокат коньков &ndash; 150 руб./час (залог 1500 руб.).</p>\n\n<p>Бассейн с морской водой &quot;Атлант&quot;</p>\n\n<p>Плавательный бассейн длиной 25 м., глубиной от 1 до 5 м. Температура воды - 28 градусов по Цельсию.<br />\nКаток &quot;Центральный&quot;</p>\n\n<p>Крытый каток с музыкальным сопровождением и кафе.<br />\nТренажерный зал &quot;Banana Gym&quot;</p>\n\n<p>В комплексе функционирует тренажерный зал.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(47, 'Фитнес клуб', 0, 'on', '0', 'fitnes_klub_zupre', '0', 'Фитнес клуб', 'Фитнес клуб "Zupre"', 'Фитнес клуб "Zupre"', '599e16bf7b346a0de793aba81cbe8629.jpg', 23, '1', 9, '0', 0, 'Москва, ул. Вятская, д. 27, корп. 12', '', '', '', 'www.zupre.ru', '6:00-23:00', '<p>Общая площадь клуба более 4000 квадратных метров.<br />\nВ распоряжении членов клуба:<br />\nтолько современное и надёжное оборудование от мировых лидеров фитнес индустрии (Precor, Icarian, Flex Fitness, Cybex);<br />\nинструкторы сертифицированы Международной Федерацией Спорта, Аэробики и Фитнеса (FISAF) и обладают почётными званиями Кандидатов или Мастеров Спорта;<br />\nширокий выбор групповых и персональных занятий, приятный ассортимент дополнительных услуг;<br />\nудобное расположение - шаговая доступность от метро Савёловская, рядом с крупными дорожными артериями города (ТТК, Бутырская улица, Дмитровское шоссе);<br />\nавтостоянка и велопарковка.</p>\n\n<p>Тренажерный зал &quot;Zupre&quot;</p>\n\n<p>Тренажерный зал с соверменным оборудованием от Precor, Icarian, Flex Fitness, Cybex.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(48, 'Студия практик "СурьяРам"', 0, 'on', '0', 'studija_praktik_surjaram', '0', 'Студия практик "СурьяРам"', 'Студия практик "СурьяРам"', 'Студия практик "СурьяРам"', 'ead382aaca0e5453ea14ec51901adf38.jpg', 23, '1', 0, '0', 0, 'Москва, Нижний Сусальный переулок, дом 5, строение 10', '', '', '', 'www.suryaram.ru', '6:00-23:00', '<p>СТУДИЯ ПРАКТИК &laquo;СУРЬЯРАМ&raquo;&nbsp;</p>\n\n<p>ЗАРЯДИСЬ ЭНЕРГИЕЙ СОЛНЦА!</p>\n\n<p>СурьяРам &ndash; в названии нашей студии соединились два древних имени Солнца. Для нашей планеты Солнце всегда было источником света и тепла, жизненной силы и энергии, символом радости и процветания. Этим лучезарным образом проникнута сердечная атмосфера солнечной студии практик СурьяРам.</p>\n\n<p>В интерьере студии символика бесконечного Космоса органично сочетается с тёплыми и радующими глаз красками благодатной Земли. Продуманная до мельчайших деталей обстановка помогает расслабиться, отрешиться от привычной суеты и настроиться на осознанный диалог Человека и Вселенной, почувствовать себя значимой частью великого целого.</p>\n\n<p>В студии СурьяРам всё призвано служить тем, кто стремится обрести здоровье, молодость, гармонию, хорошее настроение, развитие и успех.</p>\n\n<p>В расписании регулярных классов и календаре событий представлен широкий спектр направлений и видов занятий. Мы предлагаем наших гостям разнообразные практики для тела и души (йога, боевые искусства, славянская гимнастика, особые классы для женщин и детей), семинары и лекции, концерты и спектакли, массаж и другие гармонизирующие и оздоровительные техники.</p>\n\n<p>Мы по праву гордимся тем, что у нас работают профессиональные инструкторы, квалифицированные специалисты и опытные мастера &ndash; безусловно, одни из лучших в Москве. Занятия проходят в двух просторных и светлых залах; в студии оборудован массажный кабинет, удобные раздевалки и душевая.</p>\n\n<p>В магазине студии вы сможете подобрать одежду, аксессуары и принадлежности для практики, тематическую литературу, экологически чистую косметику, товары для здоровья и многое другое &ndash; и всё это станет также отличным подарком для ваших близких.</p>\n\n<p>В уютной чайной можно побаловать себя чашечкой ароматного целебного напитка, настраиваясь на занятие и отдыхая после практики. У нас часто назначают встречи, чтобы спокойно пообщаться с друзьями или коллегами: широкий ассортимент высококачественного чая, полезных и вкусных вегетарианских снэков и сладостей, негромкая мелодичная музыка &ndash; всё здесь располагает к приятному и продуктивному времяпрепровождению.</p>\n\n<p>Все, кого объединяет желание развития и намерение сделать свою жизнь лучше, чувствуют себя как дома в СурьяРам &ndash; ведь он, как и Солнце, щедро и радостно дарит своё тепло и любовь каждому.</p>\n\n<p>Команда СурьяРам &ndash; преподаватели и инструкторы, администраторы и персонал &ndash; с заботой и вниманием создаёт для вас пространство, в котором вы можете с успехом и удовольствием совершенствоваться и расти, познавать и творить, учиться и отдыхать. Наши гости часто говорят, что в любую погоду им достаточно просто прийти в СурьяРам, чтобы почувствовать себя солнечнее и счастливее, &ndash; и это всегда очень радует нас и вдохновляет делать жизнь студии ещё ярче и интересней для вас!</p>\n\n<p>Добро пожаловать в студию практик СурьяРам!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(49, 'Спортивный клуб "Союз-Спорт"', 0, 'on', '0', 'sportivnyj_klub_sojuz-sport', '0', 'Спортивный клуб "Союз-Спорт"', 'Спортивный клуб "Союз-Спорт"', 'Спортивный клуб "Союз-Спорт"', 'bdf17fc8f9c8957768e3a9b4fc18d8c2.jpg', 23, '1', 12, '0', 0, 'Москва, ул. Академика Волгина, д. 33А', '', '', '', 'ssport.ru', '7:00-23:00', '<p>Залы: зал групповых программ, зал восточных единоборств, зал бокса</p>\n\n<p>Занятия для детей: восточные единоборства, хореография, тренировки, теннис</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Наш спортивный клуб может предложить Вам два теннисных корта, две универсальные игровые площадки, зал групповых программ и зал боевых искусств.</p>\n\n<p>Общая площадь спортивных площадок составляет более 3000 кв. метров.</p>\n\n<p>Площадки с профессиональным покрытием, освещены и размечены четкими линиями, согласно международным требованиям.</p>\n\n<p>На территории &quot;Союз-спорт&quot; расположено два теннисных корта, размеры и разметка которых соответствуют международным стандартам. А профессиональное покрытие Taraflex обеспечивает правильную амортизацию, высокий уровень безопасности, комфорта и качества игры.</p>\n\n<p>Кроме того, в спортклубе &quot;Союз-спорт&quot; есть две универсальные площадки с профессиональным универсальным покрытием и разными разметками под разные виды спорта. Вариант игры на такой площадке будет более бюджетным. Такая площадка подойдёт для новичков и игроков среднего уровня и может заменить корт крытый теннисный.</p>\n\n<p>Футбольный зал может стать местом встречи не только друзей, но и коллег. Редкий мужчина откажется от удовольствия поиграть в футбол в хорошей компании. Поэтому &laquo;аренда футбольной площадки&raquo; на территории спортклуба &laquo;Союз-спорт&raquo; - одна из самых востребованных услуг. Аренда футбольного зала возможна в любое время года. Цена на услугу &laquo;аренда зала для футбола&raquo; доступная.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(50, 'Клуб боевых искусств "Бусидо"', 0, 'on', '0', 'klub_boevyh_iskusstv_busido', '0', 'Клуб боевых искусств "Бусидо"', 'Клуб боевых искусств "Бусидо"', 'Клуб боевых искусств "Бусидо"', '95e1391051292be5a8334c8051a4ef39.jpg', 23, '1', 9, '0', 0, 'г. Москва ул. Красноармейская, д.11 к2', '', '', '', 'bussido.ru', '7:00-23:00', '<p>Клуб &laquo;БУСИДО&raquo; проводит набор желающих для изучения боевых искусств.</p>\n\n<p>Вас ждут упорные тренировки, аттестации на цветные пояса, выступления на соревнованиях.</p>\n\n<p>В результате занятий боевыми искусствами крепнет не только тело, но и дух. Человек становится способным не только защитить себя. Но и учится ставить перед собой цели и достигать результатов.</p>\n\n<p>В клубе тренируются разносторонние люди. Многие из них учатся в высших учебных заведениях, кто-то работает в бизнесе, государственных структурах, правоохранительных органах.</p>\n\n<p>Помимо этого, комплекс предлагает услуги банного комплекса:</p>\n\n<p>Сухо-воздушная сауна до 120 градусов по цельсию, парная турецкий хамам(40-50град ) и оздоровительная инфракрасная сауна.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(51, 'Фитнес-центр "Миллениум"', 0, 'on', '0', 'fitnes-centr_millenium', '0', 'Фитнес-центр "Миллениум"', 'Фитнес-центр "Миллениум"', 'Фитнес-центр "Миллениум"', '396c030cdb1fa4a3a1eb5d9c7b764f37.jpg', 23, '1', 8, '0', 0, 'Москва, Каширское шоссе, д. 55А', '', '', '', 'milfit.ru', '7:00-23:00', '<p>&laquo;Миллениум&raquo; &mdash; новый фитнес-центр с бассейном на юге Москвы!<br />\nФитнес-центр представляет самый большой по площади тренажерный зал в ЮАО г. Москвы с самым современным оборудованием таких ведущих компаний как: TechnoGym, Star Trac, Precor, Hoist.</p>\n\n<p>Аква-зона фитнес-центра представлена бассейном 25 метров, отдельной зоной для проведения занятий по аква-аэробике и банным комплексом, включающим финскую сауну и турецкий хаммам. Комфортная зона отдыха, оборудованная шезлонгами, позволит снять напряжение и расслабиться.</p>\n\n<p>Для любителей боевых искусств, мы приготовили популярные и интересные занятия с профессиональными тренерами. Вы можете выбрать именно то, что Вам нравится: Самбо, Бокс, М-1, Кудо, Айкидо и многие другие, известно, &nbsp;что восточные единоборства позволяют снять стресс и подготовить не только тело, но и дух, к ритму жизни в нашем мегаполисе.</p>\n\n<p>Самые популярные и эффективные групповые программы, такие как Kinesis, TRX, Zumba, Club Joy, Pilates, Yoga и многие другие &mdash; ждут вас.</p>\n\n<p>Вы можете выбрать удобное для вас время для персональных тренировок или записаться на занятия в группе. Под руководством высококвалифицированной команды инструкторов, вы достигнете не только желаемых результатов, но и получите безграничный заряд энергии и ярких эмоций. Ваши будни, больше никогда не будут серыми и рутинными.</p>\n\n<p>&laquo;Миллениум&raquo; &mdash; это ваш ежедневный источник жизненного позитива и бодрости.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(52, 'Спортивный центр "Синяя Птица"', 0, 'on', '0', 'sportivnyj_centr_sinjaja_ptica', '0', 'Спортивный центр "Синяя Птица"', 'Спортивный центр "Синяя Птица"', 'Спортивный центр "Синяя Птица"', '8621706ad87d5d7fe600a388717a08db.jpg', 23, '1', 0, '0', 0, 'Москва, ул. Старокачаловская, влад. 22', '', '', '', 'tennismoskva.ru', '8:00-22:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&quot;Синяя Птица&quot; - это современный спортивный теннисный центр, площадью 5000 кв. м., с прилегающей территорией 4500 кв.м, расположенный в зеленой зоне района Северное Бутово (ЮЗАО г. Москвы).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Центр функционирует с 2004 года и сегодня располагает cледующей инфраструктурой:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">\n<ul>\n	<li>уникальное спортивное сооружение на базе воздухоопорной конструкции;</li>\n	<li>7 крытых теннисных кортов с покрытием тарафлекс и &laquo;искусственная трава&raquo;, которые предоставляются в аренду, а также используются для проведения групповых, индивидуальных занятий по теннису для детей и взрослых и турниров, в том числе турниров РТТ;</li>\n	<li>5 открытых теннисных кортов кортов с покрытием &laquo;искусственная трава&raquo; для игры в теннис в период с мая по сентябрь. Зимой на этой территории заливается каток.;</li>\n	<li>специально оборудованные залы для занятий айкидо, таэквондо, кикбоксингом боксом и другими видами единоборств;</li>\n	<li>раздевалки с душевыми кабинами и спортивный магазин, предлагающий профессионалам и любителям тенниса одежду, обувь ракетки, мячи, аксессуары для большого тенниса от ведущих мировых производителей.</li>\n</ul>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">Кроме того, к вашим услугам уютное кафе на балконе, с которого можно наблюдать за проведением тренировок и соревнований.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">Центр работает с 08:00 до 22:00.</div>\n</div>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(53, 'Центр раннего развития ребенка "Чудо-школа умница"', 0, 'on', '0', 'centr_rannego_razvitija_rebenka_chudo-shkola_umnica', '0', 'Центр раннего развития ребенка "Чудо-школа умница"', 'Центр раннего развития ребенка "Чудо-школа умница"', 'Центр раннего развития ребенка "Чудо-школа умница"', '7c481d5839f915f371e74aa97998c18b.jpg', 23, '0', 0, '0', 0, 'Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2', '', '', '', 'www.chudo-shkola.ru', '8:00-22:00', '<p>Центр детского развития ЧУДО-ШКОЛА УМНИЦА&nbsp;<br />\nдля детей и родителей</p>\n\n<p>Вы хотите быть заботливым и любящим родителем?<br />\nВы боитесь упустить драгоценное время в вопросах развития вашего малыша?<br />\nВы желаете видеть своего ребенка гармонично развитой личностью?<br />\nВы мечтаете, чтобы ваши дети были счастливы, успешны и нашли свое место в жизни?<br />\nНаш детский центр развития ребенка поможет вам в реализации всех этих задач.&nbsp;<br />\nЧто вы найдете, придя в ЧУДО-ШКОЛУ УМНИЦА?<br />\nпрофессиональных педагогов, которых обожают дети,&nbsp;<br />\nдружескую атмосферу радости, взаимопонимания и поддержки,&nbsp;<br />\nбольшой выбор (более 50!) программ для детей от 0 до 14 лет,&nbsp;<br />\nпсихологические и творческие программы для родителей,&nbsp;<br />\nпрофессиональную поддержку родителей в вопросах воспитания и развития,&nbsp;<br />\nиндивидуальный подход к каждому ребенку и к каждой семье,&nbsp;<br />\nприятные и нужные для развития семейных отношений традиции,&nbsp;<br />\nпродуманность и отлаженность всех организационных и образовательных процессов.&nbsp;<br />\nНаш центр детского развития найдет общий язык со всеми, кто верит в то, что каждый ребенок уникален и неповторим!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(54, 'Школа айкидо "Аметсучи"', 0, 'on', '0', 'shkola_ajkido_ametsuchi', '0', 'Школа айкидо "Аметсучи"', 'Школа айкидо "Аметсучи"', 'Школа айкидо "Аметсучи"', '2b6e57ab9aae6f86e2385a236fc0bca4.jpg', 23, '1', 0, '0', 0, 'Москва, ул. Поляны, д. 35', '', '', '', 'www.ametsuchi.ru', '8:00-22:00', '<p>Айкидо - очень молодое боевое искусство, воплотившее однако в себе принципы и методы, которые насчитывают не одну сотню лет.</p>\n\n<p>Неправильно будет считать айкидо исключительно системой различных приемов и методов. Нужно правильно понимать, что реальная схватка имеет огромное отличие от поединка в спортивном зале. Когда отсутствуют какие-либо рамки, ограничивающие действия бойцов и вполне вероятным исходом поединка является смерть, на первый план выходят морально-психологические качества. Тогда физически слабый человек вполне может справится с более сильным. Физическая сила не является определяющей для победы.</p>\n\n<p>Аттестация по Айкидо проводится 2 - 3 раза в год: На весенних, летних или осенних учебно-аттестационных семинарах, которые проводят, как правило, шиханы Айкикай Хомбу Додзё.</p>\n\n<p>Сдать экзамен можно также и аттестационной комиссии уполномоченной Айкикай Хомбу Додзё на принятие экзаменов у студентов как на степени кю, так и степени дан.</p>\n\n<p>Результат таких экзаменов вполне легитимный и Хомбу Додзё его признаёт в полной мере.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(55, 'Клуб айкидо в Сокольниках', 0, 'on', '0', 'klub_ajkido_v_sokolnikah', '0', 'Клуб айкидо в Сокольниках', 'Клуб айкидо в Сокольниках', 'Клуб айкидо в Сокольниках', '90ecfe50d5ceb356c922f9e3da403d5a.jpg', 23, '2', 2, '0', 0, 'Москва, ул. Стромынка, д. 20, корп. 1', '', '', '', 'http://aikido-v-sokolnikah.ru', '8:00-22:00', '<p>Айкидо в Сокольниках</p>\n\n<p>Если Вы ищите место для занятий Айкидо в районе станции метро Сокольники, то Вам определенно не найти места более подходящего, чем наш Клуб Айкидо в Сокольниках. В нашем Клубе занимаются как взрослые, так и дети, как новички, так и люди с многолетним опытом. Подберите наиболее подходящую для Вас программу, ознакомившись с нашим расписанием.</p>\n\n<p>Айкидо &mdash; японское боевое искусство, созданное О-сэнсэем Морихэем Уэсибой как синтез его исследований боевых искусств, философии и религиозных убеждений. Целью Уэсибы было создать и разработать боевое искусство, впитавшее в себя все достижения великих мастеров. Айкидо акцентируется на слиянии с атакой противника и перенаправлении энергии атакующего (в противовес встречи силы силой). В дополнение к физическим техникам и тренировкам, айкидо придаёт особое значение тренировкам сознания, управляемого расслабления, и развития &laquo;духа&raquo; и силы &laquo;ки&raquo;.</p>\n\n<p>Для учеников появились новые разделы с дополнительной методической информацией и видео. Доступ к новым разделам просите у Вашего инструктора.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(56, 'Айкидо клуб', 0, 'on', '0', 'ajkido_klub', '0', 'Айкидо клуб', 'Айкидо клуб', 'Айкидо клуб', '94774f3c362afcea93f097a0fd1912bb.jpg', 23, '1', 0, '0', 0, 'Москва, Ул. 7-я Текстильщиков, дом 5', '', '', '', 'Aikido1.ru', '8:00-22:00', '<p>Здравствуйте! Мы рады приветствовать вас на сайте федерации Айкидо Айкикай.</p>\n\n<p>Айкидо &ndash; это боевое искусство, которое позволит оказать сопротивление гораздо более сильному противнику. Его сила и ярость будут направлены против него самого.</p>\n\n<p>Тренировки по Айкидо абсолютно травмобезопасны. На тренировках могут тренироваться люди совершенно разных возрастов и уровней физической подготовки. Большое внимание на тренировках уделяется навыкам владения своим телом и дыхательным техникам.</p>\n\n<p>Тренировки проводятся для детей, взрослых, а также индивидуально. Всю информацию о расписании занятий, залах и ведущих тренерах вы можете найти в соответсвующих разделах сайта. На тренировках вы приобретете не только базовые знания техник Айкидо, но и научитесь ударной техники, технике работы с оружием и повысите уровень физической подготовки. Ждем Вас в наших залах!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(57, 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 0, 'on', '0', 'klub_ajkido_dzikisinkaj_na_volgogradskom_prospekte', '0', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', '0b12c056f3cb0b483a394d2c53088f76.jpg', 23, '1', 0, '0', 0, 'Москва, Волгоградский проспект, д. 28', '', '', '', 'www.jikishinkai.ru', '8:00-22:00', '<p>В 1992 году Номура сенсей постановил, что Огнян Найдов-Железов, имевший в то время 1 Дан и Андрей Лычев (тоже 1 Дан) должны организовать свою отдельную секцию. Такая секция начала работать в сентябре 1992 года при Колледже Сбербанка РФ и просуществовала целый год. Один из занимавшихся в секции новичков &ndash; Сергей Волошко предложил организовать секцию в МГТУ.</p>\n\n<p>Благодаря поддержке кафедры физвоспитания и лично декана Киселева такая секция начала работать 4 октября 1993 года. Эта дата и считается Днем Рождения Айкидо в МГТУ.</p>\n\n<p>Практически с самого начала секция работала под пристальным вниманием Хомбу Додзе. Сиханы Хомбу Додзе Итихаси и Миямото первый раз посетили занятия в секции Айкидо МГТУ в декабре 1993 года, к этому периоду относится и первое официальное показательное выступление членов Клуба перед широкой аудиторией. С 1995 года Миямото сихан, решением Досю, был назначен техническим куратором клуба. С тех пор, ежегодно Миямото сихан проводит в Москве семинар по Айкидо, организатором которого является Федерация Айкидо Айкикай России и лично Огнян Кременович Найдов-Железов.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(58, 'Дом культуры', 0, 'on', '0', 'dom_kultury_berendej', '0', 'Дом культуры', 'Дом культуры "Берендей"', 'Дом культуры "Берендей"', '1011a7b8137f2619ab1ed4c839fbb638.jpg', 23, '0', 0, '0', 0, 'Москва, проспект маршала Жукова, д. 76, корп. 1', '', '', '', '', '12:00-18:00 ф', '<p>В 1991 году был открыт ДК &laquo;Берендей&raquo;, который с начала своего возникновения и по сегодняшний день пользуется большой популярностью среди населения.</p>\r\n\r\n<p>Здесь каждый может найти по душе любимое занятие.</p>\r\n\r\n<p>Много талантов вырастил &laquo;Берендей&raquo;, многим помог определиться в жизни, а кому-то подарил момент общения.</p>\r\n\r\n<p>Одна из самых любимых и посещаемых секций - секция айкидо для детей.</p>\r\n\r\n<p>График занятий:<br />\r\n- вторник - с 17:00 до 18:00;<br />\r\n- суббота - с 12:00 до 13:00.</p>\r\n\r\n<p>Инструктор: Щеглова (Коваленко) Наталья, 2 дан айкидо айкикай</p>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES(59, 'asdasdsa', 0, 'on', '0', 'asdasdsa', '0', '', '', '', 'cd210e10f7b05c90b12d5ffb2d2ef844.jpg', 24, '1', 0, '0', 0, 'asd', 'das', 'das@das.ru', 'protected.for@gmail.com', 'asd', 'das', '', '01.01.1970 12:00', '01.01.1970 12:00', '', 'd', 'dsa', 'das', 'dsa');

-- --------------------------------------------------------

--
-- Структура таблицы `points_halls`
--

DROP TABLE IF EXISTS `points_halls`;
CREATE TABLE IF NOT EXISTS `points_halls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `order` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=143 ;

--
-- Дамп данных таблицы `points_halls`
--

INSERT INTO `points_halls` VALUES(5, 'КАРАТЭ "САКУРА" ДЛЯ МУЖЧИН ОТ 21 ГОДА - МЕЖДУНАРОДНЫЙ ЦЕНТР ИСТОРИЧЕСКОГО ФЕХТОВАНИЯ "ЭСКАЛИБУР"', '1418225972_6ad78c8e7e13169fb1ba0af7e12d0acf.jpg', 'Каратэ "Сакура" для мужчин от 21 года - Международный центр исторического фехтования "Эскалибур" В соответствии с Уставом Каратэ-клуба «САКУРА» его членами могут быть только мужчины в возрасте от 21 года и старше (без ограничения). Сейчас возраст участников клуба варьируется от 24 до 52 лет. Руководство Клуба считает нецелесообразным включать в тренировочный процесс представительниц прекрасного пола, а также детей и подростков в связи с тем, что они требуют специфического подхода в методике тренировки. Тренировки проводятся два-три раза в неделю под руководством инструкторов, имеющих квалификацию не ниже 1 Дана. Основной тренировочный день - суббота, первая половина дня. Занятие длится 5-6 часов с одним перерывом на 30 мин. Время проведения второй и третьей тренировки (рабочие дни) выбирается при формировании группы и по длительности составляет 1,5-2 часа. Набор в группы производится дважды в год: в сентябре и в феврале. Каждая группа состоит из 8 - 16 человек.', 0, 39);
INSERT INTO `points_halls` VALUES(7, 'РУКОПАШНЫЙ БОЙ ДЛЯ ВСЕХ ЖЕЛАЮЩИХ В МЕЖДУНАРОДНОМ ЦЕНТРЕ ИСТОРИЧЕСКОГО ФЕХТОВАНИЯ "ЭСКАЛИБУР"', '1418226091_e7686556da84c215100e0be28be4ff65.jpg', 'Рукопашный бой для всех желающих в международном центре исторического фехтования "Эскалибур" Эффективность обучения зависит от многих факторов. В том числе от того, чему и как учат. КПД наших тренировок практически 100%, кроме всего прочего, еще и потому, что мы точно знаем чему и на каком этапе, следует обучать.', 0, 39);
INSERT INTO `points_halls` VALUES(8, 'АЙКИДО ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 13 ЛЕТ - МЕЖДУНАРОДНЫЙ ЦЕНТР ИСТОРИЧЕСКОГО ФЕХТОВАНИЯ "ЭСКАЛИБУР"', '1418226645_9f1bea3ddbf339911b8f93606b7e460f.jpg', 'Айкидо для взрослых и детей с 13 лет - Международный центр исторического фехтования "Эскалибур" Наш клуб ориентирован на серьёзно и интенсивно занимающихся людей возрастом от 13 лет (средний возраст в группах 25-40 лет) и желающих изучать и применять на практике традиционное Айкидо Ивама рю. Мы создаём для этого все условия: возможность тренироваться каждый день, семинары с участием главы школы Хитохира Сайто Сенсея, ученики нашего клуба ежегодно посещают Иваму (Япония) в качестве учидеши, летние лагеря, спецтренировки для старших учеников, аттестации на кю и даны с выдачей японских дипломов. Также для таких учеников действуют специальные условия оплаты.', 0, 39);
INSERT INTO `points_halls` VALUES(9, 'АЙКИДО В МОСКОВСКОЙ ШКОЛЕ АЙКИДО "КАННАГАРА ДОДЗЁ"', '1418227320_808f957cfd300f51ab6ad4aa9cc0d563.jpg', 'Айкидо в Московской школе Айкидо "Каннагара Додзё" Есть группы для новичков. Все подробности уточняйте по телефону.', 0, 40);
INSERT INTO `points_halls` VALUES(10, 'Дзюдо для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_629395549dfa0d6152e8a4fc32512a65.jpg', 'Дзюдо для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41);
INSERT INTO `points_halls` VALUES(11, 'Бокс для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_f5369c5bf339ecf5e991a204a5a9ec5a.jpg', 'Бокс для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41);
INSERT INTO `points_halls` VALUES(12, 'Айкидо для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_29eccc600d4ae4411bac90b5cec68554.jpg', 'Айкидо для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41);
INSERT INTO `points_halls` VALUES(13, 'Самбо для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_3a850bdbc1444f888d9f65fdc2a07b2c.jpg', 'Самбо для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41);
INSERT INTO `points_halls` VALUES(14, 'Джиу-джитсу для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227866_d7e8a94f95448abd5312917bea987198.jpg', 'Джиу-джитсу для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41);
INSERT INTO `points_halls` VALUES(15, 'Ушу в клубе контактных единоборств "Комбат"', '1418300170_12105b18ea9595b93265b0b2f42cf185.jpg', 'Ушу в Клубе контактных единоборств "Комбат"', 0, 42);
INSERT INTO `points_halls` VALUES(16, 'Айкидо в клубе контактных единоборств "Комбат"', '1418300170_ada8158543387321b45cdd4ca45d33c4.jpg', 'Айкидо в Клубе контактных единоборств "Комбат"', 0, 42);
INSERT INTO `points_halls` VALUES(17, 'ТРЕНАЖЕРНЫЙ ЗАЛ "ПАЛЕСТРА SPORT"', '1418300694_f0989c73902307bb89e4ace34b49bf8d.jpg', 'Тренажерный зал "Палестра Sport" Дизайн, простор, технологии – вот три основные характеристики нашего нового тренажерного зала с новейшей линией профессионального оборудования итальянской марки TechoGym, с индивидуальным экраном и программой развлечений.', 0, 43);
INSERT INTO `points_halls` VALUES(18, 'МОРСКОЙ БАССЕЙН "ПАЛЕСТРА SPORT"', '1418300694_26b248f133ced082c96bc65c8325c4d4.jpg', 'Морской бассейн "Палестра Sport" Отправиться в морское путешествие прямо из Москвы? Это не только возможно, но и полезно для кожи, которая с радостью впитывает минералы, содержащиеся в морской воде. Плазма человеческой крови и морская вода очень схожи по составу, как утверждают биохимики. Вот почему тело человека в море ощущает себя на редкость уютно. 15 минут расслабления в морской воде восстанавливают организм как 1,5 часа сна, укрепляет иммунитет и нервную систему.', 0, 43);
INSERT INTO `points_halls` VALUES(19, 'МАЛАЯ СПОРТИВНАЯ АРЕНА ОЛИМПИЙСКОГО КОМПЛЕКСА "ЛУЖНИКИ"', '1418303894_530460bcae3464db5dd4418a6b67535b.jpg', 'Малая спортивная арена олимпийского комплекса "Лужники" Малая спортивная арена представляет собой универсальное спортивное сооружение длиной 146 м, шириной 100 м и высотой 16 м с игровым полем 80 х 36 м. Игровое поле трансформируется в ледяную площадку 60 х 31 м.', 0, 44);
INSERT INTO `points_halls` VALUES(20, 'БОЛЬШАЯ СПОРТИВНАЯ АРЕНА ОЛИМПИЙСКОГО КОМПЛЕКСА "ЛУЖНИКИ"', '1418303904_c3cba42b46218f2fe2d4a5de44ec61a8.jpg', 'Большая спортивная арена олимпийского комплекса "Лужники" Большая спортивная арена - один из самых крупных пятизвездных футбольных стадионов мира, имеет форму, близкую к эллипсу, размером 301x240 м. Футбольное поле размером 105х68 м. покрыто искусственным газоном, и окружено 8-полосной круговой беговой дорожкой длиной 400 м.', 0, 44);
INSERT INTO `points_halls` VALUES(21, 'АЙКИДО ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 5 ЛЕТ - ИМ. И.И. ЛАТЫШЕВА', '1418304456_53f7e71fc8a77167ff7ff69c01c6437c.jpg', 'Айкидо для взрослых и детей с 5 лет - им. И.И. Латышева Расписание занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 482-29-24', 0, 45);
INSERT INTO `points_halls` VALUES(22, 'САМБО ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 5 ЛЕТ - ИМ. И.И. ЛАТЫШЕВА', '1418304457_30c11856d130076b855b2bf30b848554.jpg', 'Самбо для взрослых и детей с 5 лет - им. И.И. Латышева Расписание занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 482-29-24', 0, 45);
INSERT INTO `points_halls` VALUES(23, 'АЭРОБИКА ДЛЯ ДЕВУШЕК И ЖЕНЩИН - ИМ. И.И. ЛАТЫШЕВА', '1418304499_78dc4bea7e5e64f1e7c74a3eaecc2d18.jpg', 'Аэробика для девушек и женщин - им. И.И. Латышева Расписание занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 482-29-24', 0, 45);
INSERT INTO `points_halls` VALUES(24, 'ПИЛАТЕС В ФИТНЕС-ЦЕНТРЕ "BANANA GYM" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_b518f0331405448748595454f17a7410.jpg', 'Пилатес в Фитнес-центре "Banana Gym" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46);
INSERT INTO `points_halls` VALUES(25, 'КИКБОКСИНГ В ФИТНЕС-КЛУБЕ "MAXIMUS" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_4d0eca35e0cf3e508f3d8f4b69af3d71.jpg', 'Кикбоксинг в Фитнес-клубе "Maximus" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 632-66-00', 0, 46);
INSERT INTO `points_halls` VALUES(26, 'АРАБСКИЕ ТАНЦЫ ДЛЯ ВСЕХ ЖЕЛАЮЩИХ - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_9b5ea558c5340fb66e5e5e4aa807886a.jpg', 'Арабские танцы для всех желающих - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46);
INSERT INTO `points_halls` VALUES(27, 'ТЕННИСНЫЕ КОРТЫ ФОК "АТЛАНТ" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_4f37086e5a2214442c8d2f3c4b0dc784.jpg', 'Теннисные корты ФОК "Атлант" - "Атлант" ("Коралл") ФОК "Атлант" предлагает в аренду универсальный спортивный зал для тенниса и открытый теннисный корт с покрытием искусственная трава, имеются раздевалки, душевые, парковка. от 700 руб./час', 0, 46);
INSERT INTO `points_halls` VALUES(28, 'ФИТНЕС БОКС ДЛЯ ВСЕХ ЖЕЛАЮЩИХ В "BANANA GYM" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_1a3bdadeec07e5287e269579109019f1.jpg', 'Фитнес бокс для всех желающих в "Banana Gym" - "Атлант" ("Коралл") Тренировки построены так, чтобы в них было сочетание и аэробных, и анаэробных нагрузок. При этом включаются все группы мышц - спины, плечевого пояса, брюшного пресса, шеи, рук и ног. Бокс делает их выносливыми, эластичными, и в это же время рельефными. Обмен веществ улучшается, здоровее становится организм - лишний вес постепенно уходит, исчезает отечность, дряблость. Занятие фитнес боксом на Таганской (Волгоградский Проспект) очень многое дает также и эмоциональной жизни человека. В боксе на Пролетарской любое движение должно быть точным и выверенным. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46);
INSERT INTO `points_halls` VALUES(29, 'БОКС ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 8 ЛЕТ - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_ade14d6746e4a4e2995812eee7e5198a.jpg', 'Бокс для взрослых и детей с 8 лет - "Атлант" ("Коралл") Групповые и индивидуальные занятия боксом для всех желающих. +7 (495) 632-66-00', 0, 46);
INSERT INTO `points_halls` VALUES(30, 'АЙКИДО В СПОРТИВНО-ОЗДОРОВИТЕЛЬНЫЙ КОМПЛЕКС "АТЛАНТ" ("КОРАЛЛ") - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_b1f8f58eeb23103f21c550c4c233fe61.jpg', ' Айкидо в Спортивно-оздоровительный комплекс "Атлант" ("Коралл") - "Атлант" ("Коралл") Телефон: +7 (495) 671-73-70', 0, 46);
INSERT INTO `points_halls` VALUES(31, 'АЭРОБИКА В ФИТНЕС-ЦЕНТРЕ "BANANA GYM" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_910428b7e4117ed54da9a867dd08c89d.jpg', ' Аэробика в Фитнес-центре "Banana Gym" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46);
INSERT INTO `points_halls` VALUES(32, 'ПЛАВАНИЕ В СОК "АТЛАНТ" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_6842350de9692c3a3a96160919cfca73.jpg', 'Плавание в СОК "Атлант" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46);
INSERT INTO `points_halls` VALUES(33, 'Аэробика в Фитнес-клубе "Maximus" - "Атлант" ("Коралл") ', '1418305069_1399d76e358f21c562688b415a190765.jpg', 'Аэробика в Фитнес-клубе "Maximus" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 632-66-00', 0, 46);
INSERT INTO `points_halls` VALUES(34, 'Мини-футбол для всех желающих - "Zupre"', '1418306727_e175cd095b953cbf7800cec6205c8727.jpg', 'Мини-футбол для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(35, 'Айкидо для всех желающих - "Zupre"', '1418306727_1d11efeb9459d6af330ea39ba7782488.jpg', 'Айкидо для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(36, 'Бокс для всех желающих - "Zupre" ', '1418306727_91999c24ee6dd5a008d411d6dd183371.png', 'Бокс для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(37, 'Аэробика для всех желающих - "Zupre"', '1418306727_b2b86cb6813163946092982ebb094593.jpg', 'Аэробика для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(38, 'Фитнес клуб "Zupre" ', '1418306727_4e5d96296b630dc8565b7e2d42a61154.jpg', 'Фитнес клуб "Zupre" Современный трёхэтажный фитнес клуб общей площадью более 4000 кв. м.', 0, 47);
INSERT INTO `points_halls` VALUES(39, 'Скалодром для всех желающих - "Zupre"', '1418306727_d623813d5e38b195ec087d8da40137b8.jpg', 'Скалодром для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(40, 'Пилатес для всех желающих - "Zupre"', '1418306830_f6a6ed2c9ba82d7552080a49f3da7f2c.jpg', 'Пилатес для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(41, 'Танцевальные занятия для всех желающих - "Zupre"', '1418306958_517de1928495ee754764eb458a45e1e2.jpg', 'Танцевальные занятия для всех желающих - "Zupre" Танцевальные направления: - reggae; - belly dance; - flamenco; - jazz.', 0, 47);
INSERT INTO `points_halls` VALUES(42, 'Волейбол для всех желающих - "Zupre"', '1418306958_00453c66b772f93cd96c1b76cc7b0ba1.jpg', 'Волейбол для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(43, 'Настольный теннис для всех желающих - "Zupre"', '1418307121_b40513450b813833bcb40b5a659b67ec.jpg', 'Настольный теннис для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47);
INSERT INTO `points_halls` VALUES(44, 'Айкидо для детей и взрослых - "СурьяРам" ', '1418307493_727525ebd53e4e349d5398d7301a8788.jpg', 'Айкидо для детей и взрослых - "СурьяРам" Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48);
INSERT INTO `points_halls` VALUES(45, 'Самооборона для детей и взрослых - "СурьяРам" ', '1418307493_7602e9fe058305a0af9bc9b0dcd3e698.jpg', 'Самооборона для детей и взрослых - "СурьяРам" Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48);
INSERT INTO `points_halls` VALUES(46, 'Гатка и Пантра - "СурьяРам" ', '1418307493_c588a967a2f04cb4780cbf1dd62b610e.jpg', 'Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48);
INSERT INTO `points_halls` VALUES(48, 'Йога для детей и взрослых - "СурьяРам" ', '1418307493_c2165760e11327d576b55d4e0e022ee9.jpg', 'Йога для детей и взрослых - "СурьяРам" Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Направления: хатха, кундалин, для беременных, фитнес-йога, сукшма вьяяма. Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48);
INSERT INTO `points_halls` VALUES(49, 'Айкидо для взрослых и детей с 4 лет - "Союз-Спорт" ', '1418307842_3fa16878d81cb72b80ac9c4a80b8675d.jpg', 'Возрастные группы: - 4-7 лет; - 7-9 лет; - 10-14 лет; - от 14 лет. Стоимость занятий для детей: - 3300 руб./мес. - 3 раза в неделю; - 2500 руб./мес. - 2 раза в неделю. Стоимость занятий для взрослых: - 5000 руб./мес. - 3 раза в неделю; - 3500 руб./мес. - 2 раза в неделю. Занятия проводятся при поддержке центра развития Айкидо. Центр развития Айкидо является общественной организацией, которая была создана группой ведущих тренеров и спортивных специалистов России с целью развития Айкидо в стране, накопления и совершенствования опыта, популяризации физкультуры и спорта среди населения, развития социальных спортивных программ', 0, 49);
INSERT INTO `points_halls` VALUES(50, 'Волейбол для всех желающих - "Союз-Спорт"', '1418307842_23387e8b60f8fcb9a07c3c76eef7ca1c.jpg', 'С 07:00 до 24:00 в будни и выходные дни, наш клуб предлагает Вам две универсальные площадки, с профессиональным покрытием Teraflex. Покрытие Taraflex обеспечивает необходимую амортизацию, высокий уровень безопасности, комфорта и качества игры. Снижает негативное воздействие на суставы, препятствуя возникновению чувства усталости у игроков, позволяет избегать травматизма!', 0, 49);
INSERT INTO `points_halls` VALUES(51, '', '1418307842_140efef4ef210d407005e9e0afac43bc.jpg', '', 0, 49);
INSERT INTO `points_halls` VALUES(53, 'Pilates для всех желающих - "Союз-Спорт"', '1418307842_cb97f3a2fc626f5119804c8c2e48ad68.jpg', ' График занятий уточняйте по телефону или на сайте клуба. Телефон: +7 (495) 781-84-84', 0, 49);
INSERT INTO `points_halls` VALUES(54, 'Мини-футбол для детей и взрослых - "Союз-Спорт" ', '1418307842_348b6077e289a00853f5b6b24b6806c0.jpg', 'Футбольный зал может стать местом встречи не только друзей, но и коллег. Редкий мужчина откажется от ', 0, 49);
INSERT INTO `points_halls` VALUES(55, 'Спортивный клуб "Союз-Спорт" ', '1418307842_c19be4a2700ce9b9e2b3104864482ad1.jpg', 'Подробности уточняйте по телефону: +7 (495) 781-84-84 Направления: пилатес, body sculpt, калланетика, степ, стрейчинг, аэробика.', 0, 49);
INSERT INTO `points_halls` VALUES(56, 'Танцы для детей 5-13 лет - "Союз-Спорт" ', '1418307842_50811cbbc9671f925d27db864ac92d5f.jpg', 'В клубе ведет свою работу школа танцев "Мир Движения" для детей от 5 до 13 лет. Занятия проходят по будним дням, в тренерском составе 3 высококвалифицированных педагога. Направления: современные, хореография. Цена: 2500-3000 руб./месяц', 0, 49);
INSERT INTO `points_halls` VALUES(57, 'Айкидо для детей от 4 лет - "Союз-Спорт" ', '1418307842_62699c69320781f1e48c453b1d8cc1c9.jpg', 'Все подробности о работе секции уточняйте по телефону: +7 (495) 781-84-84', 0, 49);
INSERT INTO `points_halls` VALUES(58, 'Настольный теннис для школьников 7-16 лет - "Союз-Спорт" ', '1418307842_d24fc3f6ef868857565056b2b67900c0.jpeg', 'Занятия проходят в просторном, хорошо освещённом зале в мини-группах до 8 человек. В нашем арсенале несколько теннисных столов в том числе Cornilleau Competition 740 - официальный стол чемпионата Европы, одобренный ITTF. Занятия проходят по субботам и воскресеньям с 14:30 до 16:00. Стоимость занятий: - 4300 руб. - 2 раза в неделю; - 2600 руб. - 1 раз в неделю.', 0, 49);
INSERT INTO `points_halls` VALUES(59, 'Теннис для взрослых и детей 5-15 лет - "Союз-Спорт" ', '1418307842_a98661a885f754a0179a17fa21c2dd8b.jpg', 'На территории "Союз-спорт" расположено два теннисных корта, размеры и разметка которых соответствуют международным стандартам. А профессиональное покрытие Taraflex обеспечивает правильную амортизацию, высокий уровень безопасности, комфорта и качества игры. Кроме того, в спортклубе "Союз-спорт" есть две универсальные площадки с профессиональным универсальным покрытием и разными разметками под разные виды спорта. Вариант игры на такой площадке будет более бюджетным. Такая площадка подойдёт для новичков и игроков среднего уровня и может заменить корт крытый теннисный. Обучение, индивидуальные занятия теннисом, крытый теннисный корт, опытные тренеры – это то, на что вы можете рассчитывать, приходя в "Союз-спорт" в любое время года. Наши площадки и условия тренировок подойдут игрокам с разным уровнем игры, как профессионалам, так любителям и новичкам игры в большой теннис, как взрослым, так и детям. На базе спортклуба "Союз-спорт" работает детская школа большого тенниса. Здесь занимаются дети от 5 до 15 лет. Тренировки проходят как в групповой, так и индивидуальной форме. Стоимость обучения - 6000 руб./месяц.', 0, 49);
INSERT INTO `points_halls` VALUES(105, '', '1418311937_2b187237eed4836869058b4e638e0f35.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(106, '', '1418311937_78fcc3e0c2cb9aad44ea3e0d83f8f956.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(107, '', '1418311937_ca50fe3979ec407edc5852b9373ebca4.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(108, '', '1418311937_10f65921dd0303af3ee1467bc2975bf3.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(109, '', '1418311937_94ed602a64b31b9522af0756940673a8.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(110, '', '1418311937_dea768e90089199dc4415e3972917ad2.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(111, '', '1418311937_b4010882f060ebdc5ae1c25f33c00138.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(112, '', '1418311937_c1d4b9b122d14c93a0b2c573348144f8.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(113, '', '1418311937_1a02bddd4ed96b63440e493f868fdcfb.jpg', '', 0, 50);
INSERT INTO `points_halls` VALUES(114, 'Фитнес - "Миллениум" ', '1418313031_fa894c101cdf7cf35148ea408495dbf2.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51);
INSERT INTO `points_halls` VALUES(115, 'Аквааэробика - "Миллениум" ', '1418313031_e341b608a9637d18602078e398006fdc.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51);
INSERT INTO `points_halls` VALUES(116, 'Различные виды единоборств - "Миллениум" ', '1418313031_da38e590462745e0ac259a4c195786ca.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51);
INSERT INTO `points_halls` VALUES(117, 'Студия Пилатес - "Миллениум" ', '1418313031_209dab8308d2755d4d4ba82e44493e10.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51);
INSERT INTO `points_halls` VALUES(118, 'Бальные, хип-хоп, восточные и т.п - "Миллениум" ', '1418313031_e4aabba4057e557a2393019163c0d60e.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51);
INSERT INTO `points_halls` VALUES(119, 'Айкидо для всех желающих - "Синяя Птица" ', '1418313452_d4af989460ad48c2cbdacd52580e96b4.jpg', 'Подробности уточняйте по телефону: +7 (495) 714-98-18, +7 (495) 714-98-27', 0, 52);
INSERT INTO `points_halls` VALUES(121, 'Джиу-джитсу для всех желающих - "Синяя Птица" ', '1418313452_1d96ce5f7d0baf0dbc1c3aefd9e56231.jpg', 'Уточняйте подробности по телефонам: +7 (495) 714-98-18, +7 (495) 714-98-27.', 0, 52);
INSERT INTO `points_halls` VALUES(122, 'Бокс для детей до 12 лет и взрослых с 12 лет - "Синяя Птица" ', '1418313452_75b9bbf02da670ec9dc9014b8212f091.jpg', 'Основной акцент в обучении боксом в центре делается на овладение навыков самозащиты, а не на соревновательную деятельность. Поэтому здесь не делят воспитанников на одаренных и не очень, на слишком юных и взрослых. Центр работает со всеми желающими получить полезные навыки. Группа под руководством Бобоева Икрома Аминовича занимается по пн, ср и пт. Группа под руководством Шишлова Родиона Витальевича занимается по вт, чт и сб. Цены: 3000-3500 руб./месяц', 0, 52);
INSERT INTO `points_halls` VALUES(123, 'Самбо для детей 6-16 лет и взрослых от 16 лет - "Синяя Птица"', '1418313452_a2a7c9ef212ea2f8d72af3853e2b48fd.jpg', ' Расписание занятий для детей: по понедельникам и пятницам с 18:00 до 19:30, по средам с 17:00 до 18:00. Расписание занятий для взрослых: по понедельникам и средам с 20:00 до 21:00. Рекомендуем уточнить график занятий по телефонам: +7 (495) 714-98-18, +7 (495) 714-98-27', 0, 52);
INSERT INTO `points_halls` VALUES(124, 'Футбол для детей 4-6, 6-8, 8-10 и 12-15 лет - "Синяя Птица"', '1418313452_df0875c61da617c7c5dffbfa6049372a.jpg', 'Футбольный клуб "Синяя птица" проводит дополнительный набор в группы 4-6, 6-8, 8-10 и 12-15 лет. Тренировки проходят на откром поле в летнее время и на закрытом поле - в зимнее время. В летний период организуются выездные сборы а рубеж. Каргинов Юрий Витальевич +7 (495) 714-98-18, +7 (926) 149-57-42', 0, 52);
INSERT INTO `points_halls` VALUES(125, 'Теннис для взрослых и детей с 3 лет - "Синяя Птица"', '1418313452_2f1a889381bc80e2fe61d5dea4c0df29.jpg', ' Спортивный центр «Синяя Птица» предоставляет для занятия теннисом и детским теннисом семь крытых теннисных кортов, один с покрытием тарафлекс, шесть с покрытием «искусственная трава». В летний период с мая по сентябрь в нашем cпортивном центре функционируют пять открытых кортов c покрытием «искусственная трава». Так же проходят занятия мини-теннисом - это методика введения в полноформатный теннис, называемая в США "Быстрый старт".', 0, 52);
INSERT INTO `points_halls` VALUES(128, 'Баскетбол для мальчиков 7-14 лет - "Синяя Птица" ', '1418313453_ed7387bb4fabbd2a7846b3f09fe6b9e6.jpg', 'Спортивная секция по баскетболу для мальчиков с 1 по 7 классы. Занятия проходят в спортивном зале на базе СК "Синяя птица" (Северное Бутово). Тренировки: вторник, среда, пятница, суббота. Шипорин Михаил Николаевич +7 (916) 131-79-60 Цены: 1900 руб./2 дня в неделю, 2500 руб./3 дня в неделю', 0, 52);
INSERT INTO `points_halls` VALUES(129, 'Клуб бокса "Московский бокс" - "Синяя Птица" ', '1418313688_4a3bba808bbc3b70a826f20445d2a9fe.jpg', 'Клуб бокса в Москве, открытый в марте 2009 года. Сейчас имеет две секции, команду разрядников-спортсменов, начинающую группу и старшую. Болуков А.В., Шишлов Р.В. +7 (915) 128-08-24', 0, 52);
INSERT INTO `points_halls` VALUES(130, 'Айкидо для детей - "Чудо-школа умница" ', '1418314593_0bdaf32290ee027e398958c171832ae5.jpg', 'Направления: современные; хореография; Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53);
INSERT INTO `points_halls` VALUES(131, 'Хореография и современные танцы для детей - "Чудо-школа умница" ', '1418314594_aa128478d7d191a3d3be17ee14f24f26.jpg', 'Направления: современные; хореография; Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53);
INSERT INTO `points_halls` VALUES(132, 'Шахматы для детей - "Чудо-школа умница" ', '1418314594_b64666929c1304c331e0bd0770e525b2.jpg', 'Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53);
INSERT INTO `points_halls` VALUES(133, 'Йога для детей - "Чудо-школа умница" ', '1418314594_7de26f4dc14a54346a0136733fcf79cc.jpg', 'Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53);
INSERT INTO `points_halls` VALUES(134, 'Айкидо для взрослых и детей - "Аметсучи" ', '1418315072_8cff4b70924169a8ac1328d1d47d9ce8.jpg', 'Добро пожаловать! Телефон: +7 (495) 716-40-27 Адрес: Москва, ул. Поляны, д. 35 Сайт: www.ametsuchi.ru', 0, 54);
INSERT INTO `points_halls` VALUES(138, 'Айкидо для взрослых и детей с 4 лет в Сокольниках ', '1418315346_484581ac40b7f1b1ad940a8548d32b1c.jpg', 'Расписание занятий с сентября. Взрослые (с 18 лет) и подростки (с 14 лет): - вт 19.00-20.00 или 21.00-22.00; - пт 19.00-20.00 или 21.00-22.00; - вс 14.00-15.30. Кобудо (традиционное японское фехтование) для ВЗРОСЛЫХ (с 18 лет) и ПОДРОСТКОВ (с 14 лет): - вт 20.00-21.00; - пт 20.00-21.00; - вс 15.30-16.30. Старшая детская группа (11-13 лет): - вт 18.00-19.00; - пт 18.00-19.00; - вс 16.30-18.00. Средняя детская группа (8-10 лет): - вт 17.00-18.00; - пт 17.00-18.00; - вс 16.30-18.00. Младшая детская группа (6-8 лет): - вт 16.00-17.00; - чт 16.00-17.00; - сб 12.00-13.30. Старшая дошкольная группа: - пн 17.00-18.00; - чт 17.00-18.00; - сб 11.00-12.00. Младшая дошкольная группа (4-5 лет): - вт 15.00-16.00; - чт 15.00-16.00; - сб 11.00-12.00. Утренняя группа для ВЗРОСЛЫХ: - вт 7.30-8.30; - чт 7.30-8.30; - сб 14.00-15.00. Телефон: +7(917)556-23-26, +7(903)227-01-13', 0, 55);
INSERT INTO `points_halls` VALUES(139, 'Айкидо - Айкидо клуб ', '1418315502_f9065c05ae3c7eca47a0431905674310.jpg', 'Приглашаем на занятия детей от 6-16 лет Телефон: +7 (968) 076-51-00 Адрес: Москва, Ул. 7-я Текстильщиков, дом 5 Сайт: Aikido1.ru', 0, 56);
INSERT INTO `points_halls` VALUES(140, '', '1418315801_e0dadab8af0a48c8e650809f7a925e6d.jpg', '', 0, 57);
INSERT INTO `points_halls` VALUES(141, ' Айкидо для детей - "Берендей" ', '1418315984_305ff8b67cde45bd563cb52dd4f52488.jpg', 'График занятий: - вторник - с 17:00 до 18:00; - суббота - с 12:00 до 13:00. Инструктор: Щеглова (Коваленко) Наталья, 2 дан айкидо айкикай Телефон: +7 (905) 524-94-36', 0, 58);
INSERT INTO `points_halls` VALUES(142, '', '1423691596_da2fefe1e47d6b02f36b1ec68cae12a1.jpg', '', 0, 40);

-- --------------------------------------------------------

--
-- Структура таблицы `points_images`
--

DROP TABLE IF EXISTS `points_images`;
CREATE TABLE IF NOT EXISTS `points_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Дамп данных таблицы `points_images`
--

INSERT INTO `points_images` VALUES(14, '1418225869_999a9ebabfa60808ed9bf1a0e8c89a4e.jpg', 0, 39);
INSERT INTO `points_images` VALUES(15, '1418225895_281016bd2f4ca673495f0b5b7c99c28b.jpg', 0, 39);
INSERT INTO `points_images` VALUES(16, '1418225906_d5310f8d3fba9a877a0c4579025ed681.jpg', 0, 39);
INSERT INTO `points_images` VALUES(17, '1418225909_24e47414a7d48fa696f01eae595ee4b9.jpg', 0, 39);
INSERT INTO `points_images` VALUES(18, '1418227284_8815a089de85c940e19fab99219b2c58.jpg', 0, 40);
INSERT INTO `points_images` VALUES(19, '1418227284_7b7fcfdfdab110400e66d709626bdaff.jpg', 0, 40);
INSERT INTO `points_images` VALUES(20, '1418227284_b64c242df2ff7677093cdf58cf8eb93a.jpg', 0, 40);
INSERT INTO `points_images` VALUES(21, '1418227616_c1317867316d246918e08d09e6ffdeba.jpg', 0, 41);
INSERT INTO `points_images` VALUES(22, '1418227616_72806667b9fad0b4f5546fbe12a5bf2c.jpg', 0, 41);
INSERT INTO `points_images` VALUES(23, '1418227616_07fc790f6c8c089fc6728771fdd9607d.jpg', 0, 41);
INSERT INTO `points_images` VALUES(24, '1418300103_d354ac8a35de57bdd9c69552735f6704.jpg', 0, 42);
INSERT INTO `points_images` VALUES(25, '1418300103_9808775d149a2f78616cb567e554de48.jpg', 0, 42);
INSERT INTO `points_images` VALUES(26, '1418300103_c5d86eab2e3c2bcb23e25a715e17fa38.jpg', 0, 42);
INSERT INTO `points_images` VALUES(27, '1418300686_76df91ab42b5115a903e83210d8d7a33.jpg', 0, 43);
INSERT INTO `points_images` VALUES(28, '1418300686_ece6d6c071733df71ac0f5672c769129.jpg', 0, 43);
INSERT INTO `points_images` VALUES(29, '1418300686_34e2055076b11d4dc1b9c1f723b69c20.jpg', 0, 43);
INSERT INTO `points_images` VALUES(30, '1418301162_397d9f3148a98b156debc2b12e0ef5f5.jpg', 0, 44);
INSERT INTO `points_images` VALUES(31, '1418301162_c8bb307f744f5d5780b50e79eb59d829.jpg', 0, 44);
INSERT INTO `points_images` VALUES(32, '1418301162_827eeff0661dc2cd1c064a71b2492b80.jpg', 0, 44);
INSERT INTO `points_images` VALUES(33, '1418301162_9953504c93808e81375f828d9b4c3c77.jpg', 0, 44);
INSERT INTO `points_images` VALUES(34, '1418301162_639e0ad110c3b6dc5ee398ffd7ff835e.jpg', 0, 44);
INSERT INTO `points_images` VALUES(35, '1418301162_1f3ba9027dd9986f1960c42453d93e9f.jpg', 0, 44);
INSERT INTO `points_images` VALUES(36, '1418301162_e575284d9181b2e15d26fa23944032a1.jpg', 0, 44);
INSERT INTO `points_images` VALUES(37, '1418301162_a31874a5776bb27fa8dfe7ca8727b77b.jpg', 0, 44);
INSERT INTO `points_images` VALUES(38, '1418304447_55c03912803795385c39059e421c4fbc.jpg', 0, 45);
INSERT INTO `points_images` VALUES(39, '1418304447_fbcc55d8792b4fd658593ab7b79c53ba.jpg', 0, 45);
INSERT INTO `points_images` VALUES(40, '1418304447_64d827f519911cb0d7927a12a4874e63.jpg', 0, 45);
INSERT INTO `points_images` VALUES(41, '1418305058_010c3f6c16169965f5d42b05eadfb6fa.jpg', 0, 46);
INSERT INTO `points_images` VALUES(42, '1418305058_2f0d4c5edaf1629e0e7301750d0f800e.jpg', 0, 46);
INSERT INTO `points_images` VALUES(43, '1418305058_62017132e55f0f81f636afc92db3a9a7.jpg', 0, 46);
INSERT INTO `points_images` VALUES(44, '1418305058_bd30e706777b982e565353be2b126ae5.jpg', 0, 46);
INSERT INTO `points_images` VALUES(45, '1418305058_a8a49af2042a2f61dfbef063013fac70.jpg', 0, 46);
INSERT INTO `points_images` VALUES(46, '1418305058_63b26af0e4f47762eb2bf8938dc15b3d.jpg', 0, 46);
INSERT INTO `points_images` VALUES(47, '1418305058_0046404cc559602c1ccc50738491049d.jpg', 0, 46);
INSERT INTO `points_images` VALUES(48, '1418305059_d5cfcefd8cbddba18d306f97b7cea405.jpg', 0, 46);
INSERT INTO `points_images` VALUES(49, '1418305059_599a859a165ec431bce1777308b1603c.jpg', 0, 46);
INSERT INTO `points_images` VALUES(50, '1418305059_4b03176540db51891b065e5ed64e2c75.jpg', 0, 46);
INSERT INTO `points_images` VALUES(51, '1418306703_54105e3ed5f54e343db61f949ee7a405.jpg', 0, 47);
INSERT INTO `points_images` VALUES(52, '1418306704_a88557fbe0d331eec4a5c86abee1cf64.jpg', 0, 47);
INSERT INTO `points_images` VALUES(53, '1418306704_fa9872dea921c91b73123b88e5aecbf9.png', 0, 47);
INSERT INTO `points_images` VALUES(54, '1418306704_78423f4412e0ee73cfefd4e4341d7c61.jpg', 0, 47);
INSERT INTO `points_images` VALUES(55, '1418306704_eea11c7937867b7f7dc34f0013deff48.jpg', 0, 47);
INSERT INTO `points_images` VALUES(56, '1418306704_84e318944bda1143483ed9db29a7e3d8.jpg', 0, 47);
INSERT INTO `points_images` VALUES(57, '1418307477_0c444a9ac9af4f03c9328c1080a6c88b.jpg', 0, 48);
INSERT INTO `points_images` VALUES(58, '1418307477_adb095f74b588b648c1eed8ae5fd32e3.jpg', 0, 48);
INSERT INTO `points_images` VALUES(59, '1418307477_a53e7c37ca9a4e1998d503ff69d1feaa.jpg', 0, 48);
INSERT INTO `points_images` VALUES(60, '1418307477_b64f7b03e7532ba3b0288c266624bc09.jpg', 0, 48);
INSERT INTO `points_images` VALUES(61, '1418307477_02497a8a4648f501c2d134e94ed920e9.jpg', 0, 48);
INSERT INTO `points_images` VALUES(62, '1418307832_0c5e4d307e9138ee7ba86ff95d8949dc.jpg', 0, 49);
INSERT INTO `points_images` VALUES(63, '1418307832_260b1c049f9384e9bc087ef5382c9818.jpg', 0, 49);
INSERT INTO `points_images` VALUES(64, '1418307832_1bd0c862bf0649f37b841abfa5f13560.jpg', 0, 49);
INSERT INTO `points_images` VALUES(65, '1418307832_a7b25fb43fbc2146938d60221867840f.jpg', 0, 49);
INSERT INTO `points_images` VALUES(66, '1418307832_4915c15d15cbd6b0c8c409aa8e41ea4c.jpg', 0, 49);
INSERT INTO `points_images` VALUES(67, '1418307832_8b1d5b5fdc9684f736f61fd3e2c4c705.jpg', 0, 49);
INSERT INTO `points_images` VALUES(68, '1418307832_be42c2b9db9e05e6002ff79eb6c831c3.jpg', 0, 49);
INSERT INTO `points_images` VALUES(69, '1418307832_1b1299d46edc84bb3d2c2dd0abde288a.jpg', 0, 49);
INSERT INTO `points_images` VALUES(70, '1418307832_3d6344145f0b37af2d1b21ffa2f6141b.jpg', 0, 49);
INSERT INTO `points_images` VALUES(71, '1418307832_0948d617653120f48ef7dcf1904d0f13.jpeg', 0, 49);
INSERT INTO `points_images` VALUES(72, '1418307832_004b62871e22e2f177fea75a1ebb843c.jpg', 0, 49);
INSERT INTO `points_images` VALUES(73, '1418308602_afdc5cc089a1afe4b8dd7fe2c014bfed.jpg', 0, 50);
INSERT INTO `points_images` VALUES(74, '1418308602_615ce4758e260adc5570aff050e75116.jpg', 0, 50);
INSERT INTO `points_images` VALUES(75, '1418308602_a5ca9b3ee68e672e2ed7a00bc0dbf1d7.jpg', 0, 50);
INSERT INTO `points_images` VALUES(76, '1418308602_9054e3d1564a3255b9bb91b7b470535f.jpg', 0, 50);
INSERT INTO `points_images` VALUES(77, '1418308602_84201ae1bf51d287d0144de2c3c8485d.jpg', 0, 50);
INSERT INTO `points_images` VALUES(78, '1418308602_ee2ab0321addffc07210f7c74f2a9038.jpg', 0, 50);
INSERT INTO `points_images` VALUES(79, '1418308602_c46861683efedfd98054f5899947bec2.jpg', 0, 50);
INSERT INTO `points_images` VALUES(80, '1418308602_1ea67b38c777762605cab03133bc9b2f.jpg', 0, 50);
INSERT INTO `points_images` VALUES(81, '1418308602_f3f2aee9449b8a543468f1000453a3e5.jpg', 0, 50);
INSERT INTO `points_images` VALUES(109, '1418312936_3e37cb28ff729c4dff9867cf81c2c3a2.jpg', 0, 51);
INSERT INTO `points_images` VALUES(110, '1418312936_7896e4e9ff6860506a576dbeef3dedab.jpg', 0, 51);
INSERT INTO `points_images` VALUES(111, '1418312936_a3f5942709af90aa89f34475a29cc80f.jpg', 0, 51);
INSERT INTO `points_images` VALUES(112, '1418312936_f9820ad83cd023f4cb8a6288d9f77eb4.jpg', 0, 51);
INSERT INTO `points_images` VALUES(115, '1418313370_e8c5d4fbb963d2e1ea87c0d98f50a32f.jpg', 0, 52);
INSERT INTO `points_images` VALUES(116, '1418313370_8425e0d844089faa406aa982eea22121.jpg', 0, 52);
INSERT INTO `points_images` VALUES(117, '1418313370_9207ef0e8a82c4acc074e72df1103b7d.jpg', 0, 52);
INSERT INTO `points_images` VALUES(118, '1418313370_08a0f61f5bd7cc946c770230d8129817.jpg', 0, 52);
INSERT INTO `points_images` VALUES(119, '1418313370_7393944315bd53484d5abeef4eeed25d.jpg', 0, 52);
INSERT INTO `points_images` VALUES(120, '1418313370_cc38d77b93d90a3a877cc5a8146ca6da.jpg', 0, 52);
INSERT INTO `points_images` VALUES(121, '1418313370_3ec3a9d3542a756eb7dedc83c0108f06.jpg', 0, 52);
INSERT INTO `points_images` VALUES(122, '1418313370_6c7d00807538e48e0373d2af628899b5.jpg', 0, 52);
INSERT INTO `points_images` VALUES(124, '1418313370_4439edf5f8382dc5bf241bfb0d011271.jpg', 0, 52);
INSERT INTO `points_images` VALUES(125, '1418313370_7fbd23d614e11811f1816338a7b908ea.jpg', 0, 52);
INSERT INTO `points_images` VALUES(130, '1418314588_c5f7c8851da893b0674bfc523f07158d.jpg', 0, 53);
INSERT INTO `points_images` VALUES(131, '1418314588_9df9bc6ec59b0653193e6844d002566c.jpg', 0, 53);
INSERT INTO `points_images` VALUES(132, '1418314588_d2fa314b49c2f4c55a3a3ca0b613607b.jpg', 0, 53);
INSERT INTO `points_images` VALUES(133, '1418314588_9c8328bc33c91c69e3bdbb299e6b82d2.jpg', 0, 53);
INSERT INTO `points_images` VALUES(134, '1418315065_0abce55a0f0f99c82b5546e9912712b7.jpg', 0, 54);
INSERT INTO `points_images` VALUES(135, '1418315065_10b5502620efcf6a9d74da7a830a7dfd.jpg', 0, 54);
INSERT INTO `points_images` VALUES(136, '1418315066_5643aead3f0d7aa286710ba1c3f683e4.jpg', 0, 54);
INSERT INTO `points_images` VALUES(137, '1418315066_c00338a7a64c8e237c65ce241c0a3dd5.jpg', 0, 54);
INSERT INTO `points_images` VALUES(138, '1418315323_91f23b0984477307d9423237f3824c19.jpg', 0, 55);
INSERT INTO `points_images` VALUES(139, '1418315323_b655730f1d3efe48237a10e9e1abdc90.jpg', 0, 55);
INSERT INTO `points_images` VALUES(140, '1418315323_7e10432da6d029eeea7ee3eb0a1bb364.jpg', 0, 55);
INSERT INTO `points_images` VALUES(141, '1418315323_53415dd6878f25b328ea5e9e0bd07008.jpg', 0, 55);
INSERT INTO `points_images` VALUES(142, '1418315323_cd5d52602a812ac52b075f2d9d4d96f8.jpg', 0, 55);
INSERT INTO `points_images` VALUES(143, '1418315496_ce9cae0ee164c04cb318e3462691875c.jpg', 0, 56);
INSERT INTO `points_images` VALUES(144, '1418315496_194df4b336eeaefb3f545feab9370a9d.jpg', 0, 56);
INSERT INTO `points_images` VALUES(145, '1418315496_e85520d3af6e7ca95ab98bfac1eb12dd.jpg', 0, 56);
INSERT INTO `points_images` VALUES(146, '1418315496_f8127dbfea62ce7afaad2c0aac1e5ccd.jpg', 0, 56);
INSERT INTO `points_images` VALUES(147, '1418315790_ec12cae91e3fb5032fd6c6a0a3d27bb8.jpg', 0, 57);
INSERT INTO `points_images` VALUES(148, '1418315790_16043ca80e41e7ec62c809c7f01cefc5.jpg', 0, 57);
INSERT INTO `points_images` VALUES(149, '1418315790_0dd0fc4e7235d6721c2d2dcfb940be76.jpg', 0, 57);
INSERT INTO `points_images` VALUES(150, '1418315790_b909c5fdcedb687fa312db14b435d790.jpg', 0, 57);
INSERT INTO `points_images` VALUES(151, '1418315976_b5ced9ac42bd6d9c8f54607c5dfb8786.jpg', 0, 58);
INSERT INTO `points_images` VALUES(152, '1418315976_dec84726568a5fc21dcc7f605ba48676.jpg', 0, 58);
INSERT INTO `points_images` VALUES(153, '1418315976_cae85455cd31db815237f470d34e827e.jpg', 0, 58);
INSERT INTO `points_images` VALUES(154, '1418315976_4edd95f03931ca63cce611904dc9431a.jpg', 0, 58);

-- --------------------------------------------------------

--
-- Структура таблицы `points_treners`
--

DROP TABLE IF EXISTS `points_treners`;
CREATE TABLE IF NOT EXISTS `points_treners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pph` varchar(255) NOT NULL,
  `ppm` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `text` text NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `points_treners`
--

INSERT INTO `points_treners` VALUES(9, 'Климов Валерий Валерьевич', '', '1418304113_ddee861268f872bc9037c16d91483e21.jpg', '', '', 0, '', 44);
INSERT INTO `points_treners` VALUES(10, 'Титов Анатолий Алексеевич', '', '1418304113_60d50830f948249597f5657cb5d19855.jpg', '', '', 0, '', 44);
INSERT INTO `points_treners` VALUES(11, 'Ванчиков Алексей Боросович', '', '1418304114_6f23baacb5034db8ad4400e7566cef0e.jpg', '', '', 0, '', 44);
INSERT INTO `points_treners` VALUES(12, 'Гвоздев Максим', '', '1418304114_34d84045e4fe7d7a11602605fef919f0.jpg', '', '', 0, '', 44);
INSERT INTO `points_treners` VALUES(13, 'Алеся Дмитриева', '', '1418304114_61e6571834e0375cb043e53d7acea71b.jpg', '', '', 0, '', 44);
INSERT INTO `points_treners` VALUES(14, 'Евдокимов Александр', '', '1418307637_e92d0693b3c5638a778ba78d41587cda.jpg', '', '', 0, '', 48);
INSERT INTO `points_treners` VALUES(30, 'Сергей', 'Пупкин', '1423734919_41fdc8c3e0fb4d39e6156a1031eaee80.gif', '200', '700', 0, 'Сервис онлайн проверки текста на уникальность TEXT.RU покажет процент уникальности текста.', 39);
INSERT INTO `points_treners` VALUES(31, '', '', '1423884620_3c92c636bee5e6900f1131b4d5526b84.jpg', '', '', 0, '', 39);
INSERT INTO `points_treners` VALUES(32, '', '', '1423884620_1633a84bfa8eb535028239dfe1941a9b.jpg', '', '', 0, '', 39);
INSERT INTO `points_treners` VALUES(33, '', '', '1423884620_611a2d917bd5fcbbbd171c3221bf1c66.jpg', '', '', 0, '', 39);
INSERT INTO `points_treners` VALUES(34, 'Кролик', 'Иванов', '1423884671_b19bf2ca57dc98572f3890ffc9660e8e.jpg', '800 руб.', '2000 руб.', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 39);
INSERT INTO `points_treners` VALUES(35, '', '', '1423884671_23c7b46346f7caaf463e5a5199af76db.jpg', '', '', 0, '', 39);

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `sports` text NOT NULL,
  `subway` varchar(255) NOT NULL,
  `contrains` text NOT NULL,
  `canpay` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` VALUES(1, 'Андрей', 'DSADAS', 'DASDASD', 'ASDASD', 'ASDAS', 'DASDASD', 'ASDASDA', 'вфывфы', 'protected.for@gmail.com', '+996554709700', '26.11.2014 16:35:17', '127.0.0.1', 'on');
INSERT INTO `requests` VALUES(2, 'dasd', 'dsad', 'dsa', 'sadas', 'das', 'dsa', 'dsa', 'dsa', 'dsada@adsa.ru', 'das', '27.11.2014 14:57:02', '127.0.0.1', 'on');
INSERT INTO `requests` VALUES(3, 'dsa', 'ds', 'sadas', 'dsad', 'sdas', 'dsada', 'das', 'dsadas', 'dfdas@dsa.ru', 'dasd', '06.02.2015 13:21:45', '127.0.0.1', 'on');
INSERT INTO `requests` VALUES(4, 'dasd', 'dsa', 'd', 'dsa', 'dsa', 'd', 'das', 'd', 'asdas@dasdas.ru', 'dasdas', '06.02.2015 13:23:00', '127.0.0.1', 'on');
INSERT INTO `requests` VALUES(5, 'dsad', 'dsa', 'dsa', 'dsa', 'dads', 'das', 'das', 'dsa', 'das@dsa.ru', 'dsad', '06.02.2015 13:26:29', '127.0.0.1', 'on');
INSERT INTO `requests` VALUES(6, 'Андрей', '19', 'Мужской', '55555', 'Лял лвыфл выф', 'Бабушкинское', 'выфрвлфырв', '6000000$', 'protected.for@gmail.com', '+996554709700', '14.02.2015 03:55:37', '127.0.0.1', 'on');
INSERT INTO `requests` VALUES(7, 'Андрей Федотов', '19', 'МУжской', '62', 'футбол, волейбол, баскетбол, хоккей', 'Бабушкинское', 'Нет', '5000000$', 'protected.for@gmail.com', '+996554709700', '14.02.2015 07:58:40', '127.0.0.1', 'on');
INSERT INTO `requests` VALUES(8, 'asd', 'ddsajdk', 'jdl', 'kj', 'k', 'j', 'kl', 'j', 'kl@asd.ru', 'asd', '14.02.2015 23:13:58', '127.0.0.1', 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `sports`
--

DROP TABLE IF EXISTS `sports`;
CREATE TABLE IF NOT EXISTS `sports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` varchar(2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `text` text NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Дамп данных таблицы `sports`
--

INSERT INTO `sports` VALUES(23, 'Айкидо', 'ajkidott', '62079528b8af030e61cc39d25b195801.jpg', 'on', 56, 'Айкидо', 'Айкидо', 'Айкидо', '<p>dfsdsfsdвфы фыв фыв фыв фы</p>\r\n', 0);
INSERT INTO `sports` VALUES(24, 'Бокс', 'boks', '01237d5dc9fa378f1834b3c5cbd134af.jpg', 'on', 56, 'Бокс', 'Бокс', 'Бокс', '', 0);
INSERT INTO `sports` VALUES(25, 'Борьба вольная', 'borba_volnaja', '2dd946469d67d4650b0f44456a469d4a.jpg', 'on', 56, 'Борьба вольная', 'Борьба вольная', 'Борьба вольная', '', 0);
INSERT INTO `sports` VALUES(26, 'Джиу-джитсу', 'dzhiu-dzhitsu', '8efcb1210f346c6d14d5e70ec960c096.jpg', 'on', 56, 'Джиу-джитсу', 'Джиу-джитсу', 'Джиу-джитсу', '', 0);
INSERT INTO `sports` VALUES(27, 'Дзюдо', 'dzjudo', '618ced4b9a8e0e495e670ddbf7280a56.jpg', 'on', 56, 'Дзюдо', 'Дзюдо', 'Дзюдо', '', 0);
INSERT INTO `sports` VALUES(28, 'Каратэ', 'karate', '3005ed2b63ea2b4fd6d868fcba9802fc.jpg', 'on', 56, 'Каратэ', 'Каратэ', 'Каратэ', '', 0);
INSERT INTO `sports` VALUES(29, 'Кикбоксинг', 'kikboksing', 'a4cae2dcc5803561b3bf0a368f03c905.jpg', 'on', 56, 'Кикбоксинг', 'Кикбоксинг', 'Кикбоксинг', '', 0);
INSERT INTO `sports` VALUES(30, 'Микс файт', 'miks_fajt', '944cc99dd1e8d169b35b75dba50262b9.jpg', 'on', 56, 'Микс файт', 'Микс файт', 'Микс файт', '', 0);
INSERT INTO `sports` VALUES(31, 'Рукопашный бой', 'rukopashnyj_boj', 'b48029a3e2bec5a4dd696b73dcb9255e.jpg', 'on', 56, 'Рукопашный бой', 'Рукопашный бой', 'Рукопашный бой', '', 0);
INSERT INTO `sports` VALUES(32, 'Самбо', 'sambo', '9f6be5b11bc741383d8057da92f5e704.png', 'on', 56, 'Самбо', 'Самбо', 'Самбо', '', 0);
INSERT INTO `sports` VALUES(33, 'Самооборона', 'samooborona', '83234cd8c39a459251886e35ad743a36.jpg', 'on', 56, 'Самооборона', 'Самооборона', 'Самооборона', '', 0);
INSERT INTO `sports` VALUES(34, 'Сумо', 'sumo', '14eb27185a6b488f5b5d5f384e963d84.jpg', 'on', 56, 'Сумо', 'Сумо', 'Сумо', '', 0);
INSERT INTO `sports` VALUES(35, 'Ушу', 'ushu', '93c86fe69e6f536a61565fd1441dd314.jpg', 'on', 56, 'Ушу', 'Ушу', 'Ушу', '', 0);
INSERT INTO `sports` VALUES(36, 'Велотрассы', 'velotrassy', '421aa5bd907987f1a021b4095d8f9333.jpg', 'on', 57, 'Велотрассы', 'Велотрассы', 'Велотрассы', '', 0);
INSERT INTO `sports` VALUES(37, 'Парашют', 'parashjut', '36cafde5d74c2755ef01a222cdb8bf87.jpg', 'on', 57, 'Парашют', 'Парашют', 'Парашют', '', 0);
INSERT INTO `sports` VALUES(38, 'Паркур', 'parkur', '12d154aced80d090ebe7e4cf183e54eb.jpg', 'on', 57, 'Паркур', 'Паркур', 'Паркур', '', 0);
INSERT INTO `sports` VALUES(39, 'Полет на шаре', 'polet_na_share', '507e99efd4ac6145266a71db64ac8cc8.jpg', 'on', 57, 'Полет на шаре', 'Полет на шаре', 'Полет на шаре', '', 0);
INSERT INTO `sports` VALUES(40, 'Роллердром', 'rollerdrom', 'fa4cbde33862297b1323f8e21cb17f21.jpg', 'on', 57, 'Роллердром', 'Роллердром', 'Роллердром', '', 0);
INSERT INTO `sports` VALUES(41, 'Скаладром', 'skaladrom', 'fe5e8d0658b67880cbd28a2d5a5f8b54.jpg', 'on', 57, 'Скаладром', 'Скаладром', 'Скаладром', '', 0);
INSERT INTO `sports` VALUES(42, 'Скейтпарк', 'skejtpark', '1adc67afc777246b77317e4c91eb7ee6.jpg', 'on', 57, 'Скейтпарк', 'Скейтпарк', 'Скейтпарк', '', 0);
INSERT INTO `sports` VALUES(43, 'Аквааэробика', 'akvaaerobika', '4acfa219f87d9fd7a8954a4c01249adb.jpg', 'on', 55, 'Аквааэробика', 'Аквааэробика', 'Аквааэробика', '', 0);
INSERT INTO `sports` VALUES(44, 'Аэробика', 'aerobika', 'fb881a13346656639f21b72af9f32f34.jpg', 'on', 55, 'Аэробика', 'Аэробика', 'Аэробика', '', 0);
INSERT INTO `sports` VALUES(45, 'Пилатес', 'pilates', '6c466a9aa2958da41c8844f998977a3a.jpeg', 'on', 55, 'Пилатес', 'Пилатес', 'Пилатес', '', 0);
INSERT INTO `sports` VALUES(46, 'Тренажерные залы', 'trenazhernye_zaly', '88c8fd30a680489315b0556b1908ded9.jpg', 'on', 55, 'Тренажерные залы', 'Тренажерные залы', 'Тренажерные залы', '', 0);
INSERT INTO `sports` VALUES(47, 'Фитнес', 'fitnes', 'ffe292068453de7ba2f973bcd8f7e354.jpg', 'on', 55, 'Фитнес', 'Фитнес', 'Фитнес', '', 0);
INSERT INTO `sports` VALUES(48, 'Фитнес для беременных и молодых мам', 'fitnes_dlja_beremennyh_i_molodyh_mam', '3e283063588ac2bf70fb19baddfc6430.jpg', '0', 55, 'Фитнес для беременных и молодых мам', 'Фитнес для беременных и молодых мам', 'Фитнес для беременных и молодых мам', '', 0);
INSERT INTO `sports` VALUES(49, 'Крытые', 'krytye', '0aaa07782a369a7610015bad51a6b019.jpg', 'on', 58, 'Крытые', 'Крытые', 'Крытые', '', 0);
INSERT INTO `sports` VALUES(50, 'Открытые', 'otkrytye', '5a5ea521f63725f6018d2188ae96329d.jpeg', 'on', 58, 'Открытые', 'Открытые', 'Открытые', '', 0);
INSERT INTO `sports` VALUES(51, 'Армрестлинг', 'armrestling_', '872550f8c1f6ee74a6624450ca9cd981.jpg', 'on', 59, 'Армрестлинг', 'Армрестлинг', 'Армрестлинг', '', 0);
INSERT INTO `sports` VALUES(52, 'Бадминтон', 'badminton', '0a2eab4712ebf57803f6c6cf00c905cd.jpg', 'on', 59, 'Бадминтон', 'Бадминтон', 'Бадминтон', '', 0);
INSERT INTO `sports` VALUES(53, 'Баскетбол', 'basketbol', 'fedc8be92b82bd6bd544b60359c4a156.jpg', '0', 59, 'Баскетбол', 'Баскетбол', 'Баскетбол', '', 0);
INSERT INTO `sports` VALUES(54, 'Бейсбол', 'bejsbol', 'be97d5553eae3c19074a7f8f6a162367.jpg', 'on', 59, 'Бейсбол', 'Бейсбол', 'Бейсбол', '', 0);
INSERT INTO `sports` VALUES(55, 'Волейбол', 'volejbol', '70d5c4d0489c93bf208fb2fc0aeedbc9.jpg', 'on', 59, 'Волейбол', 'Волейбол', 'Волейбол', '', 0);
INSERT INTO `sports` VALUES(56, 'Волейбол пляжный', 'volejbol_pljazhnyj', '65713d1bd79db7c9f73c9275de532df5.jpg', 'on', 59, 'Волейбол пляжный', 'Волейбол пляжный', 'Волейбол пляжный', '', 0);
INSERT INTO `sports` VALUES(57, 'Гандбол', 'gandbol', 'f63ef423e86e16f5144d75252f0c28ad.jpg', 'on', 59, 'Гандбол', 'Гандбол', 'Гандбол', '', 0);
INSERT INTO `sports` VALUES(58, 'Гольф', 'golf', '5ebae021d70144ffa9c2e2627f0a7674.jpg', 'on', 59, 'Гольф', 'Гольф', 'Гольф', '', 0);
INSERT INTO `sports` VALUES(59, 'Керлинг', 'kerling', 'c28e26ab4ac2c635a037977758a50469.jpg', 'on', 59, 'Керлинг', 'Керлинг', 'Керлинг', '', 0);
INSERT INTO `sports` VALUES(60, 'Мини-футбол', 'mini-futbol', '28d97de6208917b528e7b5879f6b1529.jpg', 'on', 59, 'Мини-футбол', 'Мини-футбол', 'Мини-футбол', '', 0);
INSERT INTO `sports` VALUES(61, 'Настольный теннис', 'nastolnyj_tennis', '11f0a4cddc82347c92422b3ea5af76e2.jpg', 'on', 59, 'Настольный теннис', 'Настольный теннис', 'Настольный теннис', '', 0);
INSERT INTO `sports` VALUES(62, 'Теннис', 'tennis', 'bf3caeadf11b0d4e55bd057a72f3f3d0.jpg', 'on', 59, 'Теннис', 'Теннис', 'Теннис', '', 0);
INSERT INTO `sports` VALUES(63, 'Футбол', 'futbol', '066eaa6ec9953e1f503cf5eeaf4d1a9f.jpg', 'on', 59, 'Футбол', 'Футбол', 'Футбол', '', 0);
INSERT INTO `sports` VALUES(64, 'Хоккей', 'hokkej', 'e20869c789a9135bd5aae12f16c142bf.jpg', 'on', 59, 'Хоккей', 'Хоккей', 'Хоккей', '', 0);
INSERT INTO `sports` VALUES(65, 'Go-go', 'go-go', '63ecfc5b4c54d9c3a348f4f05a648fa6.jpg', 'on', 60, 'Go-go', 'Go-go', 'Go-go', '', 0);
INSERT INTO `sports` VALUES(66, 'Hip Hop', 'hip_hop', 'b8fa506ff2cff5bfb0bb79ce5f0a9d56.jpg', 'on', 60, 'Hip Hop', 'Hip Hop', 'Hip Hop', '', 0);
INSERT INTO `sports` VALUES(67, 'R&B', 'rb', '30a6529d2a723c05d8bd2a017196eda0.jpg', 'on', 60, 'R&B', 'R&B', 'R&B', '', 0);
INSERT INTO `sports` VALUES(68, 'Акробатический рок-н-рол', 'akrobaticheskij_rok-n-rol', '9aee44b77d4df8680f61880a1ea38e62.jpg', 'on', 60, 'Акробатический рок-н-рол', 'Акробатический рок-н-рол', 'Акробатический рок-н-рол', '', 0);
INSERT INTO `sports` VALUES(69, 'Балет', 'balte', 'a10703a7048dfc63bc891cafdf46e98c.jpg', 'on', 60, 'Балет', 'Балет', 'Балет', '', 0);
INSERT INTO `sports` VALUES(70, 'Бальные', 'balnye', '594c4f9baaa1d86e9ac6aecde7d2bece.jpg', 'on', 60, 'Бальные', 'Бальные', 'Бальные', '', 0);
INSERT INTO `sports` VALUES(71, 'Брэйк-дэнс', 'brejk-dens', '330e6fa3cda007e1174ad4183da531f5.jpg', 'on', 60, 'Брэйк-дэнс', 'Брэйк-дэнс', 'Брэйк-дэнс', '', 0);
INSERT INTO `sports` VALUES(72, 'Восточные', 'vostochnye', 'd647c49651be22402161f6b5492e842d.jpg', 'on', 60, 'Восточные', 'Восточные', 'Восточные', '', 0);
INSERT INTO `sports` VALUES(73, 'Капоэйра', 'kapoejra', 'cccec6367348d296fedbd812cc850338.jpg', 'on', 60, 'Капоэйра', 'Капоэйра', 'Капоэйра', '', 0);
INSERT INTO `sports` VALUES(74, 'Клубные', 'klubnye', '52d2f6ca2f5732d90a999f207e57bcd0.jpg', 'on', 60, 'Клубные', 'Клубные', 'Клубные', '', 0);
INSERT INTO `sports` VALUES(75, 'Латина', 'latina', 'f379b3054e12a19466df8f1746a11a32.jpg', 'on', 60, 'Латина', 'Латина', 'Латина', '', 0);
INSERT INTO `sports` VALUES(76, 'Модерн', 'modern', '8034636cdf515ca5695a95bca97fca09.jpg', 'on', 60, 'Модерн', 'Модерн', 'Модерн', '', 0);
INSERT INTO `sports` VALUES(77, 'Народные', 'narodnye', '99a9a233ff7270bd6a7a96d023696647.jpg', 'on', 60, 'Народные', 'Народные', 'Народные', '', 0);
INSERT INTO `sports` VALUES(78, 'Сальса', 'salsa', '8b77d232c109f8edfd3b56c780caf148.png', 'on', 60, 'Сальса', 'Сальса', 'Сальса', '', 0);
INSERT INTO `sports` VALUES(79, 'Современные', 'sovremennye', '95eb617ab5e54cf5789eaab397898975.jpg', 'on', 60, 'Современные', 'Современные', 'Современные', '', 0);
INSERT INTO `sports` VALUES(80, 'Стрип-дэнс', 'strip-dens', '705715494153599dcaf794e5bc3d6471.jpg', 'on', 60, 'Стрип-дэнс', 'Стрип-дэнс', 'Стрип-дэнс', '', 0);
INSERT INTO `sports` VALUES(81, 'Танго', 'tango', '780c7a25e2bf5c9450137d514643c338.jpg', 'on', 60, 'Танго', 'Танго', 'Танго', '', 0);
INSERT INTO `sports` VALUES(82, 'Фламенко', 'flamenko', '11b3c86d5db7d2387c869f764980af8a.jpg', 'on', 60, 'Фламенко', 'Фламенко', 'Фламенко', '', 0);
INSERT INTO `sports` VALUES(83, 'Хореография', 'horeografija', '8b200af82c944fb602e38e222bfc08ec.jpg', 'on', 60, 'Хореография', 'Хореография', 'Хореография', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `studentcards`
--

DROP TABLE IF EXISTS `studentcards`;
CREATE TABLE IF NOT EXISTS `studentcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `univer` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `delivery` enum('self','courier','','') NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` enum('on','0','','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `studentcards`
--

INSERT INTO `studentcards` VALUES(3, 'вфывфв', 'выфв', 'выфв', 'фы', 'вфыв', 'courier', '10.02.2015 16:20:33', '127.0.0.1', 'on');
INSERT INTO `studentcards` VALUES(4, 'das', 'dsad', 'dsad', 'dsad', 'asdas', 'courier', '10.02.2015 16:25:08', '127.0.0.1', 'on');
INSERT INTO `studentcards` VALUES(5, 'Андрей', 'Федотов', 'Игоревич', 'Политех', '0554709700', 'self', '10.02.2015 22:15:43', '127.0.0.1', 'on');
INSERT INTO `studentcards` VALUES(6, 'dasda', 'das', 'ds', 'dasd', 'asdsa', 'courier', '10.02.2015 22:18:37', '127.0.0.1', 'on');
INSERT INTO `studentcards` VALUES(7, 'asd', 'dasdsadas', 'asdas', 'das', 'dasdasd', 'courier', '14.02.2015 03:33:53', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(8, 'asd', 'das', 'das', 'das', 'das', 'courier', '14.02.2015 07:32:14', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(9, 'asd', 'asd', 'asd', 'asd', 'asd', 'self', '14.02.2015 07:56:05', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(10, 'фвы', 'вфы', 'вфы', 'вфы', 'вфы', 'self', '14.02.2015 10:07:39', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(11, 'Андрей', 'вфывфы', 'фыв', 'фыв', 'фыв', 'courier', '16.02.2015 12:19:44', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(12, 'dasd', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 12:26:23', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(13, 'asd', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 12:28:35', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(14, 'Андрей', 'Федотов', 'Игоревич', 'ПОЛИТЕХ', '554709700', 'courier', '16.02.2015 13:26:04', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(15, 'фыв', '123', 'ячс', 'апр', 'ннг', 'courier', '16.02.2015 13:28:54', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(16, 'фыв', 'фыв', 'фыв', 'фыв', 'фыв', 'courier', '16.02.2015 13:34:34', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(17, 'sad', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 13:35:53', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(18, 'das', 'das', 'dsa', 'das', 'dsa', 'courier', '16.02.2015 13:36:19', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(19, 'dasdas', 'dasdas', 'dasda', '123', '512', 'courier', '16.02.2015 13:39:56', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(20, '123', '321', 'das', 'das', 'das', 'courier', '16.02.2015 13:41:06', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(21, 'dsad', 'dsa', 'dsa', 'dsa', 'das', 'courier', '16.02.2015 13:47:21', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(22, 'asd', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 23:39:56', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(23, '123', '123', '123', '123', '123', 'courier', '16.02.2015 23:40:17', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(24, '123', '123', '123', '123', '123', 'courier', '16.02.2015 23:43:18', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(25, 'dasd', 'das', 'das', 'das', 'asd', 'courier', '16.02.2015 23:43:27', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(26, 'Андрей', 'Федотов', 'вфы', 'вфы', 'выф', 'courier', '18.02.2015 15:30:04', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(27, 'вфыв', 'вфы', 'вфы', 'вфы', 'вфы', 'courier', '18.02.2015 15:30:43', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(28, 'выф', 'выф', 'выф', 'вфы', 'вфы', 'courier', '18.02.2015 15:31:15', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(29, 'вфывф', 'выф', 'вфы', 'фыв', 'фыв', 'courier', '19.02.2015 00:10:59', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(30, 'фыв', 'фыв', 'фыв', 'фыв', 'фыв', 'courier', '19.02.2015 00:11:14', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(31, 'фыв', 'вфы', 'фыв', 'фыв', 'фыв', 'courier', '19.02.2015 00:11:37', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(32, 'фыв', 'фыв', 'фыв', 'фыв', 'фыв', 'courier', '19.02.2015 00:12:20', '127.0.0.1', '');
INSERT INTO `studentcards` VALUES(33, 'dasd', 'das', 'das', 'das', 'das', 'courier', '03.03.2015 02:44:25', '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `subways`
--

DROP TABLE IF EXISTS `subways`;
CREATE TABLE IF NOT EXISTS `subways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `subways`
--

INSERT INTO `subways` VALUES(1, 'Дубровка', '26a520b7130c777eeb9747083ec6ce84.png', 0, 'on');
INSERT INTO `subways` VALUES(2, 'Сокольники', '49d7b76dd28c58596e53c5ed3c3d3dc9.png', 0, 'on');
INSERT INTO `subways` VALUES(3, 'Варшавская', '41132f89e29001f07a4bb444e70ca559.png', 0, 'on');
INSERT INTO `subways` VALUES(4, 'Бибирево', '657bf10eef5ab28d83ffc05189b66022.png', 0, 'on');
INSERT INTO `subways` VALUES(5, 'Станция "Новослободская"', 'ed470d7cd8cfd056a055adfdcf61ba5e.png', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `object` enum('blog','news') NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

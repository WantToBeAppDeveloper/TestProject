
# ТestProject.

## Разработанный проект - это web-приложение, показывающее страницу приветствия только авторизированным пользователям. 

### Пользователям доступны следующие страницы:
* Форма входа.
* Форма регистрации.
* Приветствие пользователя.

# Страницы:

### Форма входа:
Адрес: /index.jsp

На странице доступны следующие элементы:
* Поле ввода имени пользователя
* Поле ввода пароля 
* Кнопка "Войти"(перенаправляет на Приветствие пользователя)
* Сслыка "Регистрация"

### Форма регистрации:
Адрес: /sign-up.jsp

На странице доступны следующие элементы:
* Сообщение о действиях пользователя, выводятся по мере необходимости
* Форма ввода учетных данных
  * Поле ввода имени пользователя
  * Поле ввода пароля
  * Поле повторного ввода пароля
* Кнопка "Зарегистрироваться", выполняющая следующие проверки:
  * Длина имени пользователя длинее 4 символов и оно состоит из цифр и букв английского алфавита. 
  * Пароль и повтор пароля совпадают. 
  * Пароль имеет достаточную сложность:
    * Длина минимум 8 символов
    * Минимум одна цифра
    * Минимум одна заглавная буква
    * Минимум одна строчная буква
  * Проверка от создания пользователей с одинаковыми именами 
  * Иначе во всех случаях появляются соответствующие сообщения об ошибках
  * Если все проверки пройдены, то приложение сохраняет учетную запись в базе данных, авторизует пользователя введенными данными и перенаправляет его на страницу входа. 
    
### Приветствие пользователя:
Адрес: /welcome.jsp

На странице доступны следующие элементы:
* Сообщение:"Доброе(утро|день|вечер|ночи), <Имя пользователя>!"(Время суток указывается в зависимости от времени на компьютере)
* Кнопка "Выйти".

# Инструменты:
- [x] Tomcat v:8.0.46.
- [x] Журнал сервера приложения: Log4j.
- [x] База данных: PostgreSql(pgAdmin III).
- [ ] Хранение данных в сессии.

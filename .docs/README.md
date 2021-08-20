- folder-type : тип папки (root/group/service)
- folder-hash : хэш папки

- service-group : группа сервиса
- service-generator : генератор документации

- page-title : имя страницы
- page-parent : сервис (или группа для редми группы) родитель
- page-depth : глубина вложенности страницы. При генерации добавляется класс, который делает отступ слева.

- sort : сортировка. не зависит от типа сущности.
- collection: имя папки группы или сервиса. для корня нужно указать root

    <link
      rel="stylesheet"
      href="{% if index_page !== true %}../../{% endif %}assets/style__bootstrap.css"
    />
    <link
      rel="stylesheet"
      href="{% if index_page !== true %}../../{% endif %}assets/style__customs.css"
    />

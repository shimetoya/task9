 Выполнить следующие задачи:

    Написать модуль, содержащий 2 метода, которые можно вызывать на урвне класса:
        метод att_accessor_with_history. Динамически создает геттеры и сеттеры для любого кол-ва атрибутов, при этом сеттер сохраняет все значения инстанс-переменной
при изменении этого значения. Также должен быть метод <имя_атрибута>_history, который возвращает массив всех значений данной переменной.

        метод strong_attr_acessor, который принимает имя атрибута и его класс. При этом создается геттер и сеттер для одноименной инстанс-переменной, но сеттер проверяет
тип присваемоего значения. Если тип отличается от того, который указан вторым параметром, то выбрасывается исключение. Если тип совпадает, то значение присваивается.
    Подключить модуль в класс и продемонстрировать применение этих методов.

class Module
  def att_accessor_with_history(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=".to_sym) { |value| instance_variable_set(var_name, value) }
      @array << self
    end
  end
  def name_history
    @array
  end
  def strong_attr_acessor(*names, *names.class)
    names.each do |name|
      var_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}=".to_sym) { |value| if var_name.type = instance_variable_set(var_name, value) }
      @array << self
    end
  end
end
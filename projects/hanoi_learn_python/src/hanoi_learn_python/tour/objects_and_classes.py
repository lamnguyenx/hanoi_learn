#!/usr/bin/env python3



def objects_and_classes():
    class EPower0:

        def __init__(self, U, I):
            self.U = U
            self.I = I

            self.brand = 'GE'
            self.year = 1995



        def get_watt(self):
            return self.U * self.I

    EP0 = EPower0(7, 2)
    EP0.brand = 'NVIDIA'

    print(EP0.brand)
    print(EP0.get_watt())



    class EPower1(EPower0):

        def __init__(self, U, I):
            super().__init__(U, I)
            self.tz = 'GMT+7'



        def get_resistance(self):
            return self.U / self.I

    EP1 = EPower1(7, 2)
    print(EP1.brand)
    print(EP1.get_watt())
    print(EP1.get_resistance())
    # fmt: on



    class HasStaticVar:
        name = '(1)'

    HSV = HasStaticVar()
    # - via instance
    # access via instance
    print(HSV.name)  # (1)

    # modify via instance
    HSV.name += '(2)'
    print(HSV.name)  # (1)(2)

    # - via class
    # access via class
    print(HasStaticVar.name)  # (1)

    # modify via class
    HasStaticVar.name += '(3)'
    print(HasStaticVar.name)  # (1)(3)
    print(HasStaticVar().name)  # (1)(3)

    # Dont use work-around if language doesnt support simple way to modify / access static var from class / instance

    # ---- getter setter
    # fmt: off
    class Person:

        def __init__(self, name):
            self._name = name

        # getter
        @property
        def name(self):
            return self._name

        # setter
        @name.setter
        def name(self, value):
            self._name = value
    # fmt: on

    person = Person("Alice")
    print(person.name)

    person.name = "Bob"
    print(person.name)

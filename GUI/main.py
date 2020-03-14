import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button


class MyGrid(GridLayout):
    def __init__(self, **kwargs):
        super(MyGrid, self).__init__(**kwargs)

        self.cols = 1

        self.inside = GridLayout()
        self.inside.cols = 2

        self.inside.add_widget(Label(text="Tower 1: "))
        self.tower1 = TextInput(multiline=False)
        self.inside.add_widget(self.tower1)

        self.inside.add_widget(Label(text="Tower 2: "))
        self.tower2= TextInput(multiline=False)
        self.inside.add_widget(self.tower2)

        self.inside.add_widget(Label(text="Tower 3: "))
        self.tower3 = TextInput(multiline=False)
        self.inside.add_widget(self.tower3)

        self.inside.add_widget(Label(text="Tower 4: "))
        self.tower4 = TextInput(multiline=False)
        self.inside.add_widget(self.tower4)

        self.inside.add_widget(Label(text="Tower 5: "))
        self.tower5 = TextInput(multiline=False)
        self.inside.add_widget(self.tower5)

        self.add_widget(self.inside)

        self.submit = Button(text="Submit", font_size=40)
        self.submit.bind(on_press=self.pressed)
        self.add_widget(self.submit)

    def pressed(self, instance):
        tower1 = self.tower1.text
        tower2 = self.tower2.text
        tower3 = self.tower3.text
        tower4 = self.tower4.text
        tower5 = self.tower5.text

        print("Tower 1:", tower1, "Tower 2:", tower2, "Tower 3:", tower3, "Tower 3:", tower4, "Tower 3:", tower5)
        self.tower1.text = ""
        self.tower2.text = ""
        self.tower3.text = ""

class MyApp(App):
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()
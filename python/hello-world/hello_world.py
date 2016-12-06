from string import Template

class HelloWorld:
    def hello(name='World'):
        hello = Template("Hello, ${name}!")
        return hello.substitute(name=name)

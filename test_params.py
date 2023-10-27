# Not sure why I'm playing around with this functionality using functions called step() and dsl_func()
# What's the context here? What was I trying to achieve?

def step(param1, param2):
    print('STEP LOCALS:' + str(locals()))
    dsl_func(**locals())


def dsl_func(**kwargs):
    print('DSL_ LOCALS:' + str(locals()))

    print('--> Updating locals with:')

    print('    ' + str(kwargs))
    locals().update(kwargs)

    print('DSL_ LOCALS:' + str(locals()))

    print(kwargs['param1'])
    print(kwargs['param2'])


p1 = 'first param'
p2 = 'second param'

step(p1, p2)

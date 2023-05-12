from antlr4 import *
from exprsLexer import exprsLexer
from exprsParser import exprsParser
from exprsVisitor import exprsVisitor

vars_dict = dict()

class TreeVisitor(exprsVisitor):
    def __init__(self):
        self.nivell = 0

    def visitSuma_resta(self, ctx):
        [expressio1, operador, expressio2] = list(ctx.getChildren())
        print('  ' *  self.nivell + str(operador))
        self.nivell += 1
        self.visit(expressio1)
        self.visit(expressio2)
        self.nivell -= 1

    def visitMult_div(self, ctx):
        [expressio1, operador, expressio2] = list(ctx.getChildren())
        print('  ' *  self.nivell + str(operador))
        self.nivell += 1
        self.visit(expressio1)
        self.visit(expressio2)
        self.nivell -= 1

    def visitPotencia(self, ctx):
        [expressio1, operador, expressio2] = list(ctx.getChildren())
        print('  ' *  self.nivell + str(operador))
        self.nivell += 1
        self.visit(expressio1)
        self.visit(expressio2)
        self.nivell -= 1

    def visitNumero(self, ctx):
        [numero] = list(ctx.getChildren())
        print("  " * self.nivell + numero.getText())

class EvalVisitor(exprsVisitor):

    def visitRoot(self, ctx):
        l = list(ctx.getChildren())
        for f in l:
            self.visit(f)

    def visitSuma_resta(self, ctx):
        [expressio1, operador, expressio2] = list(ctx.getChildren())
        if str(operador) == "+": return self.visit(expressio1) + self.visit(expressio2)
        else: return self.visit(expressio1) - self.visit(expressio2)

    def visitMult_div(self, ctx):
        [expressio1, operador, expressio2] = list(ctx.getChildren())
        if str(operador) == "*": return self.visit(expressio1) * self.visit(expressio2)
        else: return self.visit(expressio1) / self.visit(expressio2)

    def visitPotencia(self, ctx):
        [expressio1, operador, expressio2] = list(ctx.getChildren())
        return pow(self.visit(expressio1), self.visit(expressio2))
    
    def visitNumero(self, ctx):
        [numero] = list(ctx.getChildren())
        return int(numero.getText())
    
    def visitEscriptura(self, ctx):
        [operador, expressio] = list(ctx.getChildren())
        print(self.visit(expressio))

    def visitAssignacio(self, ctx):
        [variable, operador, expressio] = list(ctx.getChildren())
        vars_dict[str(variable)] = self.visit(expressio)
        return
    
    def visitVariable(self, ctx):
        [variable] = list(ctx.getChildren())
        return vars_dict[str(variable)]


input_stream = StdinStream()
lexer = exprsLexer(input_stream)
token_stream = CommonTokenStream(lexer)
parser = exprsParser(token_stream)
tree = parser.root()
if parser.getNumberOfSyntaxErrors() == 0:
    #visitor = TreeVisitor()
    #visitor.visit(tree)
    visitor = EvalVisitor()
    visitor.visit(tree)
else:
    print(parser.getNumberOfSyntaxErrors(), 'errors de sintaxi.')
    print(tree.toStringTree(recog=parser))
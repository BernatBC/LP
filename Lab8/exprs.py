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
        return self.visitChildren(ctx)
    
    def visitBlock(self, ctx):
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
        [expressio1, _, expressio2] = list(ctx.getChildren())
        return pow(self.visit(expressio1), self.visit(expressio2))
    
    def visitNumero(self, ctx):
        [numero] = list(ctx.getChildren())
        return int(numero.getText())
    
    def visitEscriptura(self, ctx):
        [_, expressio] = list(ctx.getChildren())
        print(self.visit(expressio))

    def visitAssignacio(self, ctx):
        [variable, _, expressio] = list(ctx.getChildren())
        vars_dict[str(variable)] = self.visit(expressio)
        return
    
    def visitVariable(self, ctx):
        [variable] = list(ctx.getChildren())
        return vars_dict[str(variable)]
    
    def visitCondicio(self, ctx):
        [_, expr_bool, _, bloc, _] = list(ctx.getChildren())
        if self.visit(expr_bool):
            self.visit(bloc)

    def visitBucle_while(self, ctx):
        [_, expr_bool, _, bloc, _] = list(ctx.getChildren())
        while self.visit(expr_bool):
            self.visit(bloc)

    def visitParentesis(self, ctx):
        [_, expressio, _] = list(ctx.getChildren())
        return self.visit(expressio)
    
    def visitOr_bool(self, ctx):
        [_, boolean1, _, boolean2, _] = list(ctx.getChildren())
        return self.visit(boolean1) or self.visit(boolean2)

    def visitParentesis_bool(self, ctx):
        [_, expressio, _] = list(ctx.getChildren())
        return self.visit(expressio)

    def visitOper_bool(self, ctx):
        [expressio1, operador, expressio2] = list(ctx.getChildren())
        val1 = self.visit(expressio1)
        val2 = self.visit(expressio2)
        op = str(operador)
        if op == '=': return val1 == val2
        if op == '<': return val1 < val2
        if op == '>': return val1 > val2
        if op == '<>': return val1 != val2

    def visitAnd_bool(self, ctx):
        [_, boolean1, _, boolean2, _] = list(ctx.getChildren())
        return self.visit(boolean1) and self.visit(boolean2)


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
from antlr4 import *
from exprsLexer import exprsLexer
from exprsParser import exprsParser
from exprsVisitor import exprsVisitor

vars_dict = [dict()]
func_dict = dict()
args_dict = dict()

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
    
    def visitMain(self, ctx):
        return self.visitChildren(ctx)

    def visitFunctions(self, ctx):
        return self.visitChildren(ctx)

    def visitFunction(self, ctx:exprsParser.FunctionContext):
        [_, identifier, _, args, _, code_block, _] = list(ctx.getChildren())
        func_dict[str(identifier)] = code_block
        args_dict[str(identifier)] = self.visit(args)

    def visitBlock(self, ctx):
        l = list(ctx.getChildren())
        for f in l:
            k = self.visit(f)
            if isinstance(k, int):
                return k

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
        vars_dict[len(vars_dict) - 1][str(variable)] = self.visit(expressio)
        return
    
    def visitVariable(self, ctx):
        [variable] = list(ctx.getChildren())
        return vars_dict[len(vars_dict) - 1][str(variable)]
    
    def visitCondicio(self, ctx):
        [_, expr_bool, _, bloc, _] = list(ctx.getChildren())
        if self.visit(expr_bool):
            return self.visit(bloc)

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
    
    def visitCrida_funcio(self, ctx):
        [identifier, _, params, _] = list(ctx.getChildren())
        v = self.visit(params)
        new_vars_dict = dict()
        for i in range(0,len(v)):
            new_vars_dict[args_dict[str(identifier)][i]] = v[i]
        vars_dict.append(new_vars_dict)
        val = self.visit(func_dict[str(identifier)])
        vars_dict.pop()
        return val

    def visitRetornar(self, ctx):
        [_, expression] = list(ctx.getChildren())
        return int(self.visit(expression))
    
    def visitArguments(self, ctx):
        arguments = list(ctx.getChildren())
        args = []
        for a in arguments:
            if str(a) != ',': args.append(str(a))
        return args

    def visitParameters(self, ctx):
        parameters = list(ctx.getChildren())
        params = []
        for p in parameters:
            if str(p) != ',': params.append(self.visit(p))
        return params

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
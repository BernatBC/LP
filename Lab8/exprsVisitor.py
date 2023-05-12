# Generated from exprs.g4 by ANTLR 4.12.0
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .exprsParser import exprsParser
else:
    from exprsParser import exprsParser

# This class defines a complete generic visitor for a parse tree produced by exprsParser.

class exprsVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by exprsParser#root.
    def visitRoot(self, ctx:exprsParser.RootContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#block.
    def visitBlock(self, ctx:exprsParser.BlockContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#escriptura.
    def visitEscriptura(self, ctx:exprsParser.EscripturaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#assignacio.
    def visitAssignacio(self, ctx:exprsParser.AssignacioContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#condicio.
    def visitCondicio(self, ctx:exprsParser.CondicioContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#bucle_while.
    def visitBucle_while(self, ctx:exprsParser.Bucle_whileContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#parentesis.
    def visitParentesis(self, ctx:exprsParser.ParentesisContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#potencia.
    def visitPotencia(self, ctx:exprsParser.PotenciaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#mult_div.
    def visitMult_div(self, ctx:exprsParser.Mult_divContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#numero.
    def visitNumero(self, ctx:exprsParser.NumeroContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#suma_resta.
    def visitSuma_resta(self, ctx:exprsParser.Suma_restaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#variable.
    def visitVariable(self, ctx:exprsParser.VariableContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#or_bool.
    def visitOr_bool(self, ctx:exprsParser.Or_boolContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#parentesis_bool.
    def visitParentesis_bool(self, ctx:exprsParser.Parentesis_boolContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#oper_bool.
    def visitOper_bool(self, ctx:exprsParser.Oper_boolContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by exprsParser#and_bool.
    def visitAnd_bool(self, ctx:exprsParser.And_boolContext):
        return self.visitChildren(ctx)



del exprsParser
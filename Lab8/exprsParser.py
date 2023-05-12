# Generated from exprs.g4 by ANTLR 4.12.0
# encoding: utf-8
from antlr4 import *
from io import StringIO
import sys
if sys.version_info[1] > 5:
	from typing import TextIO
else:
	from typing.io import TextIO

def serializedATN():
    return [
        4,1,23,84,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,1,0,1,0,1,0,1,
        1,5,1,15,8,1,10,1,12,1,18,9,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,
        2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,37,8,2,1,3,1,3,1,3,1,3,1,3,
        1,3,1,3,3,3,46,8,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,5,3,57,8,
        3,10,3,12,3,60,9,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,71,8,
        4,1,4,1,4,1,4,1,4,1,4,1,4,5,4,79,8,4,10,4,12,4,82,9,4,1,4,0,2,6,
        8,5,0,2,4,6,8,0,3,1,0,11,12,1,0,13,14,1,0,17,20,90,0,10,1,0,0,0,
        2,16,1,0,0,0,4,36,1,0,0,0,6,45,1,0,0,0,8,70,1,0,0,0,10,11,3,2,1,
        0,11,12,5,0,0,1,12,1,1,0,0,0,13,15,3,4,2,0,14,13,1,0,0,0,15,18,1,
        0,0,0,16,14,1,0,0,0,16,17,1,0,0,0,17,3,1,0,0,0,18,16,1,0,0,0,19,
        20,5,1,0,0,20,37,3,6,3,0,21,22,5,22,0,0,22,23,5,2,0,0,23,37,3,6,
        3,0,24,25,5,3,0,0,25,26,3,8,4,0,26,27,5,4,0,0,27,28,3,2,1,0,28,29,
        5,5,0,0,29,37,1,0,0,0,30,31,5,6,0,0,31,32,3,8,4,0,32,33,5,7,0,0,
        33,34,3,2,1,0,34,35,5,5,0,0,35,37,1,0,0,0,36,19,1,0,0,0,36,21,1,
        0,0,0,36,24,1,0,0,0,36,30,1,0,0,0,37,5,1,0,0,0,38,39,6,3,-1,0,39,
        40,5,8,0,0,40,41,3,6,3,0,41,42,5,9,0,0,42,46,1,0,0,0,43,46,5,21,
        0,0,44,46,5,22,0,0,45,38,1,0,0,0,45,43,1,0,0,0,45,44,1,0,0,0,46,
        58,1,0,0,0,47,48,10,5,0,0,48,49,5,10,0,0,49,57,3,6,3,5,50,51,10,
        4,0,0,51,52,7,0,0,0,52,57,3,6,3,5,53,54,10,3,0,0,54,55,7,1,0,0,55,
        57,3,6,3,4,56,47,1,0,0,0,56,50,1,0,0,0,56,53,1,0,0,0,57,60,1,0,0,
        0,58,56,1,0,0,0,58,59,1,0,0,0,59,7,1,0,0,0,60,58,1,0,0,0,61,62,6,
        4,-1,0,62,63,5,8,0,0,63,64,3,8,4,0,64,65,5,9,0,0,65,71,1,0,0,0,66,
        67,3,6,3,0,67,68,7,2,0,0,68,69,3,6,3,0,69,71,1,0,0,0,70,61,1,0,0,
        0,70,66,1,0,0,0,71,80,1,0,0,0,72,73,10,3,0,0,73,74,5,15,0,0,74,79,
        3,8,4,4,75,76,10,2,0,0,76,77,5,16,0,0,77,79,3,8,4,3,78,72,1,0,0,
        0,78,75,1,0,0,0,79,82,1,0,0,0,80,78,1,0,0,0,80,81,1,0,0,0,81,9,1,
        0,0,0,82,80,1,0,0,0,8,16,36,45,56,58,70,78,80
    ]

class exprsParser ( Parser ):

    grammarFileName = "exprs.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "'write'", "':='", "'if'", "'then'", "'end'", 
                     "'while'", "'do'", "'('", "')'", "'^'", "'*'", "'/'", 
                     "'+'", "'-'", "'||'", "'&&'", "'='", "'<>'", "'<'", 
                     "'>'" ]

    symbolicNames = [ "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "NUM", "VAR", "WS" ]

    RULE_root = 0
    RULE_block = 1
    RULE_statement = 2
    RULE_expr = 3
    RULE_bool = 4

    ruleNames =  [ "root", "block", "statement", "expr", "bool" ]

    EOF = Token.EOF
    T__0=1
    T__1=2
    T__2=3
    T__3=4
    T__4=5
    T__5=6
    T__6=7
    T__7=8
    T__8=9
    T__9=10
    T__10=11
    T__11=12
    T__12=13
    T__13=14
    T__14=15
    T__15=16
    T__16=17
    T__17=18
    T__18=19
    T__19=20
    NUM=21
    VAR=22
    WS=23

    def __init__(self, input:TokenStream, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.12.0")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None




    class RootContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def block(self):
            return self.getTypedRuleContext(exprsParser.BlockContext,0)


        def EOF(self):
            return self.getToken(exprsParser.EOF, 0)

        def getRuleIndex(self):
            return exprsParser.RULE_root

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitRoot" ):
                return visitor.visitRoot(self)
            else:
                return visitor.visitChildren(self)




    def root(self):

        localctx = exprsParser.RootContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_root)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 10
            self.block()
            self.state = 11
            self.match(exprsParser.EOF)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class BlockContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def statement(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(exprsParser.StatementContext)
            else:
                return self.getTypedRuleContext(exprsParser.StatementContext,i)


        def getRuleIndex(self):
            return exprsParser.RULE_block

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitBlock" ):
                return visitor.visitBlock(self)
            else:
                return visitor.visitChildren(self)




    def block(self):

        localctx = exprsParser.BlockContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_block)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 16
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while (((_la) & ~0x3f) == 0 and ((1 << _la) & 4194378) != 0):
                self.state = 13
                self.statement()
                self.state = 18
                self._errHandler.sync(self)
                _la = self._input.LA(1)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class StatementContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser


        def getRuleIndex(self):
            return exprsParser.RULE_statement

     
        def copyFrom(self, ctx:ParserRuleContext):
            super().copyFrom(ctx)



    class AssignacioContext(StatementContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.StatementContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def VAR(self):
            return self.getToken(exprsParser.VAR, 0)
        def expr(self):
            return self.getTypedRuleContext(exprsParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAssignacio" ):
                return visitor.visitAssignacio(self)
            else:
                return visitor.visitChildren(self)


    class Bucle_whileContext(StatementContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.StatementContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def bool_(self):
            return self.getTypedRuleContext(exprsParser.BoolContext,0)

        def block(self):
            return self.getTypedRuleContext(exprsParser.BlockContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitBucle_while" ):
                return visitor.visitBucle_while(self)
            else:
                return visitor.visitChildren(self)


    class EscripturaContext(StatementContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.StatementContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self):
            return self.getTypedRuleContext(exprsParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitEscriptura" ):
                return visitor.visitEscriptura(self)
            else:
                return visitor.visitChildren(self)


    class CondicioContext(StatementContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.StatementContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def bool_(self):
            return self.getTypedRuleContext(exprsParser.BoolContext,0)

        def block(self):
            return self.getTypedRuleContext(exprsParser.BlockContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitCondicio" ):
                return visitor.visitCondicio(self)
            else:
                return visitor.visitChildren(self)



    def statement(self):

        localctx = exprsParser.StatementContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_statement)
        try:
            self.state = 36
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [1]:
                localctx = exprsParser.EscripturaContext(self, localctx)
                self.enterOuterAlt(localctx, 1)
                self.state = 19
                self.match(exprsParser.T__0)
                self.state = 20
                self.expr(0)
                pass
            elif token in [22]:
                localctx = exprsParser.AssignacioContext(self, localctx)
                self.enterOuterAlt(localctx, 2)
                self.state = 21
                self.match(exprsParser.VAR)
                self.state = 22
                self.match(exprsParser.T__1)
                self.state = 23
                self.expr(0)
                pass
            elif token in [3]:
                localctx = exprsParser.CondicioContext(self, localctx)
                self.enterOuterAlt(localctx, 3)
                self.state = 24
                self.match(exprsParser.T__2)
                self.state = 25
                self.bool_(0)
                self.state = 26
                self.match(exprsParser.T__3)
                self.state = 27
                self.block()
                self.state = 28
                self.match(exprsParser.T__4)
                pass
            elif token in [6]:
                localctx = exprsParser.Bucle_whileContext(self, localctx)
                self.enterOuterAlt(localctx, 4)
                self.state = 30
                self.match(exprsParser.T__5)
                self.state = 31
                self.bool_(0)
                self.state = 32
                self.match(exprsParser.T__6)
                self.state = 33
                self.block()
                self.state = 34
                self.match(exprsParser.T__4)
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ExprContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser


        def getRuleIndex(self):
            return exprsParser.RULE_expr

     
        def copyFrom(self, ctx:ParserRuleContext):
            super().copyFrom(ctx)


    class ParentesisContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self):
            return self.getTypedRuleContext(exprsParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitParentesis" ):
                return visitor.visitParentesis(self)
            else:
                return visitor.visitChildren(self)


    class PotenciaContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(exprsParser.ExprContext)
            else:
                return self.getTypedRuleContext(exprsParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitPotencia" ):
                return visitor.visitPotencia(self)
            else:
                return visitor.visitChildren(self)


    class Mult_divContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.ExprContext
            super().__init__(parser)
            self.mult = None # Token
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(exprsParser.ExprContext)
            else:
                return self.getTypedRuleContext(exprsParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitMult_div" ):
                return visitor.visitMult_div(self)
            else:
                return visitor.visitChildren(self)


    class NumeroContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def NUM(self):
            return self.getToken(exprsParser.NUM, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitNumero" ):
                return visitor.visitNumero(self)
            else:
                return visitor.visitChildren(self)


    class Suma_restaContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.ExprContext
            super().__init__(parser)
            self.add = None # Token
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(exprsParser.ExprContext)
            else:
                return self.getTypedRuleContext(exprsParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitSuma_resta" ):
                return visitor.visitSuma_resta(self)
            else:
                return visitor.visitChildren(self)


    class VariableContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def VAR(self):
            return self.getToken(exprsParser.VAR, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitVariable" ):
                return visitor.visitVariable(self)
            else:
                return visitor.visitChildren(self)



    def expr(self, _p:int=0):
        _parentctx = self._ctx
        _parentState = self.state
        localctx = exprsParser.ExprContext(self, self._ctx, _parentState)
        _prevctx = localctx
        _startState = 6
        self.enterRecursionRule(localctx, 6, self.RULE_expr, _p)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 45
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [8]:
                localctx = exprsParser.ParentesisContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx

                self.state = 39
                self.match(exprsParser.T__7)
                self.state = 40
                self.expr(0)
                self.state = 41
                self.match(exprsParser.T__8)
                pass
            elif token in [21]:
                localctx = exprsParser.NumeroContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 43
                self.match(exprsParser.NUM)
                pass
            elif token in [22]:
                localctx = exprsParser.VariableContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 44
                self.match(exprsParser.VAR)
                pass
            else:
                raise NoViableAltException(self)

            self._ctx.stop = self._input.LT(-1)
            self.state = 58
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,4,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    if self._parseListeners is not None:
                        self.triggerExitRuleEvent()
                    _prevctx = localctx
                    self.state = 56
                    self._errHandler.sync(self)
                    la_ = self._interp.adaptivePredict(self._input,3,self._ctx)
                    if la_ == 1:
                        localctx = exprsParser.PotenciaContext(self, exprsParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 47
                        if not self.precpred(self._ctx, 5):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 5)")
                        self.state = 48
                        self.match(exprsParser.T__9)
                        self.state = 49
                        self.expr(5)
                        pass

                    elif la_ == 2:
                        localctx = exprsParser.Mult_divContext(self, exprsParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 50
                        if not self.precpred(self._ctx, 4):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 4)")
                        self.state = 51
                        localctx.mult = self._input.LT(1)
                        _la = self._input.LA(1)
                        if not(_la==11 or _la==12):
                            localctx.mult = self._errHandler.recoverInline(self)
                        else:
                            self._errHandler.reportMatch(self)
                            self.consume()
                        self.state = 52
                        self.expr(5)
                        pass

                    elif la_ == 3:
                        localctx = exprsParser.Suma_restaContext(self, exprsParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 53
                        if not self.precpred(self._ctx, 3):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 3)")
                        self.state = 54
                        localctx.add = self._input.LT(1)
                        _la = self._input.LA(1)
                        if not(_la==13 or _la==14):
                            localctx.add = self._errHandler.recoverInline(self)
                        else:
                            self._errHandler.reportMatch(self)
                            self.consume()
                        self.state = 55
                        self.expr(4)
                        pass

             
                self.state = 60
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,4,self._ctx)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.unrollRecursionContexts(_parentctx)
        return localctx


    class BoolContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser


        def getRuleIndex(self):
            return exprsParser.RULE_bool

     
        def copyFrom(self, ctx:ParserRuleContext):
            super().copyFrom(ctx)


    class Or_boolContext(BoolContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.BoolContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def bool_(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(exprsParser.BoolContext)
            else:
                return self.getTypedRuleContext(exprsParser.BoolContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitOr_bool" ):
                return visitor.visitOr_bool(self)
            else:
                return visitor.visitChildren(self)


    class Parentesis_boolContext(BoolContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.BoolContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def bool_(self):
            return self.getTypedRuleContext(exprsParser.BoolContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitParentesis_bool" ):
                return visitor.visitParentesis_bool(self)
            else:
                return visitor.visitChildren(self)


    class Oper_boolContext(BoolContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.BoolContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(exprsParser.ExprContext)
            else:
                return self.getTypedRuleContext(exprsParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitOper_bool" ):
                return visitor.visitOper_bool(self)
            else:
                return visitor.visitChildren(self)


    class And_boolContext(BoolContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a exprsParser.BoolContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def bool_(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(exprsParser.BoolContext)
            else:
                return self.getTypedRuleContext(exprsParser.BoolContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAnd_bool" ):
                return visitor.visitAnd_bool(self)
            else:
                return visitor.visitChildren(self)



    def bool_(self, _p:int=0):
        _parentctx = self._ctx
        _parentState = self.state
        localctx = exprsParser.BoolContext(self, self._ctx, _parentState)
        _prevctx = localctx
        _startState = 8
        self.enterRecursionRule(localctx, 8, self.RULE_bool, _p)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 70
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,5,self._ctx)
            if la_ == 1:
                localctx = exprsParser.Parentesis_boolContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx

                self.state = 62
                self.match(exprsParser.T__7)
                self.state = 63
                self.bool_(0)
                self.state = 64
                self.match(exprsParser.T__8)
                pass

            elif la_ == 2:
                localctx = exprsParser.Oper_boolContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 66
                self.expr(0)
                self.state = 67
                _la = self._input.LA(1)
                if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 1966080) != 0)):
                    self._errHandler.recoverInline(self)
                else:
                    self._errHandler.reportMatch(self)
                    self.consume()
                self.state = 68
                self.expr(0)
                pass


            self._ctx.stop = self._input.LT(-1)
            self.state = 80
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,7,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    if self._parseListeners is not None:
                        self.triggerExitRuleEvent()
                    _prevctx = localctx
                    self.state = 78
                    self._errHandler.sync(self)
                    la_ = self._interp.adaptivePredict(self._input,6,self._ctx)
                    if la_ == 1:
                        localctx = exprsParser.Or_boolContext(self, exprsParser.BoolContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_bool)
                        self.state = 72
                        if not self.precpred(self._ctx, 3):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 3)")
                        self.state = 73
                        self.match(exprsParser.T__14)
                        self.state = 74
                        self.bool_(4)
                        pass

                    elif la_ == 2:
                        localctx = exprsParser.And_boolContext(self, exprsParser.BoolContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_bool)
                        self.state = 75
                        if not self.precpred(self._ctx, 2):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 2)")
                        self.state = 76
                        self.match(exprsParser.T__15)
                        self.state = 77
                        self.bool_(3)
                        pass

             
                self.state = 82
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,7,self._ctx)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.unrollRecursionContexts(_parentctx)
        return localctx



    def sempred(self, localctx:RuleContext, ruleIndex:int, predIndex:int):
        if self._predicates == None:
            self._predicates = dict()
        self._predicates[3] = self.expr_sempred
        self._predicates[4] = self.bool_sempred
        pred = self._predicates.get(ruleIndex, None)
        if pred is None:
            raise Exception("No predicate with index:" + str(ruleIndex))
        else:
            return pred(localctx, predIndex)

    def expr_sempred(self, localctx:ExprContext, predIndex:int):
            if predIndex == 0:
                return self.precpred(self._ctx, 5)
         

            if predIndex == 1:
                return self.precpred(self._ctx, 4)
         

            if predIndex == 2:
                return self.precpred(self._ctx, 3)
         

    def bool_sempred(self, localctx:BoolContext, predIndex:int):
            if predIndex == 3:
                return self.precpred(self._ctx, 3)
         

            if predIndex == 4:
                return self.precpred(self._ctx, 2)
         





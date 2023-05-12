// Generated from /home/bernat/Desktop/Code/LP/Lab8/exprs.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class exprsParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, NUM=21, VAR=22, WS=23;
	public static final int
		RULE_root = 0, RULE_block = 1, RULE_statement = 2, RULE_expr = 3, RULE_bool = 4;
	private static String[] makeRuleNames() {
		return new String[] {
			"root", "block", "statement", "expr", "bool"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'write'", "':='", "'if'", "'then'", "'end'", "'while'", "'do'", 
			"'('", "')'", "'^'", "'*'", "'/'", "'+'", "'-'", "'||'", "'&&'", "'='", 
			"'<>'", "'<'", "'>'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, "NUM", "VAR", "WS"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "exprs.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public exprsParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class RootContext extends ParserRuleContext {
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public TerminalNode EOF() { return getToken(exprsParser.EOF, 0); }
		public RootContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_root; }
	}

	public final RootContext root() throws RecognitionException {
		RootContext _localctx = new RootContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_root);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(10);
			block();
			setState(11);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(16);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__2) | (1L << T__5) | (1L << VAR))) != 0)) {
				{
				{
				setState(13);
				statement();
				}
				}
				setState(18);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	 
		public StatementContext() { }
		public void copyFrom(StatementContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class AssignacioContext extends StatementContext {
		public TerminalNode VAR() { return getToken(exprsParser.VAR, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignacioContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class Bucle_whileContext extends StatementContext {
		public BoolContext bool() {
			return getRuleContext(BoolContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public Bucle_whileContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class EscripturaContext extends StatementContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public EscripturaContext(StatementContext ctx) { copyFrom(ctx); }
	}
	public static class CondicioContext extends StatementContext {
		public BoolContext bool() {
			return getRuleContext(BoolContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public CondicioContext(StatementContext ctx) { copyFrom(ctx); }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_statement);
		try {
			setState(36);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				_localctx = new EscripturaContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(19);
				match(T__0);
				setState(20);
				expr(0);
				}
				break;
			case VAR:
				_localctx = new AssignacioContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(21);
				match(VAR);
				setState(22);
				match(T__1);
				setState(23);
				expr(0);
				}
				break;
			case T__2:
				_localctx = new CondicioContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(24);
				match(T__2);
				setState(25);
				bool(0);
				setState(26);
				match(T__3);
				setState(27);
				block();
				setState(28);
				match(T__4);
				}
				break;
			case T__5:
				_localctx = new Bucle_whileContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(30);
				match(T__5);
				setState(31);
				bool(0);
				setState(32);
				match(T__6);
				setState(33);
				block();
				setState(34);
				match(T__4);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ParentesisContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParentesisContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class PotenciaContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PotenciaContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class Mult_divContext extends ExprContext {
		public Token mult;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Mult_divContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class NumeroContext extends ExprContext {
		public TerminalNode NUM() { return getToken(exprsParser.NUM, 0); }
		public NumeroContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class Suma_restaContext extends ExprContext {
		public Token add;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Suma_restaContext(ExprContext ctx) { copyFrom(ctx); }
	}
	public static class VariableContext extends ExprContext {
		public TerminalNode VAR() { return getToken(exprsParser.VAR, 0); }
		public VariableContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 6;
		enterRecursionRule(_localctx, 6, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(45);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__7:
				{
				_localctx = new ParentesisContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(39);
				match(T__7);
				setState(40);
				expr(0);
				setState(41);
				match(T__8);
				}
				break;
			case NUM:
				{
				_localctx = new NumeroContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(43);
				match(NUM);
				}
				break;
			case VAR:
				{
				_localctx = new VariableContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(44);
				match(VAR);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(58);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,4,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(56);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
					case 1:
						{
						_localctx = new PotenciaContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(47);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(48);
						match(T__9);
						setState(49);
						expr(5);
						}
						break;
					case 2:
						{
						_localctx = new Mult_divContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(50);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(51);
						((Mult_divContext)_localctx).mult = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__10 || _la==T__11) ) {
							((Mult_divContext)_localctx).mult = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(52);
						expr(5);
						}
						break;
					case 3:
						{
						_localctx = new Suma_restaContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(53);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(54);
						((Suma_restaContext)_localctx).add = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__12 || _la==T__13) ) {
							((Suma_restaContext)_localctx).add = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(55);
						expr(4);
						}
						break;
					}
					} 
				}
				setState(60);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,4,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class BoolContext extends ParserRuleContext {
		public BoolContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_bool; }
	 
		public BoolContext() { }
		public void copyFrom(BoolContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Or_boolContext extends BoolContext {
		public List<BoolContext> bool() {
			return getRuleContexts(BoolContext.class);
		}
		public BoolContext bool(int i) {
			return getRuleContext(BoolContext.class,i);
		}
		public Or_boolContext(BoolContext ctx) { copyFrom(ctx); }
	}
	public static class Parentesis_boolContext extends BoolContext {
		public BoolContext bool() {
			return getRuleContext(BoolContext.class,0);
		}
		public Parentesis_boolContext(BoolContext ctx) { copyFrom(ctx); }
	}
	public static class Oper_boolContext extends BoolContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Oper_boolContext(BoolContext ctx) { copyFrom(ctx); }
	}
	public static class And_boolContext extends BoolContext {
		public List<BoolContext> bool() {
			return getRuleContexts(BoolContext.class);
		}
		public BoolContext bool(int i) {
			return getRuleContext(BoolContext.class,i);
		}
		public And_boolContext(BoolContext ctx) { copyFrom(ctx); }
	}

	public final BoolContext bool() throws RecognitionException {
		return bool(0);
	}

	private BoolContext bool(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		BoolContext _localctx = new BoolContext(_ctx, _parentState);
		BoolContext _prevctx = _localctx;
		int _startState = 8;
		enterRecursionRule(_localctx, 8, RULE_bool, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(70);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,5,_ctx) ) {
			case 1:
				{
				_localctx = new Parentesis_boolContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(62);
				match(T__7);
				setState(63);
				bool(0);
				setState(64);
				match(T__8);
				}
				break;
			case 2:
				{
				_localctx = new Oper_boolContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(66);
				expr(0);
				setState(67);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19))) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(68);
				expr(0);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(80);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,7,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(78);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,6,_ctx) ) {
					case 1:
						{
						_localctx = new Or_boolContext(new BoolContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_bool);
						setState(72);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(73);
						match(T__14);
						setState(74);
						bool(4);
						}
						break;
					case 2:
						{
						_localctx = new And_boolContext(new BoolContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_bool);
						setState(75);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(76);
						match(T__15);
						setState(77);
						bool(3);
						}
						break;
					}
					} 
				}
				setState(82);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,7,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 3:
			return expr_sempred((ExprContext)_localctx, predIndex);
		case 4:
			return bool_sempred((BoolContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 5);
		case 1:
			return precpred(_ctx, 4);
		case 2:
			return precpred(_ctx, 3);
		}
		return true;
	}
	private boolean bool_sempred(BoolContext _localctx, int predIndex) {
		switch (predIndex) {
		case 3:
			return precpred(_ctx, 3);
		case 4:
			return precpred(_ctx, 2);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\31V\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\3\2\3\2\3\2\3\3\7\3\21\n\3\f\3\16\3\24\13\3"+
		"\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\5"+
		"\4\'\n\4\3\5\3\5\3\5\3\5\3\5\3\5\3\5\5\5\60\n\5\3\5\3\5\3\5\3\5\3\5\3"+
		"\5\3\5\3\5\3\5\7\5;\n\5\f\5\16\5>\13\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6"+
		"\3\6\5\6I\n\6\3\6\3\6\3\6\3\6\3\6\3\6\7\6Q\n\6\f\6\16\6T\13\6\3\6\2\4"+
		"\b\n\7\2\4\6\b\n\2\5\3\2\r\16\3\2\17\20\3\2\23\26\2\\\2\f\3\2\2\2\4\22"+
		"\3\2\2\2\6&\3\2\2\2\b/\3\2\2\2\nH\3\2\2\2\f\r\5\4\3\2\r\16\7\2\2\3\16"+
		"\3\3\2\2\2\17\21\5\6\4\2\20\17\3\2\2\2\21\24\3\2\2\2\22\20\3\2\2\2\22"+
		"\23\3\2\2\2\23\5\3\2\2\2\24\22\3\2\2\2\25\26\7\3\2\2\26\'\5\b\5\2\27\30"+
		"\7\30\2\2\30\31\7\4\2\2\31\'\5\b\5\2\32\33\7\5\2\2\33\34\5\n\6\2\34\35"+
		"\7\6\2\2\35\36\5\4\3\2\36\37\7\7\2\2\37\'\3\2\2\2 !\7\b\2\2!\"\5\n\6\2"+
		"\"#\7\t\2\2#$\5\4\3\2$%\7\7\2\2%\'\3\2\2\2&\25\3\2\2\2&\27\3\2\2\2&\32"+
		"\3\2\2\2& \3\2\2\2\'\7\3\2\2\2()\b\5\1\2)*\7\n\2\2*+\5\b\5\2+,\7\13\2"+
		"\2,\60\3\2\2\2-\60\7\27\2\2.\60\7\30\2\2/(\3\2\2\2/-\3\2\2\2/.\3\2\2\2"+
		"\60<\3\2\2\2\61\62\f\7\2\2\62\63\7\f\2\2\63;\5\b\5\7\64\65\f\6\2\2\65"+
		"\66\t\2\2\2\66;\5\b\5\7\678\f\5\2\289\t\3\2\29;\5\b\5\6:\61\3\2\2\2:\64"+
		"\3\2\2\2:\67\3\2\2\2;>\3\2\2\2<:\3\2\2\2<=\3\2\2\2=\t\3\2\2\2><\3\2\2"+
		"\2?@\b\6\1\2@A\7\n\2\2AB\5\n\6\2BC\7\13\2\2CI\3\2\2\2DE\5\b\5\2EF\t\4"+
		"\2\2FG\5\b\5\2GI\3\2\2\2H?\3\2\2\2HD\3\2\2\2IR\3\2\2\2JK\f\5\2\2KL\7\21"+
		"\2\2LQ\5\n\6\6MN\f\4\2\2NO\7\22\2\2OQ\5\n\6\5PJ\3\2\2\2PM\3\2\2\2QT\3"+
		"\2\2\2RP\3\2\2\2RS\3\2\2\2S\13\3\2\2\2TR\3\2\2\2\n\22&/:<HPR";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
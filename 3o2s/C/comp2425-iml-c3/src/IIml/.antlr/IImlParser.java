// Generated from /home/joaquim/Documents/UA/C/Projeto-github/comp2425-iml-c3/src/IIml/IIml.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class IImlParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		ID=32, STRING=33, NUMBER=34, COMMENT=35, WS=36;
	public static final int
		RULE_program = 0, RULE_command = 1, RULE_assignStat = 2, RULE_createImage = 3, 
		RULE_placeForm = 4, RULE_forLoop = 5, RULE_expr = 6, RULE_shapes = 7, 
		RULE_types = 8;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "command", "assignStat", "createImage", "placeForm", "forLoop", 
			"expr", "shapes", "types"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'is'", "'size'", "'by'", "'background'", "'place'", "'at'", "'with'", 
			"'intensity'", "'for'", "'list'", "'within'", "'('", "')'", "'read'", 
			"'+'", "'-'", "'*'", "'/'", "'['", "','", "']'", "'circle'", "'radius'", 
			"'rect'", "'width'", "'height'", "'cross'", "'plus'", "'number'", "'image'", 
			"'of'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, "ID", "STRING", "NUMBER", 
			"COMMENT", "WS"
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
	public String getGrammarFileName() { return "IIml.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public IImlParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(IImlParser.EOF, 0); }
		public List<CommandContext> command() {
			return getRuleContexts(CommandContext.class);
		}
		public CommandContext command(int i) {
			return getRuleContext(CommandContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(21);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 5905581604L) != 0)) {
				{
				{
				setState(18);
				command();
				}
				}
				setState(23);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(24);
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

	@SuppressWarnings("CheckReturnValue")
	public static class CommandContext extends ParserRuleContext {
		public AssignStatContext assignStat() {
			return getRuleContext(AssignStatContext.class,0);
		}
		public CreateImageContext createImage() {
			return getRuleContext(CreateImageContext.class,0);
		}
		public PlaceFormContext placeForm() {
			return getRuleContext(PlaceFormContext.class,0);
		}
		public ForLoopContext forLoop() {
			return getRuleContext(ForLoopContext.class,0);
		}
		public CommandContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_command; }
	}

	public final CommandContext command() throws RecognitionException {
		CommandContext _localctx = new CommandContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_command);
		try {
			setState(30);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(26);
				assignStat();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(27);
				createImage();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(28);
				placeForm();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(29);
				forLoop();
				}
				break;
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

	@SuppressWarnings("CheckReturnValue")
	public static class AssignStatContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(IImlParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TypesContext types() {
			return getRuleContext(TypesContext.class,0);
		}
		public AssignStatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignStat; }
	}

	public final AssignStatContext assignStat() throws RecognitionException {
		AssignStatContext _localctx = new AssignStatContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_assignStat);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(33);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1610613760L) != 0)) {
				{
				setState(32);
				types();
				}
			}

			setState(35);
			match(ID);
			setState(36);
			match(T__0);
			setState(37);
			expr(0);
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

	@SuppressWarnings("CheckReturnValue")
	public static class CreateImageContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TypesContext types() {
			return getRuleContext(TypesContext.class,0);
		}
		public CreateImageContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_createImage; }
	}

	public final CreateImageContext createImage() throws RecognitionException {
		CreateImageContext _localctx = new CreateImageContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_createImage);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(40);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1610613760L) != 0)) {
				{
				setState(39);
				types();
				}
			}

			setState(42);
			match(T__1);
			setState(43);
			expr(0);
			setState(44);
			match(T__2);
			setState(45);
			expr(0);
			setState(46);
			match(T__3);
			setState(47);
			expr(0);
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

	@SuppressWarnings("CheckReturnValue")
	public static class PlaceFormContext extends ParserRuleContext {
		public ShapesContext shapes() {
			return getRuleContext(ShapesContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PlaceFormContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_placeForm; }
	}

	public final PlaceFormContext placeForm() throws RecognitionException {
		PlaceFormContext _localctx = new PlaceFormContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_placeForm);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(49);
			match(T__4);
			setState(50);
			shapes();
			setState(51);
			match(T__5);
			setState(52);
			expr(0);
			setState(53);
			expr(0);
			setState(54);
			match(T__6);
			setState(55);
			match(T__7);
			setState(56);
			expr(0);
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

	@SuppressWarnings("CheckReturnValue")
	public static class ForLoopContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public CommandContext command() {
			return getRuleContext(CommandContext.class,0);
		}
		public ForLoopContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forLoop; }
	}

	public final ForLoopContext forLoop() throws RecognitionException {
		ForLoopContext _localctx = new ForLoopContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_forLoop);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(58);
			match(T__8);
			setState(60);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				{
				setState(59);
				match(T__9);
				}
				break;
			}
			setState(62);
			expr(0);
			setState(63);
			match(T__10);
			setState(64);
			expr(0);
			setState(65);
			command();
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

	@SuppressWarnings("CheckReturnValue")
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
	@SuppressWarnings("CheckReturnValue")
	public static class VariableExprContext extends ExprContext {
		public TerminalNode ID() { return getToken(IImlParser.ID, 0); }
		public VariableExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BinaryOpContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public BinaryOpContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListAccessContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ListAccessContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ConvertExprContext extends ExprContext {
		public TypesContext types() {
			return getRuleContext(TypesContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ConvertExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringLiteralContext extends ExprContext {
		public TerminalNode STRING() { return getToken(IImlParser.STRING, 0); }
		public StringLiteralContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReadInputContext extends ExprContext {
		public TerminalNode STRING() { return getToken(IImlParser.STRING, 0); }
		public ReadInputContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListExprContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ListExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParenExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParenExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NumberLiteralContext extends ExprContext {
		public TerminalNode NUMBER() { return getToken(IImlParser.NUMBER, 0); }
		public NumberLiteralContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 12;
		enterRecursionRule(_localctx, 12, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(94);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__11:
				{
				_localctx = new ParenExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(68);
				match(T__11);
				setState(69);
				expr(0);
				setState(70);
				match(T__12);
				}
				break;
			case T__13:
				{
				_localctx = new ReadInputContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(72);
				match(T__13);
				setState(73);
				match(STRING);
				}
				break;
			case T__9:
			case T__28:
			case T__29:
				{
				_localctx = new ConvertExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(74);
				types();
				setState(75);
				match(T__11);
				setState(76);
				expr(0);
				setState(77);
				match(T__12);
				}
				break;
			case T__18:
				{
				_localctx = new ListExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(79);
				match(T__18);
				setState(88);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 31675929600L) != 0)) {
					{
					setState(80);
					expr(0);
					setState(85);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__19) {
						{
						{
						setState(81);
						match(T__19);
						setState(82);
						expr(0);
						}
						}
						setState(87);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(90);
				match(T__20);
				}
				break;
			case NUMBER:
				{
				_localctx = new NumberLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(91);
				match(NUMBER);
				}
				break;
			case ID:
				{
				_localctx = new VariableExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(92);
				match(ID);
				}
				break;
			case STRING:
				{
				_localctx = new StringLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(93);
				match(STRING);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(106);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(104);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryOpContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(96);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(97);
						((BinaryOpContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 491520L) != 0)) ) {
							((BinaryOpContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(98);
						expr(8);
						}
						break;
					case 2:
						{
						_localctx = new ListAccessContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(99);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(100);
						match(T__18);
						setState(101);
						expr(0);
						setState(102);
						match(T__20);
						}
						break;
					}
					} 
				}
				setState(108);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
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

	@SuppressWarnings("CheckReturnValue")
	public static class ShapesContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ShapesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_shapes; }
	}

	public final ShapesContext shapes() throws RecognitionException {
		ShapesContext _localctx = new ShapesContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_shapes);
		try {
			setState(130);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__21:
				enterOuterAlt(_localctx, 1);
				{
				{
				setState(109);
				match(T__21);
				setState(110);
				match(T__22);
				setState(111);
				expr(0);
				}
				}
				break;
			case T__23:
				enterOuterAlt(_localctx, 2);
				{
				{
				setState(112);
				match(T__23);
				setState(113);
				match(T__24);
				setState(114);
				expr(0);
				setState(115);
				match(T__25);
				setState(116);
				expr(0);
				}
				}
				break;
			case T__26:
				enterOuterAlt(_localctx, 3);
				{
				{
				setState(118);
				match(T__26);
				setState(119);
				match(T__24);
				setState(120);
				expr(0);
				setState(121);
				match(T__25);
				setState(122);
				expr(0);
				}
				}
				break;
			case T__27:
				enterOuterAlt(_localctx, 4);
				{
				{
				setState(124);
				match(T__27);
				setState(125);
				match(T__24);
				setState(126);
				expr(0);
				setState(127);
				match(T__25);
				setState(128);
				expr(0);
				}
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

	@SuppressWarnings("CheckReturnValue")
	public static class TypesContext extends ParserRuleContext {
		public TypesContext types() {
			return getRuleContext(TypesContext.class,0);
		}
		public TypesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_types; }
	}

	public final TypesContext types() throws RecognitionException {
		TypesContext _localctx = new TypesContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_types);
		try {
			setState(137);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__28:
				enterOuterAlt(_localctx, 1);
				{
				setState(132);
				match(T__28);
				}
				break;
			case T__29:
				enterOuterAlt(_localctx, 2);
				{
				setState(133);
				match(T__29);
				}
				break;
			case T__9:
				enterOuterAlt(_localctx, 3);
				{
				setState(134);
				match(T__9);
				setState(135);
				match(T__30);
				setState(136);
				types();
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

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 6:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 7);
		case 1:
			return precpred(_ctx, 4);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001$\u008c\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0001\u0000\u0005\u0000\u0014\b\u0000\n\u0000\f\u0000\u0017"+
		"\t\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0003\u0001\u001f\b\u0001\u0001\u0002\u0003\u0002\"\b\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0003\u0003\u0003)\b"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001"+
		"\u0005\u0003\u0005=\b\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0005"+
		"\u0006T\b\u0006\n\u0006\f\u0006W\t\u0006\u0003\u0006Y\b\u0006\u0001\u0006"+
		"\u0001\u0006\u0001\u0006\u0001\u0006\u0003\u0006_\b\u0006\u0001\u0006"+
		"\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006"+
		"\u0001\u0006\u0005\u0006i\b\u0006\n\u0006\f\u0006l\t\u0006\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0003\u0007\u0083\b\u0007\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0003\b\u008a\b\b\u0001\b\u0000\u0001\f\t\u0000\u0002"+
		"\u0004\u0006\b\n\f\u000e\u0010\u0000\u0001\u0001\u0000\u000f\u0012\u0098"+
		"\u0000\u0015\u0001\u0000\u0000\u0000\u0002\u001e\u0001\u0000\u0000\u0000"+
		"\u0004!\u0001\u0000\u0000\u0000\u0006(\u0001\u0000\u0000\u0000\b1\u0001"+
		"\u0000\u0000\u0000\n:\u0001\u0000\u0000\u0000\f^\u0001\u0000\u0000\u0000"+
		"\u000e\u0082\u0001\u0000\u0000\u0000\u0010\u0089\u0001\u0000\u0000\u0000"+
		"\u0012\u0014\u0003\u0002\u0001\u0000\u0013\u0012\u0001\u0000\u0000\u0000"+
		"\u0014\u0017\u0001\u0000\u0000\u0000\u0015\u0013\u0001\u0000\u0000\u0000"+
		"\u0015\u0016\u0001\u0000\u0000\u0000\u0016\u0018\u0001\u0000\u0000\u0000"+
		"\u0017\u0015\u0001\u0000\u0000\u0000\u0018\u0019\u0005\u0000\u0000\u0001"+
		"\u0019\u0001\u0001\u0000\u0000\u0000\u001a\u001f\u0003\u0004\u0002\u0000"+
		"\u001b\u001f\u0003\u0006\u0003\u0000\u001c\u001f\u0003\b\u0004\u0000\u001d"+
		"\u001f\u0003\n\u0005\u0000\u001e\u001a\u0001\u0000\u0000\u0000\u001e\u001b"+
		"\u0001\u0000\u0000\u0000\u001e\u001c\u0001\u0000\u0000\u0000\u001e\u001d"+
		"\u0001\u0000\u0000\u0000\u001f\u0003\u0001\u0000\u0000\u0000 \"\u0003"+
		"\u0010\b\u0000! \u0001\u0000\u0000\u0000!\"\u0001\u0000\u0000\u0000\""+
		"#\u0001\u0000\u0000\u0000#$\u0005 \u0000\u0000$%\u0005\u0001\u0000\u0000"+
		"%&\u0003\f\u0006\u0000&\u0005\u0001\u0000\u0000\u0000\')\u0003\u0010\b"+
		"\u0000(\'\u0001\u0000\u0000\u0000()\u0001\u0000\u0000\u0000)*\u0001\u0000"+
		"\u0000\u0000*+\u0005\u0002\u0000\u0000+,\u0003\f\u0006\u0000,-\u0005\u0003"+
		"\u0000\u0000-.\u0003\f\u0006\u0000./\u0005\u0004\u0000\u0000/0\u0003\f"+
		"\u0006\u00000\u0007\u0001\u0000\u0000\u000012\u0005\u0005\u0000\u0000"+
		"23\u0003\u000e\u0007\u000034\u0005\u0006\u0000\u000045\u0003\f\u0006\u0000"+
		"56\u0003\f\u0006\u000067\u0005\u0007\u0000\u000078\u0005\b\u0000\u0000"+
		"89\u0003\f\u0006\u00009\t\u0001\u0000\u0000\u0000:<\u0005\t\u0000\u0000"+
		";=\u0005\n\u0000\u0000<;\u0001\u0000\u0000\u0000<=\u0001\u0000\u0000\u0000"+
		"=>\u0001\u0000\u0000\u0000>?\u0003\f\u0006\u0000?@\u0005\u000b\u0000\u0000"+
		"@A\u0003\f\u0006\u0000AB\u0003\u0002\u0001\u0000B\u000b\u0001\u0000\u0000"+
		"\u0000CD\u0006\u0006\uffff\uffff\u0000DE\u0005\f\u0000\u0000EF\u0003\f"+
		"\u0006\u0000FG\u0005\r\u0000\u0000G_\u0001\u0000\u0000\u0000HI\u0005\u000e"+
		"\u0000\u0000I_\u0005!\u0000\u0000JK\u0003\u0010\b\u0000KL\u0005\f\u0000"+
		"\u0000LM\u0003\f\u0006\u0000MN\u0005\r\u0000\u0000N_\u0001\u0000\u0000"+
		"\u0000OX\u0005\u0013\u0000\u0000PU\u0003\f\u0006\u0000QR\u0005\u0014\u0000"+
		"\u0000RT\u0003\f\u0006\u0000SQ\u0001\u0000\u0000\u0000TW\u0001\u0000\u0000"+
		"\u0000US\u0001\u0000\u0000\u0000UV\u0001\u0000\u0000\u0000VY\u0001\u0000"+
		"\u0000\u0000WU\u0001\u0000\u0000\u0000XP\u0001\u0000\u0000\u0000XY\u0001"+
		"\u0000\u0000\u0000YZ\u0001\u0000\u0000\u0000Z_\u0005\u0015\u0000\u0000"+
		"[_\u0005\"\u0000\u0000\\_\u0005 \u0000\u0000]_\u0005!\u0000\u0000^C\u0001"+
		"\u0000\u0000\u0000^H\u0001\u0000\u0000\u0000^J\u0001\u0000\u0000\u0000"+
		"^O\u0001\u0000\u0000\u0000^[\u0001\u0000\u0000\u0000^\\\u0001\u0000\u0000"+
		"\u0000^]\u0001\u0000\u0000\u0000_j\u0001\u0000\u0000\u0000`a\n\u0007\u0000"+
		"\u0000ab\u0007\u0000\u0000\u0000bi\u0003\f\u0006\bcd\n\u0004\u0000\u0000"+
		"de\u0005\u0013\u0000\u0000ef\u0003\f\u0006\u0000fg\u0005\u0015\u0000\u0000"+
		"gi\u0001\u0000\u0000\u0000h`\u0001\u0000\u0000\u0000hc\u0001\u0000\u0000"+
		"\u0000il\u0001\u0000\u0000\u0000jh\u0001\u0000\u0000\u0000jk\u0001\u0000"+
		"\u0000\u0000k\r\u0001\u0000\u0000\u0000lj\u0001\u0000\u0000\u0000mn\u0005"+
		"\u0016\u0000\u0000no\u0005\u0017\u0000\u0000o\u0083\u0003\f\u0006\u0000"+
		"pq\u0005\u0018\u0000\u0000qr\u0005\u0019\u0000\u0000rs\u0003\f\u0006\u0000"+
		"st\u0005\u001a\u0000\u0000tu\u0003\f\u0006\u0000u\u0083\u0001\u0000\u0000"+
		"\u0000vw\u0005\u001b\u0000\u0000wx\u0005\u0019\u0000\u0000xy\u0003\f\u0006"+
		"\u0000yz\u0005\u001a\u0000\u0000z{\u0003\f\u0006\u0000{\u0083\u0001\u0000"+
		"\u0000\u0000|}\u0005\u001c\u0000\u0000}~\u0005\u0019\u0000\u0000~\u007f"+
		"\u0003\f\u0006\u0000\u007f\u0080\u0005\u001a\u0000\u0000\u0080\u0081\u0003"+
		"\f\u0006\u0000\u0081\u0083\u0001\u0000\u0000\u0000\u0082m\u0001\u0000"+
		"\u0000\u0000\u0082p\u0001\u0000\u0000\u0000\u0082v\u0001\u0000\u0000\u0000"+
		"\u0082|\u0001\u0000\u0000\u0000\u0083\u000f\u0001\u0000\u0000\u0000\u0084"+
		"\u008a\u0005\u001d\u0000\u0000\u0085\u008a\u0005\u001e\u0000\u0000\u0086"+
		"\u0087\u0005\n\u0000\u0000\u0087\u0088\u0005\u001f\u0000\u0000\u0088\u008a"+
		"\u0003\u0010\b\u0000\u0089\u0084\u0001\u0000\u0000\u0000\u0089\u0085\u0001"+
		"\u0000\u0000\u0000\u0089\u0086\u0001\u0000\u0000\u0000\u008a\u0011\u0001"+
		"\u0000\u0000\u0000\f\u0015\u001e!(<UX^hj\u0082\u0089";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
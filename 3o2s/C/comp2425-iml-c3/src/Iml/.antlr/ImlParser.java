// Generated from /home/joaquim/Documents/UA/C/Projeto-github/comp2425-iml-c3/src/Iml/Iml.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class ImlParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, T__51=52, 
		T__52=53, T__53=54, T__54=55, T__55=56, T__56=57, T__57=58, T__58=59, 
		T__59=60, T__60=61, T__61=62, T__62=63, ID=64, STRING=65, PERCENTAGE=66, 
		NUMBER=67, COMMENT=68, WS=69;
	public static final int
		RULE_program = 0, RULE_command = 1, RULE_imageCommand = 2, RULE_assignStat = 3, 
		RULE_controlCommand = 4, RULE_outputStat = 5, RULE_listAppend = 6, RULE_expr = 7, 
		RULE_types = 8;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "command", "imageCommand", "assignStat", "controlCommand", 
			"outputStat", "listAppend", "expr", "types"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'draw'", "'store'", "'into'", "'is'", "'if'", "'then'", "'else'", 
			"'done'", "'until'", "'do'", "'for'", "'percentage'", "'image'", "'within'", 
			"'output'", "'append'", "'('", "')'", "'load'", "'from'", "'run'", "'columns'", 
			"'rows'", "'of'", "'.*'", "'.+'", "'.-'", "'.>'", "'.<'", "'-*'", "'|*'", 
			"'+*'", "'-'", "'|'", "'+'", "'*'", "'/'", "'%'", "'!='", "'=='", "'<'", 
			"'<='", "'>'", "'>='", "'open'", "'close'", "'erode'", "'dilate'", "'top hat'", 
			"'black hat'", "'by'", "'any'", "'pixel'", "'all'", "'count'", "'in'", 
			"'string'", "'number'", "'read'", "'['", "','", "']'", "'list'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, "ID", "STRING", "PERCENTAGE", "NUMBER", "COMMENT", 
			"WS"
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
	public String getGrammarFileName() { return "Iml.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public ImlParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(ImlParser.EOF, 0); }
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
			while (((((_la - 1)) & ~0x3f) == 0 && ((1L << (_la - 1)) & -4395513236313580271L) != 0)) {
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
		public ImageCommandContext imageCommand() {
			return getRuleContext(ImageCommandContext.class,0);
		}
		public AssignStatContext assignStat() {
			return getRuleContext(AssignStatContext.class,0);
		}
		public ControlCommandContext controlCommand() {
			return getRuleContext(ControlCommandContext.class,0);
		}
		public OutputStatContext outputStat() {
			return getRuleContext(OutputStatContext.class,0);
		}
		public ListAppendContext listAppend() {
			return getRuleContext(ListAppendContext.class,0);
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
			setState(31);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(26);
				imageCommand();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(27);
				assignStat();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(28);
				controlCommand();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(29);
				outputStat();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(30);
				listAppend();
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
	public static class ImageCommandContext extends ParserRuleContext {
		public ImageCommandContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_imageCommand; }
	 
		public ImageCommandContext() { }
		public void copyFrom(ImageCommandContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StoreImageContext extends ImageCommandContext {
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
		public TerminalNode STRING() { return getToken(ImlParser.STRING, 0); }
		public StoreImageContext(ImageCommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PlotImageContext extends ImageCommandContext {
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
		public PlotImageContext(ImageCommandContext ctx) { copyFrom(ctx); }
	}

	public final ImageCommandContext imageCommand() throws RecognitionException {
		ImageCommandContext _localctx = new ImageCommandContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_imageCommand);
		try {
			setState(39);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
				_localctx = new PlotImageContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(33);
				match(T__0);
				setState(34);
				match(ID);
				}
				break;
			case ID:
				_localctx = new StoreImageContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(35);
				match(ID);
				setState(36);
				match(T__1);
				setState(37);
				match(T__2);
				setState(38);
				match(STRING);
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
	public static class AssignStatContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
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
		enterRule(_localctx, 6, RULE_assignStat);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(42);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -8791026472627195904L) != 0)) {
				{
				setState(41);
				types();
				}
			}

			setState(44);
			match(ID);
			setState(45);
			match(T__3);
			setState(46);
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
	public static class ControlCommandContext extends ParserRuleContext {
		public ControlCommandContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_controlCommand; }
	 
		public ControlCommandContext() { }
		public void copyFrom(ControlCommandContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfStatContext extends ControlCommandContext {
		public CommandContext command;
		public List<CommandContext> thenCommands = new ArrayList<CommandContext>();
		public List<CommandContext> elseCommands = new ArrayList<CommandContext>();
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<CommandContext> command() {
			return getRuleContexts(CommandContext.class);
		}
		public CommandContext command(int i) {
			return getRuleContext(CommandContext.class,i);
		}
		public IfStatContext(ControlCommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class UntilStatContext extends ControlCommandContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<CommandContext> command() {
			return getRuleContexts(CommandContext.class);
		}
		public CommandContext command(int i) {
			return getRuleContext(CommandContext.class,i);
		}
		public UntilStatContext(ControlCommandContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForStatContext extends ControlCommandContext {
		public Token varType;
		public List<TerminalNode> ID() { return getTokens(ImlParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(ImlParser.ID, i);
		}
		public List<CommandContext> command() {
			return getRuleContexts(CommandContext.class);
		}
		public CommandContext command(int i) {
			return getRuleContext(CommandContext.class,i);
		}
		public ForStatContext(ControlCommandContext ctx) { copyFrom(ctx); }
	}

	public final ControlCommandContext controlCommand() throws RecognitionException {
		ControlCommandContext _localctx = new ControlCommandContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_controlCommand);
		int _la;
		try {
			setState(94);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__4:
				_localctx = new IfStatContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(48);
				match(T__4);
				setState(49);
				expr(0);
				setState(50);
				match(T__5);
				setState(54);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (((((_la - 1)) & ~0x3f) == 0 && ((1L << (_la - 1)) & -4395513236313580271L) != 0)) {
					{
					{
					setState(51);
					((IfStatContext)_localctx).command = command();
					((IfStatContext)_localctx).thenCommands.add(((IfStatContext)_localctx).command);
					}
					}
					setState(56);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(64);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__6) {
					{
					setState(57);
					match(T__6);
					setState(61);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (((((_la - 1)) & ~0x3f) == 0 && ((1L << (_la - 1)) & -4395513236313580271L) != 0)) {
						{
						{
						setState(58);
						((IfStatContext)_localctx).command = command();
						((IfStatContext)_localctx).elseCommands.add(((IfStatContext)_localctx).command);
						}
						}
						setState(63);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(66);
				match(T__7);
				}
				break;
			case T__8:
				_localctx = new UntilStatContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(68);
				match(T__8);
				setState(69);
				expr(0);
				setState(70);
				match(T__9);
				setState(74);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (((((_la - 1)) & ~0x3f) == 0 && ((1L << (_la - 1)) & -4395513236313580271L) != 0)) {
					{
					{
					setState(71);
					command();
					}
					}
					setState(76);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(77);
				match(T__7);
				}
				break;
			case T__10:
				_localctx = new ForStatContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(79);
				match(T__10);
				setState(81);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__11 || _la==T__12) {
					{
					setState(80);
					((ForStatContext)_localctx).varType = _input.LT(1);
					_la = _input.LA(1);
					if ( !(_la==T__11 || _la==T__12) ) {
						((ForStatContext)_localctx).varType = (Token)_errHandler.recoverInline(this);
					}
					else {
						if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
						_errHandler.reportMatch(this);
						consume();
					}
					}
				}

				setState(83);
				match(ID);
				setState(84);
				match(T__13);
				setState(85);
				match(ID);
				setState(86);
				match(T__9);
				setState(90);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (((((_la - 1)) & ~0x3f) == 0 && ((1L << (_la - 1)) & -4395513236313580271L) != 0)) {
					{
					{
					setState(87);
					command();
					}
					}
					setState(92);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(93);
				match(T__7);
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
	public static class OutputStatContext extends ParserRuleContext {
		public OutputStatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_outputStat; }
	 
		public OutputStatContext() { }
		public void copyFrom(OutputStatContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OutputStringContext extends OutputStatContext {
		public TerminalNode STRING() { return getToken(ImlParser.STRING, 0); }
		public OutputStringContext(OutputStatContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OutputImageContext extends OutputStatContext {
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
		public OutputImageContext(OutputStatContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OutputExpressionContext extends OutputStatContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public OutputExpressionContext(OutputStatContext ctx) { copyFrom(ctx); }
	}

	public final OutputStatContext outputStat() throws RecognitionException {
		OutputStatContext _localctx = new OutputStatContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_outputStat);
		try {
			setState(102);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				_localctx = new OutputImageContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(96);
				match(T__14);
				setState(97);
				match(ID);
				}
				break;
			case 2:
				_localctx = new OutputStringContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(98);
				match(T__14);
				setState(99);
				match(STRING);
				}
				break;
			case 3:
				_localctx = new OutputExpressionContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(100);
				match(T__14);
				setState(101);
				expr(0);
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
	public static class ListAppendContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ListAppendContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listAppend; }
	}

	public final ListAppendContext listAppend() throws RecognitionException {
		ListAppendContext _localctx = new ListAppendContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_listAppend);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(104);
			match(ID);
			setState(105);
			match(T__15);
			setState(106);
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
	public static class RunFromReadExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public RunFromReadExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ScaleBinaryOpContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ScaleBinaryOpContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PixelBinaryOpLpContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PixelBinaryOpLpContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AllPixelExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AllPixelExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListLiteralContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ListLiteralContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FlipImageExprContext extends ExprContext {
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public FlipImageExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CountPixelExprContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public CountPixelExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParenExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParenExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AnyPixelExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AnyPixelExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VariableExprContext extends ExprContext {
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
		public VariableExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LoadImageExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public LoadImageExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ConvertExprContext extends ExprContext {
		public Token type;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ConvertExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringLiteralContext extends ExprContext {
		public TerminalNode STRING() { return getToken(ImlParser.STRING, 0); }
		public StringLiteralContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PixelBinaryOpHpContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public PixelBinaryOpHpContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ImageColumnsRowsExprContext extends ExprContext {
		public Token scaletype;
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
		public ImageColumnsRowsExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReadInputContext extends ExprContext {
		public TerminalNode STRING() { return getToken(ImlParser.STRING, 0); }
		public ReadInputContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MorphExpressionContext extends ExprContext {
		public Token morphOp;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode ID() { return getToken(ImlParser.ID, 0); }
		public MorphExpressionContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PercentageLiteralContext extends ExprContext {
		public TerminalNode PERCENTAGE() { return getToken(ImlParser.PERCENTAGE, 0); }
		public PercentageLiteralContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NumberLiteralContext extends ExprContext {
		public TerminalNode NUMBER() { return getToken(ImlParser.NUMBER, 0); }
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
		int _startState = 14;
		enterRecursionRule(_localctx, 14, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(159);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__16:
				{
				_localctx = new ParenExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(109);
				match(T__16);
				setState(110);
				expr(0);
				setState(111);
				match(T__17);
				}
				break;
			case T__18:
				{
				_localctx = new LoadImageExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(113);
				match(T__18);
				setState(114);
				match(T__19);
				setState(115);
				expr(19);
				}
				break;
			case T__20:
				{
				_localctx = new RunFromReadExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(116);
				match(T__20);
				setState(117);
				match(T__19);
				setState(118);
				expr(18);
				}
				break;
			case T__21:
			case T__22:
				{
				_localctx = new ImageColumnsRowsExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(119);
				((ImageColumnsRowsExprContext)_localctx).scaletype = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__21 || _la==T__22) ) {
					((ImageColumnsRowsExprContext)_localctx).scaletype = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(120);
				match(T__23);
				setState(121);
				match(ID);
				}
				break;
			case T__32:
			case T__33:
			case T__34:
				{
				_localctx = new FlipImageExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(122);
				((FlipImageExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 60129542144L) != 0)) ) {
					((FlipImageExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(123);
				expr(13);
				}
				break;
			case T__51:
				{
				_localctx = new AnyPixelExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(124);
				match(T__51);
				setState(125);
				match(T__52);
				setState(126);
				expr(10);
				}
				break;
			case T__53:
				{
				_localctx = new AllPixelExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(127);
				match(T__53);
				setState(128);
				match(T__52);
				setState(129);
				expr(9);
				}
				break;
			case T__54:
				{
				_localctx = new CountPixelExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(130);
				match(T__54);
				setState(131);
				match(T__52);
				setState(132);
				expr(0);
				setState(133);
				match(T__55);
				setState(134);
				expr(8);
				}
				break;
			case T__56:
			case T__57:
				{
				_localctx = new ConvertExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(136);
				((ConvertExprContext)_localctx).type = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__56 || _la==T__57) ) {
					((ConvertExprContext)_localctx).type = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(137);
				match(T__16);
				setState(138);
				expr(0);
				setState(139);
				match(T__17);
				}
				break;
			case T__58:
				{
				_localctx = new ReadInputContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(141);
				match(T__58);
				setState(142);
				match(STRING);
				}
				break;
			case ID:
				{
				_localctx = new VariableExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(143);
				match(ID);
				}
				break;
			case NUMBER:
				{
				_localctx = new NumberLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(144);
				match(NUMBER);
				}
				break;
			case PERCENTAGE:
				{
				_localctx = new PercentageLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(145);
				match(PERCENTAGE);
				}
				break;
			case STRING:
				{
				_localctx = new StringLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(146);
				match(STRING);
				}
				break;
			case T__59:
				{
				_localctx = new ListLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(147);
				match(T__59);
				setState(156);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((((_la - 17)) & ~0x3f) == 0 && ((1L << (_la - 17)) & 2128001676804213L) != 0)) {
					{
					setState(148);
					expr(0);
					setState(153);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__60) {
						{
						{
						setState(149);
						match(T__60);
						setState(150);
						expr(0);
						}
						}
						setState(155);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(158);
				match(T__61);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(179);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,16,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(177);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
					case 1:
						{
						_localctx = new PixelBinaryOpHpContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(161);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(162);
						match(T__24);
						setState(163);
						expr(17);
						}
						break;
					case 2:
						{
						_localctx = new PixelBinaryOpLpContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(164);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(165);
						((PixelBinaryOpLpContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 1006632960L) != 0)) ) {
							((PixelBinaryOpLpContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(166);
						expr(16);
						}
						break;
					case 3:
						{
						_localctx = new ScaleBinaryOpContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(167);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(168);
						((ScaleBinaryOpContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 7516192768L) != 0)) ) {
							((ScaleBinaryOpContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(169);
						expr(15);
						}
						break;
					case 4:
						{
						_localctx = new BinaryOpContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(170);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(171);
						((BinaryOpContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 35158602285056L) != 0)) ) {
							((BinaryOpContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(172);
						expr(13);
						}
						break;
					case 5:
						{
						_localctx = new MorphExpressionContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(173);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(174);
						((MorphExpressionContext)_localctx).morphOp = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 2216615441596416L) != 0)) ) {
							((MorphExpressionContext)_localctx).morphOp = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(175);
						match(T__50);
						setState(176);
						match(ID);
						}
						break;
					}
					} 
				}
				setState(181);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,16,_ctx);
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
			setState(189);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__57:
				enterOuterAlt(_localctx, 1);
				{
				setState(182);
				match(T__57);
				}
				break;
			case T__12:
				enterOuterAlt(_localctx, 2);
				{
				setState(183);
				match(T__12);
				}
				break;
			case T__62:
				enterOuterAlt(_localctx, 3);
				{
				setState(184);
				match(T__62);
				setState(185);
				match(T__23);
				{
				setState(186);
				types();
				}
				}
				break;
			case T__11:
				enterOuterAlt(_localctx, 4);
				{
				setState(187);
				match(T__11);
				}
				break;
			case T__56:
				enterOuterAlt(_localctx, 5);
				{
				setState(188);
				match(T__56);
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
		case 7:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 16);
		case 1:
			return precpred(_ctx, 15);
		case 2:
			return precpred(_ctx, 14);
		case 3:
			return precpred(_ctx, 12);
		case 4:
			return precpred(_ctx, 11);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001E\u00c0\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0001\u0000\u0005\u0000\u0014\b\u0000\n\u0000\f\u0000\u0017"+
		"\t\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0003\u0001 \b\u0001\u0001\u0002\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0003\u0002(\b\u0002\u0001"+
		"\u0003\u0003\u0003+\b\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0005\u00045\b"+
		"\u0004\n\u0004\f\u00048\t\u0004\u0001\u0004\u0001\u0004\u0005\u0004<\b"+
		"\u0004\n\u0004\f\u0004?\t\u0004\u0003\u0004A\b\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0005\u0004I\b"+
		"\u0004\n\u0004\f\u0004L\t\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0003\u0004R\b\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0005\u0004Y\b\u0004\n\u0004\f\u0004\\\t\u0004\u0001"+
		"\u0004\u0003\u0004_\b\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0003\u0005g\b\u0005\u0001\u0006\u0001"+
		"\u0006\u0001\u0006\u0001\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0005\u0007\u0098\b\u0007\n"+
		"\u0007\f\u0007\u009b\t\u0007\u0003\u0007\u009d\b\u0007\u0001\u0007\u0003"+
		"\u0007\u00a0\b\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0005"+
		"\u0007\u00b2\b\u0007\n\u0007\f\u0007\u00b5\t\u0007\u0001\b\u0001\b\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0003\b\u00be\b\b\u0001\b\u0000\u0001"+
		"\u000e\t\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0000\b\u0001\u0000"+
		"\f\r\u0001\u0000\u0016\u0017\u0001\u0000!#\u0001\u00009:\u0001\u0000\u001a"+
		"\u001d\u0001\u0000\u001e \u0002\u0000!!#,\u0001\u0000-2\u00e0\u0000\u0015"+
		"\u0001\u0000\u0000\u0000\u0002\u001f\u0001\u0000\u0000\u0000\u0004\'\u0001"+
		"\u0000\u0000\u0000\u0006*\u0001\u0000\u0000\u0000\b^\u0001\u0000\u0000"+
		"\u0000\nf\u0001\u0000\u0000\u0000\fh\u0001\u0000\u0000\u0000\u000e\u009f"+
		"\u0001\u0000\u0000\u0000\u0010\u00bd\u0001\u0000\u0000\u0000\u0012\u0014"+
		"\u0003\u0002\u0001\u0000\u0013\u0012\u0001\u0000\u0000\u0000\u0014\u0017"+
		"\u0001\u0000\u0000\u0000\u0015\u0013\u0001\u0000\u0000\u0000\u0015\u0016"+
		"\u0001\u0000\u0000\u0000\u0016\u0018\u0001\u0000\u0000\u0000\u0017\u0015"+
		"\u0001\u0000\u0000\u0000\u0018\u0019\u0005\u0000\u0000\u0001\u0019\u0001"+
		"\u0001\u0000\u0000\u0000\u001a \u0003\u0004\u0002\u0000\u001b \u0003\u0006"+
		"\u0003\u0000\u001c \u0003\b\u0004\u0000\u001d \u0003\n\u0005\u0000\u001e"+
		" \u0003\f\u0006\u0000\u001f\u001a\u0001\u0000\u0000\u0000\u001f\u001b"+
		"\u0001\u0000\u0000\u0000\u001f\u001c\u0001\u0000\u0000\u0000\u001f\u001d"+
		"\u0001\u0000\u0000\u0000\u001f\u001e\u0001\u0000\u0000\u0000 \u0003\u0001"+
		"\u0000\u0000\u0000!\"\u0005\u0001\u0000\u0000\"(\u0005@\u0000\u0000#$"+
		"\u0005@\u0000\u0000$%\u0005\u0002\u0000\u0000%&\u0005\u0003\u0000\u0000"+
		"&(\u0005A\u0000\u0000\'!\u0001\u0000\u0000\u0000\'#\u0001\u0000\u0000"+
		"\u0000(\u0005\u0001\u0000\u0000\u0000)+\u0003\u0010\b\u0000*)\u0001\u0000"+
		"\u0000\u0000*+\u0001\u0000\u0000\u0000+,\u0001\u0000\u0000\u0000,-\u0005"+
		"@\u0000\u0000-.\u0005\u0004\u0000\u0000./\u0003\u000e\u0007\u0000/\u0007"+
		"\u0001\u0000\u0000\u000001\u0005\u0005\u0000\u000012\u0003\u000e\u0007"+
		"\u000026\u0005\u0006\u0000\u000035\u0003\u0002\u0001\u000043\u0001\u0000"+
		"\u0000\u000058\u0001\u0000\u0000\u000064\u0001\u0000\u0000\u000067\u0001"+
		"\u0000\u0000\u00007@\u0001\u0000\u0000\u000086\u0001\u0000\u0000\u0000"+
		"9=\u0005\u0007\u0000\u0000:<\u0003\u0002\u0001\u0000;:\u0001\u0000\u0000"+
		"\u0000<?\u0001\u0000\u0000\u0000=;\u0001\u0000\u0000\u0000=>\u0001\u0000"+
		"\u0000\u0000>A\u0001\u0000\u0000\u0000?=\u0001\u0000\u0000\u0000@9\u0001"+
		"\u0000\u0000\u0000@A\u0001\u0000\u0000\u0000AB\u0001\u0000\u0000\u0000"+
		"BC\u0005\b\u0000\u0000C_\u0001\u0000\u0000\u0000DE\u0005\t\u0000\u0000"+
		"EF\u0003\u000e\u0007\u0000FJ\u0005\n\u0000\u0000GI\u0003\u0002\u0001\u0000"+
		"HG\u0001\u0000\u0000\u0000IL\u0001\u0000\u0000\u0000JH\u0001\u0000\u0000"+
		"\u0000JK\u0001\u0000\u0000\u0000KM\u0001\u0000\u0000\u0000LJ\u0001\u0000"+
		"\u0000\u0000MN\u0005\b\u0000\u0000N_\u0001\u0000\u0000\u0000OQ\u0005\u000b"+
		"\u0000\u0000PR\u0007\u0000\u0000\u0000QP\u0001\u0000\u0000\u0000QR\u0001"+
		"\u0000\u0000\u0000RS\u0001\u0000\u0000\u0000ST\u0005@\u0000\u0000TU\u0005"+
		"\u000e\u0000\u0000UV\u0005@\u0000\u0000VZ\u0005\n\u0000\u0000WY\u0003"+
		"\u0002\u0001\u0000XW\u0001\u0000\u0000\u0000Y\\\u0001\u0000\u0000\u0000"+
		"ZX\u0001\u0000\u0000\u0000Z[\u0001\u0000\u0000\u0000[]\u0001\u0000\u0000"+
		"\u0000\\Z\u0001\u0000\u0000\u0000]_\u0005\b\u0000\u0000^0\u0001\u0000"+
		"\u0000\u0000^D\u0001\u0000\u0000\u0000^O\u0001\u0000\u0000\u0000_\t\u0001"+
		"\u0000\u0000\u0000`a\u0005\u000f\u0000\u0000ag\u0005@\u0000\u0000bc\u0005"+
		"\u000f\u0000\u0000cg\u0005A\u0000\u0000de\u0005\u000f\u0000\u0000eg\u0003"+
		"\u000e\u0007\u0000f`\u0001\u0000\u0000\u0000fb\u0001\u0000\u0000\u0000"+
		"fd\u0001\u0000\u0000\u0000g\u000b\u0001\u0000\u0000\u0000hi\u0005@\u0000"+
		"\u0000ij\u0005\u0010\u0000\u0000jk\u0003\u000e\u0007\u0000k\r\u0001\u0000"+
		"\u0000\u0000lm\u0006\u0007\uffff\uffff\u0000mn\u0005\u0011\u0000\u0000"+
		"no\u0003\u000e\u0007\u0000op\u0005\u0012\u0000\u0000p\u00a0\u0001\u0000"+
		"\u0000\u0000qr\u0005\u0013\u0000\u0000rs\u0005\u0014\u0000\u0000s\u00a0"+
		"\u0003\u000e\u0007\u0013tu\u0005\u0015\u0000\u0000uv\u0005\u0014\u0000"+
		"\u0000v\u00a0\u0003\u000e\u0007\u0012wx\u0007\u0001\u0000\u0000xy\u0005"+
		"\u0018\u0000\u0000y\u00a0\u0005@\u0000\u0000z{\u0007\u0002\u0000\u0000"+
		"{\u00a0\u0003\u000e\u0007\r|}\u00054\u0000\u0000}~\u00055\u0000\u0000"+
		"~\u00a0\u0003\u000e\u0007\n\u007f\u0080\u00056\u0000\u0000\u0080\u0081"+
		"\u00055\u0000\u0000\u0081\u00a0\u0003\u000e\u0007\t\u0082\u0083\u0005"+
		"7\u0000\u0000\u0083\u0084\u00055\u0000\u0000\u0084\u0085\u0003\u000e\u0007"+
		"\u0000\u0085\u0086\u00058\u0000\u0000\u0086\u0087\u0003\u000e\u0007\b"+
		"\u0087\u00a0\u0001\u0000\u0000\u0000\u0088\u0089\u0007\u0003\u0000\u0000"+
		"\u0089\u008a\u0005\u0011\u0000\u0000\u008a\u008b\u0003\u000e\u0007\u0000"+
		"\u008b\u008c\u0005\u0012\u0000\u0000\u008c\u00a0\u0001\u0000\u0000\u0000"+
		"\u008d\u008e\u0005;\u0000\u0000\u008e\u00a0\u0005A\u0000\u0000\u008f\u00a0"+
		"\u0005@\u0000\u0000\u0090\u00a0\u0005C\u0000\u0000\u0091\u00a0\u0005B"+
		"\u0000\u0000\u0092\u00a0\u0005A\u0000\u0000\u0093\u009c\u0005<\u0000\u0000"+
		"\u0094\u0099\u0003\u000e\u0007\u0000\u0095\u0096\u0005=\u0000\u0000\u0096"+
		"\u0098\u0003\u000e\u0007\u0000\u0097\u0095\u0001\u0000\u0000\u0000\u0098"+
		"\u009b\u0001\u0000\u0000\u0000\u0099\u0097\u0001\u0000\u0000\u0000\u0099"+
		"\u009a\u0001\u0000\u0000\u0000\u009a\u009d\u0001\u0000\u0000\u0000\u009b"+
		"\u0099\u0001\u0000\u0000\u0000\u009c\u0094\u0001\u0000\u0000\u0000\u009c"+
		"\u009d\u0001\u0000\u0000\u0000\u009d\u009e\u0001\u0000\u0000\u0000\u009e"+
		"\u00a0\u0005>\u0000\u0000\u009fl\u0001\u0000\u0000\u0000\u009fq\u0001"+
		"\u0000\u0000\u0000\u009ft\u0001\u0000\u0000\u0000\u009fw\u0001\u0000\u0000"+
		"\u0000\u009fz\u0001\u0000\u0000\u0000\u009f|\u0001\u0000\u0000\u0000\u009f"+
		"\u007f\u0001\u0000\u0000\u0000\u009f\u0082\u0001\u0000\u0000\u0000\u009f"+
		"\u0088\u0001\u0000\u0000\u0000\u009f\u008d\u0001\u0000\u0000\u0000\u009f"+
		"\u008f\u0001\u0000\u0000\u0000\u009f\u0090\u0001\u0000\u0000\u0000\u009f"+
		"\u0091\u0001\u0000\u0000\u0000\u009f\u0092\u0001\u0000\u0000\u0000\u009f"+
		"\u0093\u0001\u0000\u0000\u0000\u00a0\u00b3\u0001\u0000\u0000\u0000\u00a1"+
		"\u00a2\n\u0010\u0000\u0000\u00a2\u00a3\u0005\u0019\u0000\u0000\u00a3\u00b2"+
		"\u0003\u000e\u0007\u0011\u00a4\u00a5\n\u000f\u0000\u0000\u00a5\u00a6\u0007"+
		"\u0004\u0000\u0000\u00a6\u00b2\u0003\u000e\u0007\u0010\u00a7\u00a8\n\u000e"+
		"\u0000\u0000\u00a8\u00a9\u0007\u0005\u0000\u0000\u00a9\u00b2\u0003\u000e"+
		"\u0007\u000f\u00aa\u00ab\n\f\u0000\u0000\u00ab\u00ac\u0007\u0006\u0000"+
		"\u0000\u00ac\u00b2\u0003\u000e\u0007\r\u00ad\u00ae\n\u000b\u0000\u0000"+
		"\u00ae\u00af\u0007\u0007\u0000\u0000\u00af\u00b0\u00053\u0000\u0000\u00b0"+
		"\u00b2\u0005@\u0000\u0000\u00b1\u00a1\u0001\u0000\u0000\u0000\u00b1\u00a4"+
		"\u0001\u0000\u0000\u0000\u00b1\u00a7\u0001\u0000\u0000\u0000\u00b1\u00aa"+
		"\u0001\u0000\u0000\u0000\u00b1\u00ad\u0001\u0000\u0000\u0000\u00b2\u00b5"+
		"\u0001\u0000\u0000\u0000\u00b3\u00b1\u0001\u0000\u0000\u0000\u00b3\u00b4"+
		"\u0001\u0000\u0000\u0000\u00b4\u000f\u0001\u0000\u0000\u0000\u00b5\u00b3"+
		"\u0001\u0000\u0000\u0000\u00b6\u00be\u0005:\u0000\u0000\u00b7\u00be\u0005"+
		"\r\u0000\u0000\u00b8\u00b9\u0005?\u0000\u0000\u00b9\u00ba\u0005\u0018"+
		"\u0000\u0000\u00ba\u00be\u0003\u0010\b\u0000\u00bb\u00be\u0005\f\u0000"+
		"\u0000\u00bc\u00be\u00059\u0000\u0000\u00bd\u00b6\u0001\u0000\u0000\u0000"+
		"\u00bd\u00b7\u0001\u0000\u0000\u0000\u00bd\u00b8\u0001\u0000\u0000\u0000"+
		"\u00bd\u00bb\u0001\u0000\u0000\u0000\u00bd\u00bc\u0001\u0000\u0000\u0000"+
		"\u00be\u0011\u0001\u0000\u0000\u0000\u0012\u0015\u001f\'*6=@JQZ^f\u0099"+
		"\u009c\u009f\u00b1\u00b3\u00bd";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}
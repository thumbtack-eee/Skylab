// Generated from /Users/eee/Thumbtack/antlr4-grammars/graphql/GraphQL.g4 by ANTLR 4.7.2
import Antlr4

open class GraphQLLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = GraphQLLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(GraphQLLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, 
            T__8=9, T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, 
            T__15=16, T__16=17, STRING=18, BOOLEAN=19, NAME=20, NUMBER=21, 
            WS=22

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
		"STRING", "BOOLEAN", "NAME", "ESC", "UNICODE", "HEX", "NUMBER", "INT", 
		"EXP", "WS"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'{'", "','", "'}'", "'query'", "'mutation'", "':'", "'('", "')'", 
		"'...'", "'on'", "'fragment'", "'@'", "'$'", "'='", "'['", "']'", "'!'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, nil, nil, "STRING", "BOOLEAN", "NAME", "NUMBER", "WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return GraphQLLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, GraphQLLexer._ATN, GraphQLLexer._decisionToDFA, GraphQLLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "GraphQL.g4" }

	override open
	func getRuleNames() -> [String] { return GraphQLLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return GraphQLLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return GraphQLLexer.channelNames }

	override open
	func getModeNames() -> [String] { return GraphQLLexer.modeNames }

	override open
	func getATN() -> ATN { return GraphQLLexer._ATN }


	public
	static let _serializedATN: String = GraphQLLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}
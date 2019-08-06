// Generated from /Users/eee/Thumbtack/antlr4-grammars/graphql/GraphQL.g4 by ANTLR 4.7.2
import Antlr4

open class GraphQLParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = GraphQLParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(GraphQLParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, 
                 T__6 = 7, T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, 
                 T__12 = 13, T__13 = 14, T__14 = 15, T__15 = 16, T__16 = 17, 
                 STRING = 18, BOOLEAN = 19, NAME = 20, NUMBER = 21, WS = 22
	}

	public
	static let RULE_document = 0, RULE_definition = 1, RULE_operationDefinition = 2, 
            RULE_selectionSet = 3, RULE_operationType = 4, RULE_selection = 5, 
            RULE_field = 6, RULE_fieldName = 7, RULE_alias = 8, RULE_arguments = 9, 
            RULE_argument = 10, RULE_fragmentSpread = 11, RULE_inlineFragment = 12, 
            RULE_fragmentDefinition = 13, RULE_fragmentName = 14, RULE_directives = 15, 
            RULE_directive = 16, RULE_typeCondition = 17, RULE_variableDefinitions = 18, 
            RULE_variableDefinition = 19, RULE_variable = 20, RULE_defaultValue = 21, 
            RULE_valueOrVariable = 22, RULE_value = 23, RULE_type = 24, 
            RULE_typeName = 25, RULE_listType = 26, RULE_nonNullType = 27, 
            RULE_array = 28

	public
	static let ruleNames: [String] = [
		"document", "definition", "operationDefinition", "selectionSet", "operationType", 
		"selection", "field", "fieldName", "alias", "arguments", "argument", "fragmentSpread", 
		"inlineFragment", "fragmentDefinition", "fragmentName", "directives", 
		"directive", "typeCondition", "variableDefinitions", "variableDefinition", 
		"variable", "defaultValue", "valueOrVariable", "value", "type", "typeName", 
		"listType", "nonNullType", "array"
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
	func getGrammarFileName() -> String { return "GraphQL.g4" }

	override open
	func getRuleNames() -> [String] { return GraphQLParser.ruleNames }

	override open
	func getSerializedATN() -> String { return GraphQLParser._serializedATN }

	override open
	func getATN() -> ATN { return GraphQLParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return GraphQLParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,GraphQLParser._ATN,GraphQLParser._decisionToDFA, GraphQLParser._sharedContextCache)
	}


	public class DocumentContext: ParserRuleContext {
			open
			func definition() -> [DefinitionContext] {
				return getRuleContexts(DefinitionContext.self)
			}
			open
			func definition(_ i: Int) -> DefinitionContext? {
				return getRuleContext(DefinitionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_document
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDocument(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDocument(self)
			}
		}
	}
	@discardableResult
	 open func document() throws -> DocumentContext {
		var _localctx: DocumentContext = DocumentContext(_ctx, getState())
		try enterRule(_localctx, 0, GraphQLParser.RULE_document)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(59) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(58)
		 		try definition()


		 		setState(61); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.T__0.rawValue,GraphQLParser.Tokens.T__3.rawValue,GraphQLParser.Tokens.T__4.rawValue,GraphQLParser.Tokens.T__10.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DefinitionContext: ParserRuleContext {
			open
			func operationDefinition() -> OperationDefinitionContext? {
				return getRuleContext(OperationDefinitionContext.self, 0)
			}
			open
			func fragmentDefinition() -> FragmentDefinitionContext? {
				return getRuleContext(FragmentDefinitionContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_definition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDefinition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDefinition(self)
			}
		}
	}
	@discardableResult
	 open func definition() throws -> DefinitionContext {
		var _localctx: DefinitionContext = DefinitionContext(_ctx, getState())
		try enterRule(_localctx, 2, GraphQLParser.RULE_definition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(65)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:fallthrough
		 	case .T__3:fallthrough
		 	case .T__4:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(63)
		 		try operationDefinition()

		 		break

		 	case .T__10:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(64)
		 		try fragmentDefinition()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class OperationDefinitionContext: ParserRuleContext {
			open
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
			open
			func operationType() -> OperationTypeContext? {
				return getRuleContext(OperationTypeContext.self, 0)
			}
			open
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
			open
			func variableDefinitions() -> VariableDefinitionsContext? {
				return getRuleContext(VariableDefinitionsContext.self, 0)
			}
			open
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_operationDefinition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterOperationDefinition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitOperationDefinition(self)
			}
		}
	}
	@discardableResult
	 open func operationDefinition() throws -> OperationDefinitionContext {
		var _localctx: OperationDefinitionContext = OperationDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 4, GraphQLParser.RULE_operationDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(78)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(67)
		 		try selectionSet()

		 		break
		 	case .T__3:fallthrough
		 	case .T__4:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(68)
		 		try operationType()
		 		setState(69)
		 		try match(GraphQLParser.Tokens.NAME.rawValue)
		 		setState(71)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__6.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(70)
		 			try variableDefinitions()

		 		}

		 		setState(74)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(73)
		 			try directives()

		 		}

		 		setState(76)
		 		try selectionSet()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SelectionSetContext: ParserRuleContext {
			open
			func selection() -> [SelectionContext] {
				return getRuleContexts(SelectionContext.self)
			}
			open
			func selection(_ i: Int) -> SelectionContext? {
				return getRuleContext(SelectionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_selectionSet
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterSelectionSet(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitSelectionSet(self)
			}
		}
	}
	@discardableResult
	 open func selectionSet() throws -> SelectionSetContext {
		var _localctx: SelectionSetContext = SelectionSetContext(_ctx, getState())
		try enterRule(_localctx, 6, GraphQLParser.RULE_selectionSet)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(80)
		 	try match(GraphQLParser.Tokens.T__0.rawValue)
		 	setState(81)
		 	try selection()
		 	setState(88)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, GraphQLParser.Tokens.T__1.rawValue,GraphQLParser.Tokens.T__8.rawValue,GraphQLParser.Tokens.NAME.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(83)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__1.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(82)
		 			try match(GraphQLParser.Tokens.T__1.rawValue)

		 		}

		 		setState(85)
		 		try selection()


		 		setState(90)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(91)
		 	try match(GraphQLParser.Tokens.T__2.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class OperationTypeContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_operationType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterOperationType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitOperationType(self)
			}
		}
	}
	@discardableResult
	 open func operationType() throws -> OperationTypeContext {
		var _localctx: OperationTypeContext = OperationTypeContext(_ctx, getState())
		try enterRule(_localctx, 8, GraphQLParser.RULE_operationType)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(93)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__3.rawValue || _la == GraphQLParser.Tokens.T__4.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class SelectionContext: ParserRuleContext {
			open
			func field() -> FieldContext? {
				return getRuleContext(FieldContext.self, 0)
			}
			open
			func fragmentSpread() -> FragmentSpreadContext? {
				return getRuleContext(FragmentSpreadContext.self, 0)
			}
			open
			func inlineFragment() -> InlineFragmentContext? {
				return getRuleContext(InlineFragmentContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_selection
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterSelection(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitSelection(self)
			}
		}
	}
	@discardableResult
	 open func selection() throws -> SelectionContext {
		var _localctx: SelectionContext = SelectionContext(_ctx, getState())
		try enterRule(_localctx, 10, GraphQLParser.RULE_selection)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(98)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,7, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(95)
		 		try field()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(96)
		 		try fragmentSpread()

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(97)
		 		try inlineFragment()

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FieldContext: ParserRuleContext {
			open
			func fieldName() -> FieldNameContext? {
				return getRuleContext(FieldNameContext.self, 0)
			}
			open
			func arguments() -> ArgumentsContext? {
				return getRuleContext(ArgumentsContext.self, 0)
			}
			open
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
			open
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_field
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterField(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitField(self)
			}
		}
	}
	@discardableResult
	 open func field() throws -> FieldContext {
		var _localctx: FieldContext = FieldContext(_ctx, getState())
		try enterRule(_localctx, 12, GraphQLParser.RULE_field)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(100)
		 	try fieldName()
		 	setState(102)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__6.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(101)
		 		try arguments()

		 	}

		 	setState(105)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(104)
		 		try directives()

		 	}

		 	setState(108)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__0.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(107)
		 		try selectionSet()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FieldNameContext: ParserRuleContext {
			open
			func alias() -> AliasContext? {
				return getRuleContext(AliasContext.self, 0)
			}
			open
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fieldName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFieldName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFieldName(self)
			}
		}
	}
	@discardableResult
	 open func fieldName() throws -> FieldNameContext {
		var _localctx: FieldNameContext = FieldNameContext(_ctx, getState())
		try enterRule(_localctx, 14, GraphQLParser.RULE_fieldName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(112)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,11, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(110)
		 		try alias()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(111)
		 		try match(GraphQLParser.Tokens.NAME.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class AliasContext: ParserRuleContext {
			open
			func NAME() -> [TerminalNode] {
				return getTokens(GraphQLParser.Tokens.NAME.rawValue)
			}
			open
			func NAME(_ i:Int) -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_alias
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterAlias(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitAlias(self)
			}
		}
	}
	@discardableResult
	 open func alias() throws -> AliasContext {
		var _localctx: AliasContext = AliasContext(_ctx, getState())
		try enterRule(_localctx, 16, GraphQLParser.RULE_alias)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(114)
		 	try match(GraphQLParser.Tokens.NAME.rawValue)
		 	setState(115)
		 	try match(GraphQLParser.Tokens.T__5.rawValue)
		 	setState(116)
		 	try match(GraphQLParser.Tokens.NAME.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgumentsContext: ParserRuleContext {
			open
			func argument() -> [ArgumentContext] {
				return getRuleContexts(ArgumentContext.self)
			}
			open
			func argument(_ i: Int) -> ArgumentContext? {
				return getRuleContext(ArgumentContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_arguments
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterArguments(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitArguments(self)
			}
		}
	}
	@discardableResult
	 open func arguments() throws -> ArgumentsContext {
		var _localctx: ArgumentsContext = ArgumentsContext(_ctx, getState())
		try enterRule(_localctx, 18, GraphQLParser.RULE_arguments)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(118)
		 	try match(GraphQLParser.Tokens.T__6.rawValue)
		 	setState(119)
		 	try argument()
		 	setState(124)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__1.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(120)
		 		try match(GraphQLParser.Tokens.T__1.rawValue)
		 		setState(121)
		 		try argument()


		 		setState(126)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(127)
		 	try match(GraphQLParser.Tokens.T__7.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArgumentContext: ParserRuleContext {
			open
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
			open
			func valueOrVariable() -> ValueOrVariableContext? {
				return getRuleContext(ValueOrVariableContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_argument
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterArgument(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitArgument(self)
			}
		}
	}
	@discardableResult
	 open func argument() throws -> ArgumentContext {
		var _localctx: ArgumentContext = ArgumentContext(_ctx, getState())
		try enterRule(_localctx, 20, GraphQLParser.RULE_argument)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(129)
		 	try match(GraphQLParser.Tokens.NAME.rawValue)
		 	setState(130)
		 	try match(GraphQLParser.Tokens.T__5.rawValue)
		 	setState(131)
		 	try valueOrVariable()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FragmentSpreadContext: ParserRuleContext {
			open
			func fragmentName() -> FragmentNameContext? {
				return getRuleContext(FragmentNameContext.self, 0)
			}
			open
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fragmentSpread
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFragmentSpread(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFragmentSpread(self)
			}
		}
	}
	@discardableResult
	 open func fragmentSpread() throws -> FragmentSpreadContext {
		var _localctx: FragmentSpreadContext = FragmentSpreadContext(_ctx, getState())
		try enterRule(_localctx, 22, GraphQLParser.RULE_fragmentSpread)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(133)
		 	try match(GraphQLParser.Tokens.T__8.rawValue)
		 	setState(134)
		 	try fragmentName()
		 	setState(136)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(135)
		 		try directives()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class InlineFragmentContext: ParserRuleContext {
			open
			func typeCondition() -> TypeConditionContext? {
				return getRuleContext(TypeConditionContext.self, 0)
			}
			open
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
			open
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_inlineFragment
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterInlineFragment(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitInlineFragment(self)
			}
		}
	}
	@discardableResult
	 open func inlineFragment() throws -> InlineFragmentContext {
		var _localctx: InlineFragmentContext = InlineFragmentContext(_ctx, getState())
		try enterRule(_localctx, 24, GraphQLParser.RULE_inlineFragment)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(138)
		 	try match(GraphQLParser.Tokens.T__8.rawValue)
		 	setState(139)
		 	try match(GraphQLParser.Tokens.T__9.rawValue)
		 	setState(140)
		 	try typeCondition()
		 	setState(142)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(141)
		 		try directives()

		 	}

		 	setState(144)
		 	try selectionSet()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FragmentDefinitionContext: ParserRuleContext {
			open
			func fragmentName() -> FragmentNameContext? {
				return getRuleContext(FragmentNameContext.self, 0)
			}
			open
			func typeCondition() -> TypeConditionContext? {
				return getRuleContext(TypeConditionContext.self, 0)
			}
			open
			func selectionSet() -> SelectionSetContext? {
				return getRuleContext(SelectionSetContext.self, 0)
			}
			open
			func directives() -> DirectivesContext? {
				return getRuleContext(DirectivesContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fragmentDefinition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFragmentDefinition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFragmentDefinition(self)
			}
		}
	}
	@discardableResult
	 open func fragmentDefinition() throws -> FragmentDefinitionContext {
		var _localctx: FragmentDefinitionContext = FragmentDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 26, GraphQLParser.RULE_fragmentDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(146)
		 	try match(GraphQLParser.Tokens.T__10.rawValue)
		 	setState(147)
		 	try fragmentName()
		 	setState(148)
		 	try match(GraphQLParser.Tokens.T__9.rawValue)
		 	setState(149)
		 	try typeCondition()
		 	setState(151)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(150)
		 		try directives()

		 	}

		 	setState(153)
		 	try selectionSet()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class FragmentNameContext: ParserRuleContext {
			open
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_fragmentName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterFragmentName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitFragmentName(self)
			}
		}
	}
	@discardableResult
	 open func fragmentName() throws -> FragmentNameContext {
		var _localctx: FragmentNameContext = FragmentNameContext(_ctx, getState())
		try enterRule(_localctx, 28, GraphQLParser.RULE_fragmentName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(155)
		 	try match(GraphQLParser.Tokens.NAME.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DirectivesContext: ParserRuleContext {
			open
			func directive() -> [DirectiveContext] {
				return getRuleContexts(DirectiveContext.self)
			}
			open
			func directive(_ i: Int) -> DirectiveContext? {
				return getRuleContext(DirectiveContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_directives
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDirectives(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDirectives(self)
			}
		}
	}
	@discardableResult
	 open func directives() throws -> DirectivesContext {
		var _localctx: DirectivesContext = DirectivesContext(_ctx, getState())
		try enterRule(_localctx, 30, GraphQLParser.RULE_directives)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(158) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(157)
		 		try directive()


		 		setState(160); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }())

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DirectiveContext: ParserRuleContext {
			open
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
			open
			func valueOrVariable() -> ValueOrVariableContext? {
				return getRuleContext(ValueOrVariableContext.self, 0)
			}
			open
			func argument() -> ArgumentContext? {
				return getRuleContext(ArgumentContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_directive
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDirective(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDirective(self)
			}
		}
	}
	@discardableResult
	 open func directive() throws -> DirectiveContext {
		var _localctx: DirectiveContext = DirectiveContext(_ctx, getState())
		try enterRule(_localctx, 32, GraphQLParser.RULE_directive)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(174)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,17, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(162)
		 		try match(GraphQLParser.Tokens.T__11.rawValue)
		 		setState(163)
		 		try match(GraphQLParser.Tokens.NAME.rawValue)
		 		setState(164)
		 		try match(GraphQLParser.Tokens.T__5.rawValue)
		 		setState(165)
		 		try valueOrVariable()

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(166)
		 		try match(GraphQLParser.Tokens.T__11.rawValue)
		 		setState(167)
		 		try match(GraphQLParser.Tokens.NAME.rawValue)

		 		break
		 	case 3:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(168)
		 		try match(GraphQLParser.Tokens.T__11.rawValue)
		 		setState(169)
		 		try match(GraphQLParser.Tokens.NAME.rawValue)
		 		setState(170)
		 		try match(GraphQLParser.Tokens.T__6.rawValue)
		 		setState(171)
		 		try argument()
		 		setState(172)
		 		try match(GraphQLParser.Tokens.T__7.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeConditionContext: ParserRuleContext {
			open
			func typeName() -> TypeNameContext? {
				return getRuleContext(TypeNameContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeCondition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeCondition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeCondition(self)
			}
		}
	}
	@discardableResult
	 open func typeCondition() throws -> TypeConditionContext {
		var _localctx: TypeConditionContext = TypeConditionContext(_ctx, getState())
		try enterRule(_localctx, 34, GraphQLParser.RULE_typeCondition)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(176)
		 	try typeName()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDefinitionsContext: ParserRuleContext {
			open
			func variableDefinition() -> [VariableDefinitionContext] {
				return getRuleContexts(VariableDefinitionContext.self)
			}
			open
			func variableDefinition(_ i: Int) -> VariableDefinitionContext? {
				return getRuleContext(VariableDefinitionContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_variableDefinitions
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterVariableDefinitions(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitVariableDefinitions(self)
			}
		}
	}
	@discardableResult
	 open func variableDefinitions() throws -> VariableDefinitionsContext {
		var _localctx: VariableDefinitionsContext = VariableDefinitionsContext(_ctx, getState())
		try enterRule(_localctx, 36, GraphQLParser.RULE_variableDefinitions)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(178)
		 	try match(GraphQLParser.Tokens.T__6.rawValue)
		 	setState(179)
		 	try variableDefinition()
		 	setState(184)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__1.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(180)
		 		try match(GraphQLParser.Tokens.T__1.rawValue)
		 		setState(181)
		 		try variableDefinition()


		 		setState(186)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(187)
		 	try match(GraphQLParser.Tokens.T__7.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableDefinitionContext: ParserRuleContext {
			open
			func variable() -> VariableContext? {
				return getRuleContext(VariableContext.self, 0)
			}
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
			open
			func defaultValue() -> DefaultValueContext? {
				return getRuleContext(DefaultValueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_variableDefinition
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterVariableDefinition(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitVariableDefinition(self)
			}
		}
	}
	@discardableResult
	 open func variableDefinition() throws -> VariableDefinitionContext {
		var _localctx: VariableDefinitionContext = VariableDefinitionContext(_ctx, getState())
		try enterRule(_localctx, 38, GraphQLParser.RULE_variableDefinition)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(189)
		 	try variable()
		 	setState(190)
		 	try match(GraphQLParser.Tokens.T__5.rawValue)
		 	setState(191)
		 	try type()
		 	setState(193)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == GraphQLParser.Tokens.T__13.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(192)
		 		try defaultValue()

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class VariableContext: ParserRuleContext {
			open
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_variable
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterVariable(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitVariable(self)
			}
		}
	}
	@discardableResult
	 open func variable() throws -> VariableContext {
		var _localctx: VariableContext = VariableContext(_ctx, getState())
		try enterRule(_localctx, 40, GraphQLParser.RULE_variable)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(195)
		 	try match(GraphQLParser.Tokens.T__12.rawValue)
		 	setState(196)
		 	try match(GraphQLParser.Tokens.NAME.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class DefaultValueContext: ParserRuleContext {
			open
			func value() -> ValueContext? {
				return getRuleContext(ValueContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_defaultValue
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterDefaultValue(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitDefaultValue(self)
			}
		}
	}
	@discardableResult
	 open func defaultValue() throws -> DefaultValueContext {
		var _localctx: DefaultValueContext = DefaultValueContext(_ctx, getState())
		try enterRule(_localctx, 42, GraphQLParser.RULE_defaultValue)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(198)
		 	try match(GraphQLParser.Tokens.T__13.rawValue)
		 	setState(199)
		 	try value()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ValueOrVariableContext: ParserRuleContext {
			open
			func value() -> ValueContext? {
				return getRuleContext(ValueContext.self, 0)
			}
			open
			func variable() -> VariableContext? {
				return getRuleContext(VariableContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_valueOrVariable
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterValueOrVariable(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitValueOrVariable(self)
			}
		}
	}
	@discardableResult
	 open func valueOrVariable() throws -> ValueOrVariableContext {
		var _localctx: ValueOrVariableContext = ValueOrVariableContext(_ctx, getState())
		try enterRule(_localctx, 44, GraphQLParser.RULE_valueOrVariable)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(203)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__14:fallthrough
		 	case .STRING:fallthrough
		 	case .BOOLEAN:fallthrough
		 	case .NUMBER:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(201)
		 		try value()

		 		break

		 	case .T__12:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(202)
		 		try variable()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ValueContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_value
		}
	 
		open
		func copyFrom(_ ctx: ValueContext) {
			super.copyFrom(ctx)
		}
	}
	public class StringValueContext: ValueContext {
			open
			func STRING() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.STRING.rawValue, 0)
			}

		public
		init(_ ctx: ValueContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterStringValue(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitStringValue(self)
			}
		}
	}
	public class BooleanValueContext: ValueContext {
			open
			func BOOLEAN() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.BOOLEAN.rawValue, 0)
			}

		public
		init(_ ctx: ValueContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterBooleanValue(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitBooleanValue(self)
			}
		}
	}
	public class NumberValueContext: ValueContext {
			open
			func NUMBER() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NUMBER.rawValue, 0)
			}

		public
		init(_ ctx: ValueContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterNumberValue(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitNumberValue(self)
			}
		}
	}
	public class ArrayValueContext: ValueContext {
			open
			func array() -> ArrayContext? {
				return getRuleContext(ArrayContext.self, 0)
			}

		public
		init(_ ctx: ValueContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterArrayValue(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitArrayValue(self)
			}
		}
	}
	@discardableResult
	 open func value() throws -> ValueContext {
		var _localctx: ValueContext = ValueContext(_ctx, getState())
		try enterRule(_localctx, 46, GraphQLParser.RULE_value)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(209)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .STRING:
		 		_localctx =  StringValueContext(_localctx);
		 		try enterOuterAlt(_localctx, 1)
		 		setState(205)
		 		try match(GraphQLParser.Tokens.STRING.rawValue)

		 		break

		 	case .NUMBER:
		 		_localctx =  NumberValueContext(_localctx);
		 		try enterOuterAlt(_localctx, 2)
		 		setState(206)
		 		try match(GraphQLParser.Tokens.NUMBER.rawValue)

		 		break

		 	case .BOOLEAN:
		 		_localctx =  BooleanValueContext(_localctx);
		 		try enterOuterAlt(_localctx, 3)
		 		setState(207)
		 		try match(GraphQLParser.Tokens.BOOLEAN.rawValue)

		 		break

		 	case .T__14:
		 		_localctx =  ArrayValueContext(_localctx);
		 		try enterOuterAlt(_localctx, 4)
		 		setState(208)
		 		try array()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeContext: ParserRuleContext {
			open
			func typeName() -> TypeNameContext? {
				return getRuleContext(TypeNameContext.self, 0)
			}
			open
			func nonNullType() -> NonNullTypeContext? {
				return getRuleContext(NonNullTypeContext.self, 0)
			}
			open
			func listType() -> ListTypeContext? {
				return getRuleContext(ListTypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_type
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitType(self)
			}
		}
	}
	@discardableResult
	 open func type() throws -> TypeContext {
		var _localctx: TypeContext = TypeContext(_ctx, getState())
		try enterRule(_localctx, 48, GraphQLParser.RULE_type)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(219)
		 	try _errHandler.sync(self)
		 	switch (GraphQLParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .NAME:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(211)
		 		try typeName()
		 		setState(213)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__16.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(212)
		 			try nonNullType()

		 		}


		 		break

		 	case .T__14:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(215)
		 		try listType()
		 		setState(217)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		if (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__16.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(216)
		 			try nonNullType()

		 		}


		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class TypeNameContext: ParserRuleContext {
			open
			func NAME() -> TerminalNode? {
				return getToken(GraphQLParser.Tokens.NAME.rawValue, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_typeName
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterTypeName(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitTypeName(self)
			}
		}
	}
	@discardableResult
	 open func typeName() throws -> TypeNameContext {
		var _localctx: TypeNameContext = TypeNameContext(_ctx, getState())
		try enterRule(_localctx, 50, GraphQLParser.RULE_typeName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(221)
		 	try match(GraphQLParser.Tokens.NAME.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ListTypeContext: ParserRuleContext {
			open
			func type() -> TypeContext? {
				return getRuleContext(TypeContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_listType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterListType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitListType(self)
			}
		}
	}
	@discardableResult
	 open func listType() throws -> ListTypeContext {
		var _localctx: ListTypeContext = ListTypeContext(_ctx, getState())
		try enterRule(_localctx, 52, GraphQLParser.RULE_listType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(223)
		 	try match(GraphQLParser.Tokens.T__14.rawValue)
		 	setState(224)
		 	try type()
		 	setState(225)
		 	try match(GraphQLParser.Tokens.T__15.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class NonNullTypeContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_nonNullType
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterNonNullType(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitNonNullType(self)
			}
		}
	}
	@discardableResult
	 open func nonNullType() throws -> NonNullTypeContext {
		var _localctx: NonNullTypeContext = NonNullTypeContext(_ctx, getState())
		try enterRule(_localctx, 54, GraphQLParser.RULE_nonNullType)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(227)
		 	try match(GraphQLParser.Tokens.T__16.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	public class ArrayContext: ParserRuleContext {
			open
			func value() -> [ValueContext] {
				return getRuleContexts(ValueContext.self)
			}
			open
			func value(_ i: Int) -> ValueContext? {
				return getRuleContext(ValueContext.self, i)
			}
		override open
		func getRuleIndex() -> Int {
			return GraphQLParser.RULE_array
		}
		override open
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.enterArray(self)
			}
		}
		override open
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? GraphQLListener {
				listener.exitArray(self)
			}
		}
	}
	@discardableResult
	 open func array() throws -> ArrayContext {
		var _localctx: ArrayContext = ArrayContext(_ctx, getState())
		try enterRule(_localctx, 56, GraphQLParser.RULE_array)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(242)
		 	try _errHandler.sync(self)
		 	switch(try getInterpreter().adaptivePredict(_input,26, _ctx)) {
		 	case 1:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(229)
		 		try match(GraphQLParser.Tokens.T__14.rawValue)
		 		setState(230)
		 		try value()
		 		setState(235)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (//closure
		 		 { () -> Bool in
		 		      let testSet: Bool = _la == GraphQLParser.Tokens.T__1.rawValue
		 		      return testSet
		 		 }()) {
		 			setState(231)
		 			try match(GraphQLParser.Tokens.T__1.rawValue)
		 			setState(232)
		 			try value()


		 			setState(237)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(238)
		 		try match(GraphQLParser.Tokens.T__15.rawValue)

		 		break
		 	case 2:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(240)
		 		try match(GraphQLParser.Tokens.T__14.rawValue)
		 		setState(241)
		 		try match(GraphQLParser.Tokens.T__15.rawValue)

		 		break
		 	default: break
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public
	static let _serializedATN = GraphQLParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}
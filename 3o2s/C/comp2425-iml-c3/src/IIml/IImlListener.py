# Generated from IIml.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .IImlParser import IImlParser
else:
    from IImlParser import IImlParser

# This class defines a complete listener for a parse tree produced by IImlParser.
class IImlListener(ParseTreeListener):

    # Enter a parse tree produced by IImlParser#program.
    def enterProgram(self, ctx:IImlParser.ProgramContext):
        pass

    # Exit a parse tree produced by IImlParser#program.
    def exitProgram(self, ctx:IImlParser.ProgramContext):
        pass


    # Enter a parse tree produced by IImlParser#command.
    def enterCommand(self, ctx:IImlParser.CommandContext):
        pass

    # Exit a parse tree produced by IImlParser#command.
    def exitCommand(self, ctx:IImlParser.CommandContext):
        pass


    # Enter a parse tree produced by IImlParser#assignStat.
    def enterAssignStat(self, ctx:IImlParser.AssignStatContext):
        pass

    # Exit a parse tree produced by IImlParser#assignStat.
    def exitAssignStat(self, ctx:IImlParser.AssignStatContext):
        pass


    # Enter a parse tree produced by IImlParser#createImage.
    def enterCreateImage(self, ctx:IImlParser.CreateImageContext):
        pass

    # Exit a parse tree produced by IImlParser#createImage.
    def exitCreateImage(self, ctx:IImlParser.CreateImageContext):
        pass


    # Enter a parse tree produced by IImlParser#placeForm.
    def enterPlaceForm(self, ctx:IImlParser.PlaceFormContext):
        pass

    # Exit a parse tree produced by IImlParser#placeForm.
    def exitPlaceForm(self, ctx:IImlParser.PlaceFormContext):
        pass


    # Enter a parse tree produced by IImlParser#forLoop.
    def enterForLoop(self, ctx:IImlParser.ForLoopContext):
        pass

    # Exit a parse tree produced by IImlParser#forLoop.
    def exitForLoop(self, ctx:IImlParser.ForLoopContext):
        pass


    # Enter a parse tree produced by IImlParser#variableExpr.
    def enterVariableExpr(self, ctx:IImlParser.VariableExprContext):
        pass

    # Exit a parse tree produced by IImlParser#variableExpr.
    def exitVariableExpr(self, ctx:IImlParser.VariableExprContext):
        pass


    # Enter a parse tree produced by IImlParser#binaryOp.
    def enterBinaryOp(self, ctx:IImlParser.BinaryOpContext):
        pass

    # Exit a parse tree produced by IImlParser#binaryOp.
    def exitBinaryOp(self, ctx:IImlParser.BinaryOpContext):
        pass


    # Enter a parse tree produced by IImlParser#listAccess.
    def enterListAccess(self, ctx:IImlParser.ListAccessContext):
        pass

    # Exit a parse tree produced by IImlParser#listAccess.
    def exitListAccess(self, ctx:IImlParser.ListAccessContext):
        pass


    # Enter a parse tree produced by IImlParser#convertExpr.
    def enterConvertExpr(self, ctx:IImlParser.ConvertExprContext):
        pass

    # Exit a parse tree produced by IImlParser#convertExpr.
    def exitConvertExpr(self, ctx:IImlParser.ConvertExprContext):
        pass


    # Enter a parse tree produced by IImlParser#stringLiteral.
    def enterStringLiteral(self, ctx:IImlParser.StringLiteralContext):
        pass

    # Exit a parse tree produced by IImlParser#stringLiteral.
    def exitStringLiteral(self, ctx:IImlParser.StringLiteralContext):
        pass


    # Enter a parse tree produced by IImlParser#readInput.
    def enterReadInput(self, ctx:IImlParser.ReadInputContext):
        pass

    # Exit a parse tree produced by IImlParser#readInput.
    def exitReadInput(self, ctx:IImlParser.ReadInputContext):
        pass


    # Enter a parse tree produced by IImlParser#listExpr.
    def enterListExpr(self, ctx:IImlParser.ListExprContext):
        pass

    # Exit a parse tree produced by IImlParser#listExpr.
    def exitListExpr(self, ctx:IImlParser.ListExprContext):
        pass


    # Enter a parse tree produced by IImlParser#parenExpr.
    def enterParenExpr(self, ctx:IImlParser.ParenExprContext):
        pass

    # Exit a parse tree produced by IImlParser#parenExpr.
    def exitParenExpr(self, ctx:IImlParser.ParenExprContext):
        pass


    # Enter a parse tree produced by IImlParser#numberLiteral.
    def enterNumberLiteral(self, ctx:IImlParser.NumberLiteralContext):
        pass

    # Exit a parse tree produced by IImlParser#numberLiteral.
    def exitNumberLiteral(self, ctx:IImlParser.NumberLiteralContext):
        pass


    # Enter a parse tree produced by IImlParser#shapes.
    def enterShapes(self, ctx:IImlParser.ShapesContext):
        pass

    # Exit a parse tree produced by IImlParser#shapes.
    def exitShapes(self, ctx:IImlParser.ShapesContext):
        pass


    # Enter a parse tree produced by IImlParser#types.
    def enterTypes(self, ctx:IImlParser.TypesContext):
        pass

    # Exit a parse tree produced by IImlParser#types.
    def exitTypes(self, ctx:IImlParser.TypesContext):
        pass



del IImlParser
# Generated from IIml.g4 by ANTLR 4.13.2
from antlr4 import *
from .IImlParser import IImlParser
from .IImlLexer import IImlLexer
import numpy as np
import cv2
import os

class IImlVisitor(ParseTreeVisitor):
    def __init__(self):
        self.vars = {}
        self.image = None

    def visitProgram(self, ctx:IImlParser.ProgramContext):
        for cmd in ctx.command():
            self.visit(cmd)
        return self.image.astype(np.uint8)

    # def visitCommand(self, ctx:IImlParser.CommandContext):
    #     return self.visitChildren(ctx)

    def visitAssignStat(self, ctx:IImlParser.AssignStatContext):
        var = ctx.ID().getText()
        value = self.visit(ctx.expr())
        self.vars[var] = value

    def visitCreateImage(self, ctx:IImlParser.CreateImageContext):
        w = self.visit(ctx.expr(0))
        h = self.visit(ctx.expr(1))
        bg = self.visit(ctx.expr(2))
        self.image = np.full((h, w), bg, dtype=np.uint8)

    def visitPlaceForm(self, ctx:IImlParser.PlaceFormContext):
        shape_ctx = ctx.shapes()
        shape_key = shape_ctx.getChild(0).getText()

        # Inicializar variáveis
        radius = width = height = None

        # Detetar e processar os argumentos da forma
        match shape_key:
            case "circle":
                radius = self.visit(shape_ctx.expr(0))
            case "rect":
                width = self.visit(shape_ctx.expr(0))
                height = self.visit(shape_ctx.expr(1))
            case "cross":
                width = self.visit(shape_ctx.expr(0))
                height = self.visit(shape_ctx.expr(1))
            case "plus":
                width = self.visit(shape_ctx.expr(0))
                height = self.visit(shape_ctx.expr(1))
            case _:
                raise Exception(f"Forma não suportada: {shape_key}")

        # Posição e intensidade
        x = self.visit(ctx.expr(0))
        y = self.visit(ctx.expr(1))
        intensity = self.visit(ctx.expr(2))

        # Desenho com OpenCV
        match shape_key:
            case "circle":
                cv2.circle(self.image, (x, y), radius, intensity, -1)
            case "rect":
                top_left = (x - width // 2, y - height // 2)
                bottom_right = (x + width // 2, y + height // 2)
                cv2.rectangle(self.image, top_left, bottom_right, intensity, -1)
            case "cross":
                cv2.line(self.image, (x - width // 2, y + height // 2), (x + width // 2, y - height // 2), intensity, 1)
                cv2.line(self.image, (x - width // 2, y - height // 2), (x + width // 2, y + height // 2), intensity, 1)
            case "plus":
                cv2.line(self.image, (x - width // 2, y), (x + width // 2, y), intensity, 1)
                cv2.line(self.image, (x, y - height // 2), (x, y + height // 2), intensity, 1)
            case _:
                raise Exception(f"Desenho não suportado para a forma: {shape_key}")

        return None

    def visitBinaryOp(self, ctx:IImlParser.BinaryOpContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        op = ctx.op.text

        match op:
            case '+':
                return left + right
            case '-':
                return left - right
            case '*':
                return left * right
            case '/':
                return left // right
            case _:
                raise Exception(f"Unsupported operator: {op}")

    def visitConvertExpr(self, ctx:IImlParser.ConvertExprContext):
        target_type = ctx.types().getText()
        value = self.visit(ctx.expr())

        match target_type:
            case "number":
                return int(value)
            case "image":
                return np.array(value, dtype=np.uint8)
            case _:
                raise Exception(f"Tipo desconhecido: {target_type}")

    def visitStringLiteral(self, ctx:IImlParser.StringLiteralContext):
        return ctx.STRING().getText().strip('"')

    def visitReadInput(self, ctx:IImlParser.ReadInputContext):
        prompt = ctx.STRING().getText().strip('"')
        input_value = input(prompt)
        try:
            return input_value
        except ValueError:
            raise Exception(f"Invalid input: {input_value} is not an integer.")

    def visitParenExpr(self, ctx:IImlParser.ParenExprContext):
        return self.visit(ctx.expr())
    
    def visitForLoop(self, ctx:IImlParser.ForLoopContext):
        is_list = ctx.getChild(1).getText() == 'list'  # detecta se há "list"

        # A primeira expressão é o nome da variável temporária
        loop_var_node = ctx.expr(0)
        loop_var_name = loop_var_node.getText()

        # A segunda expressão é o iterável
        iterable_expr = ctx.expr(1)
        iterable = self.visit(iterable_expr)

        if not isinstance(iterable, list) and is_list:
            raise Exception(f"O valor '{iterable}' não é uma lista.")

        # Executar o corpo para cada item
        for item in iterable:
            self.vars[loop_var_name] = item
            self.visit(ctx.command())

        return None

    def visitNumberLiteral(self, ctx:IImlParser.NumberLiteralContext):
        return int(ctx.getText())
    
    def visitVariableExpr(self, ctx:IImlParser.VariableExprContext):
        name = ctx.getText()
        if name in self.vars:
            return self.vars[name]
        else:
            raise Exception(f"Variable '{name}' not defined.")

    def visitShapes(self, ctx:IImlParser.ShapesContext):
        return self.visitChildren(ctx)

    def visitTypes(self, ctx:IImlParser.TypesContext):
        return self.visitChildren(ctx)
    
    def visitListExpr(self, ctx:IImlParser.ListExprContext):
        elements = []
        for expr in ctx.expr():
            elements.append(self.visit(expr))
        return elements
    
    def visitListAccess(self, ctx:IImlParser.ListAccessContext):
        expr1 = self.visit(ctx.expr(0))
        expr2 = self.visit(ctx.expr(1))
        return expr1[expr2]
        #if isinstance(expr1, list) and isinstance(expr2, int):
        #    if 0 <= expr2 < len(expr1):
        #        return expr1[expr2]
        #    else:
        #        raise Exception(f"Index {expr2} out of bounds for list of size {len(expr1)}.")
        #else:
        #    raise Exception(f"Invalid list access: {expr1} at index {expr2}. Expected a list and an integer index.")

def load_iiml(filename):
    if filename is None:
        raise ValueError("Filename cannot be None. Please provide a valid file path.")
    if not isinstance(filename, str):
        raise TypeError("Filename must be a string. Please provide a valid file path.")
    if not filename.endswith('.iiml'):
        raise ValueError("Filename must end with '.iiml'. Please provide a valid file path.")
    if not os.path.isfile(filename):
        raise FileNotFoundError(f"File '{filename}' not found. Please provide a valid file path.")
    input_stream = FileStream(filename)
    lexer = IImlLexer(input_stream)
    stream = CommonTokenStream(lexer)
    parser = IImlParser(stream)
    tree = parser.program()

    interpreter = IImlVisitor()
    return interpreter.visit(tree)
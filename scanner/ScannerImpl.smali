.class public final Lorg/yaml/snakeyaml/scanner/ScannerImpl;
.super Ljava/lang/Object;
.source "ScannerImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/scanner/Scanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    }
.end annotation


# static fields
.field public static final ESCAPE_CODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_HEXA:Ljava/util/regex/Pattern;


# instance fields
.field private allowSimpleKey:Z

.field private done:Z

.field private flowLevel:I

.field private indent:I

.field private indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private possibleSimpleKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/yaml/snakeyaml/scanner/SimpleKey;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lorg/yaml/snakeyaml/reader/StreamReader;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;"
        }
    .end annotation
.end field

.field private tokensTaken:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    const-string v0, "[^0-9A-Fa-f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    .line 118
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0008"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u000b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u000c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u001b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\\"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0085"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u00a0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u2028"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u2029"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 163
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 169
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 213
    iput-object p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    .line 215
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 217
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    .line 218
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamStart()V

    .line 219
    return-void
.end method

.method private addIndent(I)Z
    .locals 2
    .param p1, "column"    # I

    .line 560
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-ge v0, p1, :cond_0

    .line 561
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 562
    iput p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 563
    const/4 v0, 0x1

    return v0

    .line 565
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkBlockEntry()Z
    .locals 3

    .line 1096
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    return v0
.end method

.method private checkDirective()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkDocumentEnd()Z
    .locals 3

    .line 1083
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    const-string v0, "..."

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    const/4 v0, 0x1

    return v0

    .line 1088
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkDocumentStart()Z
    .locals 3

    .line 1069
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    const-string v0, "---"

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    const/4 v0, 0x1

    return v0

    .line 1074
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkKey()Z
    .locals 3

    .line 1104
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1105
    return v1

    .line 1108
    :cond_0
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    return v0
.end method

.method private checkPlain()Z
    .locals 4

    .line 1145
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 1148
    .local v0, "ch":C
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v2, "-?:,[]{}#&*!|>\'\"%@`"

    invoke-virtual {v1, v0, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_0

    const-string v1, "?:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private checkValue()Z
    .locals 3

    .line 1117
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1118
    return v1

    .line 1121
    :cond_0
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v0

    return v0
.end method

.method private fetchAlias()V
    .locals 2

    .line 912
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 918
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 919
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    return-void
.end method

.method private fetchAnchor()V
    .locals 2

    .line 933
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 939
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 940
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    return-void
.end method

.method private fetchBlockEntry()V
    .locals 4

    .line 775
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_1

    .line 777
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 785
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 778
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "sequence entries are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 792
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 795
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 798
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 799
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 800
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 801
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 802
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    return-void
.end method

.method private fetchBlockScalar(C)V
    .locals 2
    .param p1, "style"    # C

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 993
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 996
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalar(C)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 997
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    return-void
.end method

.method private fetchDirective()V
    .locals 2

    .line 612
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 615
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 619
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirective()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 620
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    return-void
.end method

.method private fetchDocumentEnd()V
    .locals 1

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 635
    return-void
.end method

.method private fetchDocumentIndicator(Z)V
    .locals 4
    .param p1, "isDocumentStart"    # Z

    .line 643
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 647
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 651
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 652
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 653
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 655
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 656
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_0

    .line 658
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 660
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    return-void
.end method

.method private fetchDocumentStart()V
    .locals 1

    .line 627
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 628
    return-void
.end method

.method private fetchDouble()V
    .locals 1

    .line 1011
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 1012
    return-void
.end method

.method private fetchFlowCollectionEnd(Z)V
    .locals 4
    .param p1, "isMappingEnd"    # Z

    .line 726
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 729
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 735
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 736
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 737
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 739
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 740
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_0

    .line 742
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 744
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    return-void
.end method

.method private fetchFlowCollectionStart(Z)V
    .locals 4
    .param p1, "isMappingStart"    # Z

    .line 685
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 688
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 691
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 694
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 695
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 696
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 698
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 699
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_0

    .line 701
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 703
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    return-void
.end method

.method private fetchFlowEntry()V
    .locals 4

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 758
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 761
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 762
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 763
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 764
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 765
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    return-void
.end method

.method private fetchFlowMappingEnd()V
    .locals 1

    .line 711
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 712
    return-void
.end method

.method private fetchFlowMappingStart()V
    .locals 1

    .line 668
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 669
    return-void
.end method

.method private fetchFlowScalar(C)V
    .locals 2
    .param p1, "style"    # C

    .line 1023
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1029
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1030
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    return-void
.end method

.method private fetchFlowSequenceEnd()V
    .locals 1

    .line 707
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 708
    return-void
.end method

.method private fetchFlowSequenceStart()V
    .locals 1

    .line 664
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 665
    return-void
.end method

.method private fetchFolded()V
    .locals 1

    .line 978
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 979
    return-void
.end method

.method private fetchKey()V
    .locals 4

    .line 812
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_1

    .line 814
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 821
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 815
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "mapping keys are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 825
    :cond_1
    :goto_0
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 828
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 831
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 832
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 833
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 834
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 835
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    return-void
.end method

.method private fetchLiteral()V
    .locals 1

    .line 968
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 969
    return-void
.end method

.method private fetchMoreTokens()V
    .locals 7

    .line 289
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanToNextToken()V

    .line 291
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 294
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 297
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 298
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 343
    :sswitch_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingEnd()V

    .line 344
    return-void

    .line 378
    :sswitch_1
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_1

    .line 379
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchLiteral()V

    .line 380
    return-void

    .line 335
    :sswitch_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingStart()V

    .line 336
    return-void

    .line 339
    :sswitch_3
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceEnd()V

    .line 340
    return-void

    .line 331
    :sswitch_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceStart()V

    .line 332
    return-void

    .line 352
    :sswitch_5
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchKey()V

    .line 354
    return-void

    .line 385
    :sswitch_6
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_1

    .line 386
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFolded()V

    .line 387
    return-void

    .line 359
    :sswitch_7
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchValue()V

    .line 361
    return-void

    .line 323
    :sswitch_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentEnd()V

    .line 325
    return-void

    .line 312
    :sswitch_9
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentStart()V

    .line 314
    return-void

    .line 316
    :cond_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkBlockEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockEntry()V

    .line 318
    return-void

    .line 347
    :sswitch_a
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowEntry()V

    .line 348
    return-void

    .line 366
    :sswitch_b
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAlias()V

    .line 367
    return-void

    .line 392
    :sswitch_c
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchSingle()V

    .line 393
    return-void

    .line 370
    :sswitch_d
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAnchor()V

    .line 371
    return-void

    .line 305
    :sswitch_e
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDirective()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDirective()V

    .line 307
    return-void

    .line 396
    :sswitch_f
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDouble()V

    .line 397
    return-void

    .line 374
    :sswitch_10
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchTag()V

    .line 375
    return-void

    .line 301
    :sswitch_11
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamEnd()V

    .line 302
    return-void

    .line 400
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkPlain()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchPlain()V

    .line 402
    return-void

    .line 407
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "chRepresentation":Ljava/lang/String;
    sget-object v2, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 409
    .local v3, "s":Ljava/lang/Character;
    sget-object v4, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 410
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    goto :goto_2

    .line 414
    .end local v3    # "s":Ljava/lang/Character;
    .end local v4    # "v":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 415
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(TAB)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "found character \'%s\' that cannot start any token. (Do not use %s for indentation)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning for the next token"

    invoke-direct {v3, v6, v4, v2, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x21 -> :sswitch_10
        0x22 -> :sswitch_f
        0x25 -> :sswitch_e
        0x26 -> :sswitch_d
        0x27 -> :sswitch_c
        0x2a -> :sswitch_b
        0x2c -> :sswitch_a
        0x2d -> :sswitch_9
        0x2e -> :sswitch_8
        0x3a -> :sswitch_7
        0x3e -> :sswitch_6
        0x3f -> :sswitch_5
        0x5b -> :sswitch_4
        0x5d -> :sswitch_3
        0x7b -> :sswitch_2
        0x7c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private fetchPlain()V
    .locals 2

    .line 1038
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1046
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlain()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1047
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method

.method private fetchSingle()V
    .locals 1

    .line 1004
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 1005
    return-void
.end method

.method private fetchStreamEnd()V
    .locals 3

    .line 585
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 588
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 590
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 593
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 596
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamEndToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 597
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 601
    return-void
.end method

.method private fetchStreamStart()V
    .locals 3

    .line 576
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 579
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamStartToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 580
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method private fetchTag()V
    .locals 2

    .line 950
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 956
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTag()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 957
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method

.method private fetchValue()V
    .locals 7

    .line 845
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 846
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 848
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v3

    iget v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v3, v4

    new-instance v4, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 853
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_0

    .line 854
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v3

    iget v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v3, v4

    new-instance v4, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 860
    :cond_0
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_1

    .line 866
    :cond_1
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_3

    .line 870
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 871
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mapping values are not allowed here"

    invoke-direct {v1, v3, v3, v4, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 879
    :cond_3
    :goto_0
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_4

    .line 880
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 881
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 882
    .local v2, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v4, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v4, v2, v2}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    .end local v2    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_4
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 890
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 893
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 894
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 895
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 896
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v3, Lorg/yaml/snakeyaml/tokens/ValueToken;

    invoke-direct {v3, v1, v2}, Lorg/yaml/snakeyaml/tokens/ValueToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 897
    .local v3, "token":Lorg/yaml/snakeyaml/tokens/Token;
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    return-void
.end method

.method private needMoreTokens()Z
    .locals 4

    .line 271
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 272
    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 276
    return v2

    .line 280
    :cond_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 281
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->nextPossibleSimpleKey()I

    move-result v0

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private nextPossibleSimpleKey()I
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v0

    return v0

    .line 438
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private removePossibleSimpleKey()V
    .locals 6

    .line 512
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 513
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a simple key"

    const-string v5, "could not find expected \':\'"

    invoke-direct {v1, v4, v2, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 517
    :cond_1
    :goto_0
    return-void
.end method

.method private savePossibleSimpleKey()V
    .locals 10

    .line 487
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 489
    .local v0, "required":Z
    :goto_0
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 493
    :cond_1
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "A simple key is required only if it is the first token in the current line"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v1, :cond_3

    .line 500
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 501
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v8, v1, v2

    .line 502
    .local v8, "tokenNumber":I
    new-instance v9, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v4

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v5

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v6

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    move-object v1, v9

    move v2, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/yaml/snakeyaml/scanner/SimpleKey;-><init>(IZIIILorg/yaml/snakeyaml/error/Mark;)V

    .line 504
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    .end local v8    # "tokenNumber":I
    :cond_3
    return-void
.end method

.method private scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 10
    .param p1, "isAnchor"    # Z

    .line 1428
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1429
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1430
    .local v1, "indicator":C
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    const-string v2, "alias"

    goto :goto_0

    :cond_0
    const-string v2, "anchor"

    .line 1431
    .local v2, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1432
    const/4 v3, 0x0

    .line 1433
    .local v3, "length":I
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v4

    .line 1434
    .local v4, "ch":C
    :goto_1
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v5, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1435
    add-int/lit8 v3, v3, 0x1

    .line 1436
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v4

    goto :goto_1

    .line 1438
    :cond_1
    if-eqz v3, :cond_4

    .line 1443
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v5

    .line 1444
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    .line 1445
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v7, "?:,]}%@`"

    invoke-virtual {v6, v4, v7}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1450
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    .line 1452
    .local v6, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_2

    .line 1453
    new-instance v7, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    invoke-direct {v7, v5, v0, v6}, Lorg/yaml/snakeyaml/tokens/AnchorToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    goto :goto_2

    .line 1455
    :cond_2
    new-instance v7, Lorg/yaml/snakeyaml/tokens/AliasToken;

    invoke-direct {v7, v5, v0, v6}, Lorg/yaml/snakeyaml/tokens/AliasToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 1457
    .local v7, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_2
    return-object v7

    .line 1446
    .end local v6    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v7    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_3
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "while scanning an "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected alphabetic or numeric character, but found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    invoke-direct {v6, v7, v0, v8, v9}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6

    .line 1439
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "while scanning an "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected alphabetic or numeric character, but found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-direct {v5, v6, v0, v7, v8}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    return-void
.end method

.method private scanBlockScalar(C)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 21
    .param p1, "style"    # C

    .line 1563
    move-object/from16 v0, p0

    const/16 v1, 0x3e

    move/from16 v8, p1

    if-ne v8, v1, :cond_0

    .line 1564
    const/4 v1, 0x1

    goto :goto_0

    .line 1566
    :cond_0
    const/4 v1, 0x0

    .line 1568
    .local v1, "folded":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v2

    .line 1569
    .local v9, "chunks":Ljava/lang/StringBuilder;
    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    .line 1571
    .local v10, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1572
    invoke-direct {v0, v10}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    move-result-object v11

    .line 1573
    .local v11, "chompi":Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->getIncrement()I

    move-result v12

    .line 1574
    .local v12, "increment":I
    invoke-direct {v0, v10}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    .line 1577
    iget v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1578
    .local v2, "minIndent":I
    if-ge v2, v3, :cond_1

    .line 1579
    const/4 v2, 0x1

    move v13, v2

    goto :goto_1

    .line 1578
    :cond_1
    move v13, v2

    .line 1581
    .end local v2    # "minIndent":I
    .local v13, "minIndent":I
    :goto_1
    const/4 v2, 0x0

    .line 1582
    .local v2, "breaks":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1583
    .local v4, "maxIndent":I
    const/4 v5, 0x0

    .line 1585
    .local v5, "indent":I
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v12, v6, :cond_2

    .line 1586
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndentation()[Ljava/lang/Object;

    move-result-object v14

    .line 1587
    .local v14, "brme":[Ljava/lang/Object;
    aget-object v15, v14, v7

    move-object v2, v15

    check-cast v2, Ljava/lang/String;

    .line 1588
    aget-object v15, v14, v3

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1589
    const/4 v15, 0x2

    aget-object v15, v14, v15

    check-cast v15, Lorg/yaml/snakeyaml/error/Mark;

    .line 1590
    .local v15, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1591
    .end local v14    # "brme":[Ljava/lang/Object;
    move v14, v4

    goto :goto_2

    .line 1592
    .end local v15    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_2
    add-int v14, v13, v12

    add-int/lit8 v5, v14, -0x1

    .line 1593
    invoke-direct {v0, v5}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v14

    .line 1594
    .restart local v14    # "brme":[Ljava/lang/Object;
    aget-object v15, v14, v7

    move-object v2, v15

    check-cast v2, Ljava/lang/String;

    .line 1595
    aget-object v15, v14, v3

    check-cast v15, Lorg/yaml/snakeyaml/error/Mark;

    move v14, v4

    .line 1598
    .end local v4    # "maxIndent":I
    .local v14, "maxIndent":I
    .restart local v15    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :goto_2
    const-string v4, ""

    .line 1601
    .local v4, "lineBreak":Ljava/lang/String;
    :goto_3
    iget-object v3, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    if-ne v3, v5, :cond_9

    iget-object v3, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    if-eqz v3, :cond_9

    .line 1602
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    const-string v3, " \t"

    iget-object v7, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    .line 1604
    .local v3, "leadingNonSpace":Z
    :goto_4
    const/4 v7, 0x0

    .line 1605
    .local v7, "length":I
    :goto_5
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    move-object/from16 v19, v2

    .end local v2    # "breaks":Ljava/lang/String;
    .local v19, "breaks":Ljava/lang/String;
    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-virtual {v6, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1606
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v19

    const/4 v6, -0x1

    goto :goto_5

    .line 1608
    :cond_4
    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v4

    .line 1610
    invoke-direct {v0, v5}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1611
    .local v2, "brme":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v17, v2, v6

    check-cast v17, Ljava/lang/String;

    .line 1612
    .end local v19    # "breaks":Ljava/lang/String;
    .local v17, "breaks":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v19, v2, v16

    move-object/from16 v15, v19

    check-cast v15, Lorg/yaml/snakeyaml/error/Mark;

    .line 1613
    iget-object v6, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v6

    if-ne v6, v5, :cond_8

    iget-object v6, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v6

    if-eqz v6, :cond_8

    .line 1618
    if-eqz v1, :cond_5

    const-string v6, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    const-string v6, " \t"

    move/from16 v20, v1

    .end local v1    # "folded":Z
    .local v20, "folded":Z
    iget-object v1, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_6

    .line 1620
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 1621
    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1618
    .end local v20    # "folded":Z
    .restart local v1    # "folded":Z
    :cond_5
    move/from16 v20, v1

    const/4 v6, -0x1

    .line 1624
    .end local v1    # "folded":Z
    .restart local v20    # "folded":Z
    :cond_6
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    .end local v2    # "brme":[Ljava/lang/Object;
    .end local v3    # "leadingNonSpace":Z
    .end local v7    # "length":I
    :cond_7
    :goto_6
    move-object/from16 v2, v17

    move/from16 v1, v20

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1613
    .end local v20    # "folded":Z
    .restart local v1    # "folded":Z
    .restart local v2    # "brme":[Ljava/lang/Object;
    .restart local v3    # "leadingNonSpace":Z
    .restart local v7    # "length":I
    :cond_8
    move/from16 v20, v1

    .line 1633
    .end local v1    # "folded":Z
    .end local v2    # "brme":[Ljava/lang/Object;
    .end local v3    # "leadingNonSpace":Z
    .end local v7    # "length":I
    .restart local v20    # "folded":Z
    move-object v1, v4

    move-object/from16 v16, v15

    move-object/from16 v15, v17

    goto :goto_7

    .line 1601
    .end local v17    # "breaks":Ljava/lang/String;
    .end local v20    # "folded":Z
    .restart local v1    # "folded":Z
    .local v2, "breaks":Ljava/lang/String;
    :cond_9
    move/from16 v20, v1

    move-object/from16 v19, v2

    .line 1633
    .end local v1    # "folded":Z
    .end local v2    # "breaks":Ljava/lang/String;
    .restart local v19    # "breaks":Ljava/lang/String;
    .restart local v20    # "folded":Z
    move-object v1, v4

    move-object/from16 v16, v15

    move-object/from16 v15, v19

    .end local v4    # "lineBreak":Ljava/lang/String;
    .end local v19    # "breaks":Ljava/lang/String;
    .local v1, "lineBreak":Ljava/lang/String;
    .local v15, "breaks":Ljava/lang/String;
    .local v16, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :goto_7
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsNotFalse()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1634
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    :cond_a
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsTrue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1637
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    :cond_b
    new-instance v17, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v2, v17

    move/from16 v18, v5

    .end local v5    # "indent":I
    .local v18, "indent":I
    move-object v5, v10

    move-object/from16 v6, v16

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;C)V

    return-object v17
.end method

.method private scanBlockScalarBreaks(I)[Ljava/lang/Object;
    .locals 8
    .param p1, "indent"    # I

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1780
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1781
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v2, 0x0

    .line 1782
    .local v2, "ff":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    .line 1785
    .local v3, "col":I
    :goto_0
    const/16 v4, 0x20

    if-ge v3, p1, :cond_0

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1786
    add-int/lit8 v2, v2, 0x1

    .line 1787
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1789
    :cond_0
    if-lez v2, :cond_1

    .line 1790
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1794
    :cond_1
    const/4 v5, 0x0

    .line 1795
    .local v5, "lineBreak":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1796
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1800
    const/4 v2, 0x0

    .line 1801
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    .line 1802
    :goto_2
    if-ge v3, p1, :cond_3

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v6

    if-ne v6, v4, :cond_3

    .line 1803
    add-int/lit8 v2, v2, 0x1

    .line 1804
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1806
    :cond_3
    if-lez v2, :cond_2

    .line 1807
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_1

    .line 1811
    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v1, v4, v6

    return-object v4
.end method

.method private scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1713
    const/4 v0, 0x0

    .line 1715
    .local v0, "ff":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1718
    :cond_0
    if-lez v0, :cond_1

    .line 1719
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1722
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    .line 1723
    const/4 v0, 0x0

    .line 1724
    :goto_1
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1725
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1727
    :cond_2
    if-lez v0, :cond_3

    .line 1728
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1733
    :cond_3
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1734
    .local v1, "ch":C
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1735
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 1736
    :cond_4
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a comment or a line break, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a block scalar"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1739
    :cond_5
    :goto_2
    return-object v2
.end method

.method private scanBlockScalarIndentation()[Ljava/lang/Object;
    .locals 6

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1752
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1753
    .local v1, "maxIndent":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1757
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    :goto_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    const-string v5, " \r"

    invoke-virtual {v3, v4, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(CLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1758
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 1761
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    goto :goto_0

    .line 1767
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1768
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1769
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    goto :goto_0

    .line 1774
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    return-object v3
.end method

.method private scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1660
    const/4 v0, 0x0

    .line 1661
    .local v0, "chomping":Ljava/lang/Boolean;
    const/4 v1, -0x1

    .line 1662
    .local v1, "increment":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1663
    .local v2, "ch":C
    const/16 v3, 0x2d

    const/16 v4, 0x2b

    if-eq v2, v3, :cond_4

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 1680
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1681
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1682
    if-eqz v1, :cond_3

    .line 1687
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1688
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1689
    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_7

    .line 1690
    :cond_1
    if-ne v2, v4, :cond_2

    .line 1691
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1693
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1695
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1683
    :cond_3
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a block scalar"

    const-string v6, "expected indentation indicator in the range 1-9, but found 0"

    invoke-direct {v3, v5, p1, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1664
    :cond_4
    :goto_1
    if-ne v2, v4, :cond_5

    .line 1665
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 1667
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1669
    :goto_2
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1670
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1671
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1672
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1673
    if-eqz v1, :cond_6

    .line 1678
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1674
    :cond_6
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a block scalar"

    const-string v6, "expected indentation indicator in the range 1-9, but found 0"

    invoke-direct {v3, v5, p1, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1698
    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1699
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1704
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    invoke-direct {v3, v0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;-><init>(Ljava/lang/Boolean;I)V

    return-object v3

    .line 1700
    :cond_8
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected chomping or indentation indicators, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a block scalar"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanDirective()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 7

    .line 1223
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1225
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1226
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1227
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1228
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v3, "YAML"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1230
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    goto :goto_1

    .line 1231
    :cond_0
    const-string v3, "TAG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1232
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1233
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    goto :goto_1

    .line 1235
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 1236
    .local v3, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v4, 0x0

    .line 1237
    .local v4, "ff":I
    :goto_0
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1238
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1240
    :cond_2
    if-lez v4, :cond_3

    .line 1241
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1244
    .end local v4    # "ff":I
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    .line 1245
    new-instance v4, Lorg/yaml/snakeyaml/tokens/DirectiveToken;

    invoke-direct {v4, v1, v2, v0, v3}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v4
.end method

.method private scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1391
    const/4 v0, 0x0

    .line 1392
    .local v0, "ff":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1395
    :cond_0
    if-lez v0, :cond_1

    .line 1396
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1398
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    .line 1399
    const/4 v0, 0x0

    .line 1400
    :goto_1
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1401
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1403
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1405
    :cond_3
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1406
    .local v1, "ch":C
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1407
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    goto :goto_2

    .line 1408
    :cond_4
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected a comment or a line break, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1412
    :cond_5
    :goto_2
    return-object v2
.end method

.method private scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1256
    const/4 v0, 0x0

    .line 1260
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    .line 1261
    .local v1, "ch":C
    :goto_0
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    add-int/lit8 v0, v0, 0x1

    .line 1263
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    goto :goto_0

    .line 1266
    :cond_0
    if-eqz v0, :cond_2

    .line 1271
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    .line 1272
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1273
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1278
    return-object v2

    .line 1274
    :cond_1
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected alphabetic or numeric character, but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1267
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected alphabetic or numeric character, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    return-void
.end method

.method private scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 12
    .param p1, "style"    # C

    .line 1834
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 1835
    const/4 v0, 0x1

    goto :goto_0

    .line 1837
    :cond_0
    const/4 v0, 0x0

    .line 1839
    .local v0, "_double":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1840
    .local v1, "chunks":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1841
    .local v2, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v9

    .line 1842
    .local v9, "quote":C
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1843
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    :goto_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    if-eq v3, v9, :cond_1

    .line 1845
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1848
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1849
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    .line 1850
    .local v10, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v11, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, v11

    move-object v6, v2

    move-object v7, v10

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;C)V

    return-object v11
.end method

.method private scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1954
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, "prefix":Ljava/lang/String;
    const-string v3, "---"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "..."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1961
    :cond_1
    :goto_1
    const-string v2, " \t"

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1962
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 1966
    :cond_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1967
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1968
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "lineBreak":Ljava/lang/String;
    goto :goto_0

    .line 1970
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v2    # "lineBreak":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1957
    .end local v2    # "lineBreak":Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a quoted scalar"

    const-string v5, "found unexpected document separator"

    invoke-direct {v2, v4, p1, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    return-void
.end method

.method private scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "doubleQuoted"    # Z
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1862
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v1, 0x0

    .line 1863
    .local v1, "length":I
    :goto_1
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    const-string v4, "\'\"\\"

    invoke-virtual {v2, v3, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1864
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1866
    :cond_0
    if-eqz v1, :cond_1

    .line 1867
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    :cond_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1872
    .local v2, "ch":C
    const/16 v3, 0x27

    if-nez p1, :cond_2

    if-ne v2, v3, :cond_2

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1873
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto/16 :goto_2

    .line 1875
    :cond_2
    if-eqz p1, :cond_3

    if-eq v2, v3, :cond_4

    :cond_3
    if-nez p1, :cond_5

    const-string v3, "\"\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1876
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1877
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_2

    .line 1878
    :cond_5
    if-eqz p1, :cond_a

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_a

    .line 1879
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1880
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    .line 1881
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1885
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_2

    .line 1887
    :cond_6
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1890
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1891
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1892
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v3

    .line 1893
    .local v3, "hex":Ljava/lang/String;
    sget-object v4, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1899
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1900
    .local v4, "decimal":I
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 1901
    .local v5, "unicode":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1903
    .end local v3    # "hex":Ljava/lang/String;
    .end local v4    # "decimal":I
    .end local v5    # "unicode":Ljava/lang/String;
    goto :goto_2

    .line 1894
    .restart local v3    # "hex":Ljava/lang/String;
    :cond_7
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected escape sequence of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " hexadecimal numbers, but found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a double-quoted scalar"

    invoke-direct {v4, v7, p2, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 1903
    .end local v3    # "hex":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1904
    invoke-direct {p0, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    .end local v1    # "length":I
    .end local v2    # "ch":C
    :goto_2
    goto/16 :goto_0

    .line 1906
    .restart local v1    # "length":I
    .restart local v2    # "ch":C
    :cond_9
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found unknown escape character "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a double-quoted scalar"

    invoke-direct {v3, v6, p2, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 1911
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1919
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1922
    .local v1, "length":I
    :goto_0
    const-string v2, " \t"

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1923
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1925
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    .line 1926
    .local v2, "whitespaces":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    .line 1927
    .local v3, "ch":C
    if-eqz v3, :cond_4

    .line 1933
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v4

    .line 1934
    .local v4, "lineBreak":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1935
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v5

    .line 1936
    .local v5, "breaks":Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1937
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1938
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 1939
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    .end local v5    # "breaks":Ljava/lang/String;
    goto :goto_2

    .line 1943
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1929
    .end local v4    # "lineBreak":Ljava/lang/String;
    :cond_4
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a quoted scalar"

    const-string v7, "found unexpected end of stream"

    invoke-direct {v4, v6, p1, v7, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    return-void
.end method

.method private scanLineBreak()Ljava/lang/String;
    .locals 4

    .line 2249
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 2250
    .local v0, "ch":C
    const/16 v1, 0xa

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    const/16 v3, 0x85

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 2257
    :cond_0
    const/16 v1, 0x2028

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2029

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2261
    :cond_1
    const-string v1, ""

    return-object v1

    .line 2258
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2259
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2251
    :cond_3
    :goto_1
    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2252
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_2

    .line 2254
    :cond_4
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2256
    :goto_2
    const-string v1, "\n"

    return-object v1
.end method

.method private scanPlain()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 14

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1988
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1989
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    move-object v2, v1

    .line 1990
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v4, 0x1

    add-int/lit8 v8, v3, 0x1

    .line 1991
    .local v8, "indent":I
    const-string v3, ""

    move-object v9, v2

    move-object v10, v3

    .line 1994
    .end local v2    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v9, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v10, "spaces":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 1996
    .local v2, "length":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_0

    .line 1997
    goto/16 :goto_4

    .line 1996
    :cond_0
    move v11, v2

    .line 2000
    .end local v2    # "length":I
    .local v11, "length":I
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v12

    .line 2001
    .local v12, "ch":C
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v12}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    const/16 v3, 0x3a

    if-nez v2, :cond_3

    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_1

    if-ne v12, v3, :cond_1

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v6, v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v6

    invoke-virtual {v2, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v2, :cond_2

    const-string v2, ",:?[]{}"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    .line 2005
    goto :goto_2

    .line 2007
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2010
    :cond_3
    :goto_2
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v2, :cond_5

    if-ne v12, v3, :cond_5

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v3, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    const-string v6, ",[]{}"

    invoke-virtual {v2, v3, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(CLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 2012
    :cond_4
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 2013
    new-instance v13, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v3, "while scanning a plain scalar"

    const-string v5, "found unexpected \':\'"

    const-string v7, "Please check http://pyyaml.org/wiki/YAMLColonInFlowContext for details."

    move-object v2, v13

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;)V

    throw v13

    .line 2017
    :cond_5
    :goto_3
    if-nez v11, :cond_6

    .line 2018
    goto :goto_4

    .line 2020
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 2021
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    .line 2024
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlainSpaces()Ljava/lang/String;

    move-result-object v10

    .line 2026
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    if-eq v2, v5, :cond_8

    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    if-ge v2, v8, :cond_7

    .line 2028
    goto :goto_4

    .line 2030
    .end local v11    # "length":I
    .end local v12    # "ch":C
    :cond_7
    goto/16 :goto_0

    .line 2031
    :cond_8
    :goto_4
    new-instance v2, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v9, v4}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    return-object v2
.end method

.method private scanPlainSpaces()Ljava/lang/String;
    .locals 10

    .line 2039
    const/4 v0, 0x0

    .line 2040
    .local v0, "length":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    goto/16 :goto_4

    .line 2043
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2044
    .local v1, "whitespaces":Ljava/lang/String;
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    .line 2045
    .local v3, "lineBreak":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2046
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 2047
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2048
    .local v4, "prefix":Ljava/lang/String;
    const-string v6, "---"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "..."

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    .line 2052
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2054
    .local v6, "breaks":Ljava/lang/StringBuilder;
    :goto_1
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v7

    if-ne v7, v2, :cond_2

    .line 2055
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 2057
    :cond_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v7

    .line 2058
    .local v7, "lb":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 2059
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2061
    const-string v8, "---"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "..."

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 2068
    .end local v7    # "lb":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 2063
    .restart local v7    # "lb":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string v2, ""

    return-object v2

    .line 2070
    .end local v7    # "lb":Ljava/lang/String;
    :cond_5
    const-string v2, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2072
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 2073
    const-string v2, " "

    return-object v2

    .line 2075
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2050
    .end local v6    # "breaks":Ljava/lang/StringBuilder;
    :cond_8
    :goto_3
    const-string v2, ""

    return-object v2

    .line 2077
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_9
    return-object v1

    .line 2041
    .end local v1    # "whitespaces":Ljava/lang/String;
    .end local v3    # "lineBreak":Ljava/lang/String;
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private scanTag()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 8

    .line 1495
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1498
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    .line 1499
    .local v1, "ch":C
    const/4 v2, 0x0

    .line 1500
    .local v2, "handle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1502
    .local v3, "suffix":Ljava/lang/String;
    const/16 v4, 0x3c

    if-ne v1, v4, :cond_1

    .line 1505
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1506
    const-string v4, "tag"

    invoke-direct {p0, v4, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1507
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_0

    .line 1514
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_3

    .line 1510
    :cond_0
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \'>\', but found \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a tag"

    invoke-direct {v4, v7, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 1515
    :cond_1
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1518
    const-string v3, "!"

    .line 1519
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1525
    :cond_2
    const/4 v4, 0x1

    .line 1526
    .local v4, "length":I
    const/4 v5, 0x0

    .line 1527
    .local v5, "useHandle":Z
    :goto_0
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1528
    const/16 v6, 0x21

    if-ne v1, v6, :cond_3

    .line 1529
    const/4 v5, 0x1

    .line 1530
    goto :goto_1

    .line 1532
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1533
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    goto :goto_0

    .line 1535
    :cond_4
    :goto_1
    const-string v2, "!"

    .line 1538
    if-eqz v5, :cond_5

    .line 1539
    const-string v6, "tag"

    invoke-direct {p0, v6, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1541
    :cond_5
    const-string v2, "!"

    .line 1542
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1544
    :goto_2
    const-string v6, "tag"

    invoke-direct {p0, v6, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1546
    .end local v4    # "length":I
    .end local v5    # "useHandle":Z
    :goto_3
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1549
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1553
    new-instance v4, Lorg/yaml/snakeyaml/tokens/TagTuple;

    invoke-direct {v4, v2, v3}, Lorg/yaml/snakeyaml/tokens/TagTuple;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    .local v4, "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    .line 1555
    .local v5, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v6, Lorg/yaml/snakeyaml/tokens/TagToken;

    invoke-direct {v6, v4, v0, v5}, Lorg/yaml/snakeyaml/tokens/TagToken;-><init>(Lorg/yaml/snakeyaml/tokens/TagTuple;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v6

    .line 1550
    .end local v4    # "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    .end local v5    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_6
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \' \', but found \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a tag"

    invoke-direct {v4, v7, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    return-void
.end method

.method private scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1364
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    .line 1366
    .local v1, "ch":C
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1370
    return-object v0

    .line 1367
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected \' \', but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 5
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1380
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1386
    return-object v0

    .line 1382
    :cond_0
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \' \', but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a directive"

    invoke-direct {v1, v4, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1
.end method

.method private scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .locals 4
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1341
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1344
    :cond_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1345
    .local v0, "handle":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1346
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 1348
    :cond_1
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1350
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    return-object v2
.end method

.method private scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2103
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 2104
    .local v0, "ch":C
    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 2111
    const/4 v2, 0x1

    .line 2112
    .local v2, "length":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v0

    .line 2113
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    .line 2118
    :goto_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2119
    add-int/lit8 v2, v2, 0x1

    .line 2120
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v0

    goto :goto_0

    .line 2125
    :cond_0
    if-ne v0, v1, :cond_1

    .line 2130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2126
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 2127
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while scanning a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \'!\', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v1, v3, p2, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 2132
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2133
    .local v1, "value":Ljava/lang/String;
    return-object v1

    .line 2105
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "length":I
    :cond_3
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while scanning a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected \'!\', but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v1, v2, p2, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    return-void
.end method

.method private scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2158
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2159
    .local v1, "length":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    .line 2160
    .local v2, "ch":C
    :goto_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2161
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 2162
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    const/4 v1, 0x0

    .line 2164
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2168
    :goto_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    goto :goto_0

    .line 2172
    :cond_1
    if-eqz v1, :cond_2

    .line 2173
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    const/4 v1, 0x0

    .line 2176
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2178
    :cond_3
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "while scanning a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected URI, but found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v3, v4, p2, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    return-void
.end method

.method private scanToNextToken()V
    .locals 4

    .line 1179
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 1180
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1182
    :cond_0
    const/4 v0, 0x0

    .line 1183
    .local v0, "found":Z
    :goto_0
    if-nez v0, :cond_7

    .line 1184
    const/4 v1, 0x0

    .line 1187
    .local v1, "ff":I
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 1188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1190
    :cond_1
    if-lez v1, :cond_2

    .line 1191
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1197
    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_4

    .line 1198
    const/4 v1, 0x0

    .line 1199
    :goto_2
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1202
    :cond_3
    if-lez v1, :cond_4

    .line 1203
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1208
    :cond_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1209
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_6

    .line 1212
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_3

    .line 1215
    :cond_5
    const/4 v0, 0x1

    .line 1217
    .end local v1    # "ff":I
    :cond_6
    :goto_3
    goto :goto_0

    .line 1218
    :cond_7
    return-void
.end method

.method private scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2198
    const/4 v0, 0x1

    .line 2199
    .local v0, "length":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    mul-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    .line 2200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2206
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 2207
    .local v1, "beginningMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2208
    .local v3, "buff":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    if-ne v4, v2, :cond_1

    .line 2209
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2211
    :try_start_0
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    .line 2212
    .local v4, "code":B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2219
    nop

    .line 2220
    .end local v4    # "code":B
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_1

    .line 2213
    :catch_0
    move-exception v2

    .line 2214
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while scanning a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected URI escape sequence of 2 hexadecimal numbers, but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v4, v5, p2, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 2222
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2224
    :try_start_1
    invoke-static {v3}, Lorg/yaml/snakeyaml/util/UriEncoder;->decode(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 2225
    :catch_1
    move-exception v2

    .line 2226
    .local v2, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while scanning a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected URI in UTF-8: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p2, v6, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    return-void
.end method

.method private scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;
    .locals 5
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1314
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    .line 1315
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1319
    const/4 v1, 0x0

    .line 1320
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1323
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1324
    .local v2, "value":Ljava/lang/Integer;
    return-object v2

    .line 1316
    .end local v1    # "length":I
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a digit, but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a directive"

    invoke-direct {v1, v4, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    return-void
.end method

.method private scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .locals 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1283
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1284
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1286
    :cond_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v0

    .line 1287
    .local v0, "major":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 1292
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1293
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v1

    .line 1294
    .local v1, "minor":Ljava/lang/Integer;
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1299
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1300
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    return-object v2

    .line 1295
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected a digit or \' \', but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 1288
    .end local v1    # "minor":Ljava/lang/Integer;
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a digit or \'.\', but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a directive"

    invoke-direct {v1, v4, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    return-void
.end method

.method private stalePossibleSimpleKeys()V
    .locals 7

    .line 452
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 453
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 454
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 456
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getLine()I

    move-result v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getIndex()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    .line 462
    :cond_0
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 468
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 470
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_1
    goto :goto_0

    .line 465
    .restart local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_2
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a simple key"

    const-string v6, "could not find expected \':\'"

    invoke-direct {v2, v5, v3, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 472
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_3
    return-void
.end method

.method private unwindIndent(I)V
    .locals 3
    .param p1, "col"    # I

    .line 544
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v0, :cond_0

    .line 545
    return-void

    .line 549
    :cond_0
    :goto_0
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-le v0, p1, :cond_1

    .line 550
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 551
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 552
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockEndToken;

    invoke-direct {v2, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_0

    .line 554
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z
    .locals 5
    .param p1, "choices"    # [Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 225
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 229
    array-length v0, p1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 230
    return v2

    .line 234
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v0

    .line 235
    .local v0, "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 236
    aget-object v4, p1, v3

    if-ne v0, v4, :cond_2

    .line 237
    return v2

    .line 235
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method public getToken()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 260
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public peekToken()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 2

    .line 248
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0
.end method

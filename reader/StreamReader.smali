.class public Lorg/yaml/snakeyaml/reader/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# static fields
.field public static final NON_PRINTABLE:Ljava/util/regex/Pattern;


# instance fields
.field private buffer:Ljava/lang/String;

.field private column:I

.field private data:[C

.field private eof:Z

.field private index:I

.field private line:I

.field private name:Ljava/lang/String;

.field private pointer:I

.field private final stream:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "[^\t\n\r -~\u0085\u00a0-\ud7ff\ue000-\ufffd]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/StreamReader;->NON_PRINTABLE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 39
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 40
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 41
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 55
    const-string v1, "\'reader\'"

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    .line 58
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 59
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    .line 60
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "stream"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 39
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 40
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 41
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 45
    const-string v0, "\'string\'"

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->checkPrintable(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    .line 50
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 51
    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    .line 52
    return-void
.end method

.method public static isPrintable(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 98
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0x85

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa0

    if-lt p0, v0, :cond_1

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_1
    const v0, 0xe000

    if-lt p0, v0, :cond_2

    const v0, 0xfffd

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private update()V
    .locals 4

    .line 180
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v1

    .line 185
    .local v1, "converted":I
    if-lez v1, :cond_0

    .line 192
    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    invoke-virtual {p0, v2, v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->checkPrintable([CII)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->data:[C

    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "converted":I
    :goto_0
    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 203
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method checkPrintable(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/CharSequence;

    .line 64
    sget-object v0, Lorg/yaml/snakeyaml/reader/StreamReader;->NON_PRINTABLE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 65
    .local v0, "em":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    return-void

    .line 66
    :cond_0
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/2addr v1, v2

    .line 67
    .local v1, "position":I
    new-instance v2, Lorg/yaml/snakeyaml/reader/ReaderException;

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "special characters are not allowed"

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/yaml/snakeyaml/reader/ReaderException;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    throw v2
.end method

.method checkPrintable([CII)V
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .line 85
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 86
    aget-char v1, p1, v0

    .line 88
    .local v1, "c":C
    invoke-static {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    nop

    .line 85
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .restart local v1    # "c":C
    :cond_0
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget-object v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 93
    .local v2, "position":I
    new-instance v3, Lorg/yaml/snakeyaml/reader/ReaderException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    const-string v5, "special characters are not allowed"

    invoke-direct {v3, v4, v2, v1, v5}, Lorg/yaml/snakeyaml/reader/ReaderException;-><init>(Ljava/lang/String;ICLjava/lang/String;)V

    throw v3

    .line 95
    .end local v0    # "i":I
    .end local v1    # "c":C
    .end local v2    # "position":I
    :cond_1
    return-void
.end method

.method public forward()V
    .locals 1

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 109
    return-void
.end method

.method public forward(I)V
    .locals 4
    .param p1, "length"    # I

    .line 117
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, "ch":C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 122
    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 123
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 124
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 125
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    const v2, 0xfeff

    if-eq v0, v2, :cond_3

    .line 129
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    goto :goto_2

    .line 126
    :cond_2
    :goto_1
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 127
    const/4 v2, 0x0

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 121
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getColumn()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    return v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    check-cast v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/UnicodeReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 218
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    return v0
.end method

.method public getMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 8

    .line 104
    new-instance v7, Lorg/yaml/snakeyaml/error/Mark;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    iget-object v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v6, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    return-object v7
.end method

.method public peek()C
    .locals 2

    .line 135
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public peek(I)C
    .locals 2
    .param p1, "index"    # I

    .line 145
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public prefix(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I

    .line 158
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 159
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 161
    :cond_0
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 162
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int v2, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prefixForward(I)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I

    .line 171
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "prefix":Ljava/lang/String;
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 173
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 175
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 176
    return-object v0
.end method

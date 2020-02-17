.class public abstract Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/Escaper;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEST_PAD:I = 0x20

.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    nop

    .line 307
    new-instance v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$2;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$2;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final codePointAt(Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 263
    if-ge p1, p2, :cond_5

    .line 264
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 265
    .local p1, "c1":C
    const v1, 0xd800

    if-lt p1, v1, :cond_4

    const v1, 0xdfff

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    const v1, 0xdbff

    if-gt p1, v1, :cond_3

    .line 271
    if-ne v0, p2, :cond_1

    .line 272
    neg-int v1, p1

    return v1

    .line 275
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 276
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-static {p1, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 279
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected low surrogate but got char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .end local v1    # "c2":C
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected low surrogate character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_4
    :goto_0
    return p1

    .line 286
    .end local v0    # "index":I
    .local p1, "index":I
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 295
    new-array v0, p2, [C

    .line 296
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 297
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    :cond_0
    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;

    .line 130
    nop

    .line 132
    new-instance v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;

    invoke-direct {v0, p0, p1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;-><init>(Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 69
    .local v0, "end":I
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 70
    .local v1, "index":I
    if-ne v1, v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, "end":I
    sget-object v1, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 79
    .local v1, "dest":[C
    const/4 v2, 0x0

    .line 80
    .local v2, "destIndex":I
    const/4 v3, 0x0

    .line 82
    .local v3, "unescapedChunkStart":I
    :goto_0
    const/4 v4, 0x0

    if-ge p2, v0, :cond_5

    .line 83
    invoke-static {p1, p2, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 84
    .local v5, "cp":I
    if-ltz v5, :cond_4

    .line 87
    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    .line 88
    .local v6, "escaped":[C
    if-eqz v6, :cond_2

    .line 89
    sub-int v7, p2, v3

    .line 94
    .local v7, "charsSkipped":I
    add-int v8, v2, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 95
    .local v8, "sizeNeeded":I
    array-length v9, v1

    if-ge v9, v8, :cond_0

    .line 96
    sub-int v9, v0, p2

    add-int/2addr v9, v8

    add-int/lit8 v9, v9, 0x20

    .line 97
    .local v9, "destLength":I
    invoke-static {v1, v2, v9}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 100
    .end local v9    # "destLength":I
    :cond_0
    if-lez v7, :cond_1

    .line 101
    invoke-virtual {p1, v3, p2, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    add-int/2addr v2, v7

    .line 104
    :cond_1
    array-length v9, v6

    if-lez v9, :cond_2

    .line 105
    array-length v9, v6

    invoke-static {v6, v4, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    array-length v4, v6

    add-int/2addr v2, v4

    .line 109
    .end local v7    # "charsSkipped":I
    .end local v8    # "sizeNeeded":I
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    add-int v3, p2, v4

    .line 110
    invoke-virtual {p0, p1, v3, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 111
    .end local v5    # "cp":I
    .end local v6    # "escaped":[C
    goto :goto_0

    .line 85
    .restart local v5    # "cp":I
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Trailing high surrogate at end of input"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    .end local v5    # "cp":I
    :cond_5
    sub-int v5, v0, v3

    .line 117
    .local v5, "charsSkipped":I
    if-lez v5, :cond_7

    .line 118
    add-int v6, v2, v5

    .line 119
    .local v6, "endIndex":I
    array-length v7, v1

    if-ge v7, v6, :cond_6

    .line 120
    invoke-static {v1, v2, v6}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 122
    :cond_6
    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 123
    move v2, v6

    .line 125
    .end local v6    # "endIndex":I
    :cond_7
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 55
    move v0, p2

    .line 56
    .local v0, "index":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 57
    invoke-static {p1, v0, p3}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 58
    .local v1, "cp":I
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    goto :goto_2

    .line 61
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 62
    .end local v1    # "cp":I
    goto :goto_0

    .line 63
    :cond_2
    :goto_2
    return v0
.end method

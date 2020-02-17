.class Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;
.super Ljava/lang/Object;
.source "UnicodeEscaper.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field decodedChars:[C

.field pendingHighSurrogate:I

.field final synthetic this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

.field final synthetic val$out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;Ljava/lang/Appendable;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    iput-object p2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 p1, -0x1

    iput p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 134
    const/4 p1, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    return-void
.end method

.method private outputChars([CI)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 255
    iget-object v1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    aget-char v2, p1, v0

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "n":I
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 221
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    iget v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v2, v2

    invoke-static {v2, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 227
    .local v0, "escaped":[C
    if-eqz v0, :cond_0

    .line 228
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v3, v3

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 231
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 233
    :goto_0
    iput v1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 234
    .end local v0    # "escaped":[C
    goto :goto_1

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected low surrogate character but got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    iput p1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    goto :goto_1

    .line 238
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    iget-object v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    .line 244
    .restart local v0    # "escaped":[C
    if-eqz v0, :cond_4

    .line 245
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_1

    .line 247
    :cond_4
    iget-object v1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v1, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 250
    .end local v0    # "escaped":[C
    :goto_1
    return-object p0

    .line 239
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected low surrogate character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 7
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    move v0, p2

    .line 142
    .local v0, "index":I
    if-ge v0, p3, :cond_8

    .line 149
    move v1, v0

    .line 150
    .local v1, "unescapedChunkStart":I
    iget v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 154
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    iget-object v4, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    iget v5, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v5, v5

    invoke-static {v5, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v4

    .line 161
    .local v4, "escaped":[C
    if-eqz v4, :cond_0

    .line 165
    array-length v5, v4

    invoke-direct {p0, v4, v5}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v5, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    iget v6, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    int-to-char v6, v6

    invoke-interface {v5, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 174
    :goto_0
    iput v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    move v0, v2

    goto :goto_1

    .line 156
    .end local v4    # "escaped":[C
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected low surrogate character but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    .end local v2    # "index":I
    .local v0, "index":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v2, p1, v0, p3}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 180
    if-le v0, v1, :cond_3

    .line 181
    iget-object v2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->val$out:Ljava/lang/Appendable;

    invoke-interface {v2, p1, v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 183
    :cond_3
    if-ne v0, p3, :cond_4

    .line 184
    goto :goto_4

    .line 188
    :cond_4
    invoke-static {p1, v0, p3}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v2

    .line 189
    .local v2, "cp":I
    if-gez v2, :cond_5

    .line 193
    neg-int v3, v2

    iput v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->pendingHighSurrogate:I

    .line 194
    goto :goto_4

    .line 197
    :cond_5
    iget-object v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->this$0:Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;->escape(I)[C

    move-result-object v3

    .line 198
    .local v3, "escaped":[C
    if-eqz v3, :cond_6

    .line 199
    array-length v4, v3

    invoke-direct {p0, v3, v4}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    goto :goto_2

    .line 204
    :cond_6
    iget-object v4, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v4

    .line 205
    .local v4, "len":I
    iget-object v5, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->decodedChars:[C

    invoke-direct {p0, v5, v4}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$1;->outputChars([CI)V

    .line 209
    .end local v4    # "len":I
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x2

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    :goto_3
    add-int/2addr v0, v4

    .line 210
    move v1, v0

    .line 211
    .end local v2    # "cp":I
    .end local v3    # "escaped":[C
    goto :goto_1

    .line 213
    .end local v1    # "unescapedChunkStart":I
    :cond_8
    :goto_4
    return-object p0
.end method

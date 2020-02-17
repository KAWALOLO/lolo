.class public Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;
.super Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field public static final SAFECHARS_URLENCODER:Ljava/lang/String; = "-_.*"

.field public static final SAFEPATHCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;="

.field public static final SAFEQUERYSTRINGCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 87
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "safeChars"    # Ljava/lang/String;
    .param p2, "plusForSpace"    # Z

    .line 115
    invoke-direct {p0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;-><init>()V

    .line 117
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    :goto_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->plusForSpace:Z

    .line 132
    invoke-static {p1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    .line 133
    return-void

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 8
    .param p0, "safeChars"    # Ljava/lang/String;

    .line 141
    const/16 v0, 0x7a

    .line 142
    .local v0, "maxChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 143
    .local v1, "safeCharArray":[C
    move-object v2, v1

    .local v2, "arr$":[C
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-char v5, v2, v4

    .line 144
    .local v5, "c":C
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 143
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "arr$":[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Z

    .line 147
    .local v2, "octets":[Z
    const/16 v3, 0x30

    .local v3, "c":I
    :goto_1
    const/16 v4, 0x39

    const/4 v5, 0x1

    if-gt v3, v4, :cond_1

    .line 148
    aput-boolean v5, v2, v3

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    .end local v3    # "c":I
    :cond_1
    const/16 v3, 0x41

    .restart local v3    # "c":I
    :goto_2
    const/16 v4, 0x5a

    if-gt v3, v4, :cond_2

    .line 151
    aput-boolean v5, v2, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    .end local v3    # "c":I
    :cond_2
    const/16 v3, 0x61

    .restart local v3    # "c":I
    :goto_3
    const/16 v4, 0x7a

    if-gt v3, v4, :cond_3

    .line 154
    aput-boolean v5, v2, v3

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 156
    .end local v3    # "c":I
    :cond_3
    move-object v3, v1

    .local v3, "arr$":[C
    array-length v4, v3

    .local v4, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v4, :cond_4

    aget-char v7, v3, v6

    .line 157
    .local v7, "c":C
    aput-boolean v5, v2, v7

    .line 156
    .end local v7    # "c":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 159
    .end local v3    # "arr$":[C
    .end local v4    # "len$":I
    .end local v6    # "i$":I
    :cond_4
    return-object v2
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    .local v0, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 178
    .local v2, "c":C
    iget-object v3, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 176
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 182
    .end local v1    # "index":I
    .end local v2    # "c":C
    :cond_2
    return-object p1
.end method

.method protected escape(I)[C
    .locals 12
    .param p1, "cp"    # I

    .line 193
    iget-object v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->plusForSpace:Z

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->URI_ESCAPED_SPACE:[C

    return-object v0

    .line 197
    :cond_1
    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x25

    const/4 v5, 0x3

    if-gt p1, v0, :cond_2

    .line 200
    new-array v0, v5, [C

    .line 201
    .local v0, "dest":[C
    aput-char v4, v0, v2

    .line 202
    sget-object v2, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v3

    .line 203
    ushr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 204
    return-object v0

    .line 205
    .end local v0    # "dest":[C
    :cond_2
    const/16 v0, 0x7ff

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-gt p1, v0, :cond_3

    .line 208
    new-array v0, v7, [C

    .line 209
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 210
    aput-char v4, v0, v5

    .line 211
    sget-object v2, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v6

    .line 212
    ushr-int/2addr p1, v9

    .line 213
    and-int/lit8 v4, p1, 0x3

    or-int/2addr v4, v8

    aget-char v4, v2, v4

    aput-char v4, v0, v9

    .line 214
    ushr-int/2addr p1, v3

    .line 215
    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v3

    .line 216
    ushr-int/2addr p1, v9

    .line 217
    or-int/lit8 v3, p1, 0xc

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 218
    return-object v0

    .line 219
    .end local v0    # "dest":[C
    :cond_3
    const v0, 0xffff

    const/16 v10, 0x9

    const/4 v11, 0x7

    if-gt p1, v0, :cond_4

    .line 222
    new-array v0, v10, [C

    .line 223
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 224
    const/16 v2, 0x45

    aput-char v2, v0, v1

    .line 225
    aput-char v4, v0, v5

    .line 226
    aput-char v4, v0, v7

    .line 227
    sget-object v1, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v8

    .line 228
    ushr-int/2addr p1, v9

    .line 229
    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v2, v1, v2

    aput-char v2, v0, v11

    .line 230
    ushr-int/2addr p1, v3

    .line 231
    and-int/lit8 v2, p1, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v6

    .line 232
    ushr-int/2addr p1, v9

    .line 233
    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v2, v1, v2

    aput-char v2, v0, v9

    .line 234
    ushr-int/2addr p1, v3

    .line 235
    aget-char v1, v1, p1

    aput-char v1, v0, v3

    .line 236
    return-object v0

    .line 237
    .end local v0    # "dest":[C
    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 238
    const/16 v0, 0xc

    new-array v0, v0, [C

    .line 241
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 242
    const/16 v2, 0x46

    aput-char v2, v0, v1

    .line 243
    aput-char v4, v0, v5

    .line 244
    aput-char v4, v0, v7

    .line 245
    aput-char v4, v0, v10

    .line 246
    const/16 v1, 0xb

    sget-object v2, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v4, v2, v4

    aput-char v4, v0, v1

    .line 247
    ushr-int/2addr p1, v9

    .line 248
    const/16 v1, 0xa

    and-int/lit8 v4, p1, 0x3

    or-int/2addr v4, v8

    aget-char v4, v2, v4

    aput-char v4, v0, v1

    .line 249
    ushr-int/2addr p1, v3

    .line 250
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v2, v1

    aput-char v1, v0, v8

    .line 251
    ushr-int/2addr p1, v9

    .line 252
    and-int/lit8 v1, p1, 0x3

    or-int/2addr v1, v8

    aget-char v1, v2, v1

    aput-char v1, v0, v11

    .line 253
    ushr-int/2addr p1, v3

    .line 254
    and-int/lit8 v1, p1, 0xf

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    .line 255
    ushr-int/2addr p1, v9

    .line 256
    and-int/lit8 v1, p1, 0x3

    or-int/2addr v1, v8

    aget-char v1, v2, v1

    aput-char v1, v0, v9

    .line 257
    ushr-int/2addr p1, v3

    .line 258
    and-int/lit8 v1, p1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v3

    .line 259
    return-object v0

    .line 263
    .end local v0    # "dest":[C
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unicode character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .line 164
    :goto_0
    if-ge p2, p3, :cond_1

    .line 165
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 166
    .local v0, "c":C
    iget-object v1, p0, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/PercentEscaper;->safeOctets:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 167
    goto :goto_1

    .line 164
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    :goto_1
    return p2
.end method

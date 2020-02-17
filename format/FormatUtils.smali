.class public Lorg/joda/time/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# static fields
.field private static final LOG_10:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/Appendable;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/16 v0, 0xa

    const/16 v1, 0x30

    if-gez p1, :cond_2

    .line 70
    const/16 v2, 0x2d

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 71
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_0

    .line 72
    neg-int p1, p1

    goto :goto_1

    .line 74
    :cond_0
    :goto_0
    if-le p2, v0, :cond_1

    .line 75
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 74
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 77
    :cond_1
    const-string p1, "2147483648"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 78
    return-void

    .line 81
    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-ge p1, v0, :cond_4

    .line 82
    :goto_2
    if-le p2, v2, :cond_3

    .line 83
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 82
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 85
    :cond_3
    add-int/2addr p1, v1

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_5

    .line 86
    :cond_4
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 87
    :goto_3
    const/4 v0, 0x2

    if-le p2, v0, :cond_5

    .line 88
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 87
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 93
    :cond_5
    add-int/lit8 p2, p1, 0x1

    const v0, 0xcccccc

    mul-int p2, p2, v0

    shr-int/lit8 p2, p2, 0x1b

    .line 94
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 96
    shl-int/lit8 v0, p2, 0x3

    sub-int/2addr p1, v0

    shl-int/2addr p2, v2

    sub-int/2addr p1, p2

    add-int/2addr p1, v1

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 97
    goto :goto_5

    .line 99
    :cond_6
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_7

    .line 100
    const/4 v0, 0x3

    goto :goto_4

    .line 101
    :cond_7
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 102
    const/4 v0, 0x4

    goto :goto_4

    .line 104
    :cond_8
    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v3, v5

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 106
    :goto_4
    if-le p2, v0, :cond_9

    .line 107
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 106
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 109
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 111
    :goto_5
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/Appendable;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    long-to-int v0, p1

    .line 144
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 145
    invoke-static {p0, v0, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    goto :goto_3

    .line 146
    :cond_0
    const/16 v0, 0x13

    if-gt p3, v0, :cond_1

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    .line 149
    :cond_1
    const-wide/16 v1, 0x0

    const/16 v3, 0x30

    cmp-long v4, p1, v1

    if-gez v4, :cond_4

    .line 150
    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 151
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v4, p1, v1

    if-eqz v4, :cond_2

    .line 152
    neg-long p1, p1

    goto :goto_1

    .line 154
    :cond_2
    :goto_0
    if-le p3, v0, :cond_3

    .line 155
    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 154
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 157
    :cond_3
    const-string p1, "9223372036854775808"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 158
    return-void

    .line 161
    :cond_4
    :goto_1
    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v4, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v0, v4

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 162
    :goto_2
    if-le p3, v0, :cond_5

    .line 163
    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 162
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 165
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 167
    :goto_3
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/StringBuffer;II)V
    .locals 0

    .line 51
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 55
    :goto_0
    return-void
.end method

.method public static appendPaddedInteger(Ljava/lang/StringBuffer;JI)V
    .locals 0

    .line 125
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception p0

    .line 129
    :goto_0
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    if-gez p1, :cond_1

    .line 292
    const/16 v0, 0x2d

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 293
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 294
    neg-int p1, p1

    goto :goto_0

    .line 296
    :cond_0
    const-string p1, "2147483648"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 297
    return-void

    .line 300
    :cond_1
    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 301
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 302
    :cond_2
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 306
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int v0, v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 307
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 309
    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 310
    goto :goto_1

    .line 311
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 313
    :goto_1
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/Appendable;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    long-to-int v0, p1

    .line 341
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 342
    invoke-static {p0, v0}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 346
    :goto_0
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/StringBuffer;I)V
    .locals 0

    .line 275
    :try_start_0
    invoke-static {p0, p1}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception p0

    .line 279
    :goto_0
    return-void
.end method

.method public static appendUnpaddedInteger(Ljava/lang/StringBuffer;J)V
    .locals 0

    .line 325
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/joda/time/format/FormatUtils;->appendUnpaddedInteger(Ljava/lang/Appendable;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception p0

    .line 329
    :goto_0
    return-void
.end method

.method public static calculateDigitCount(J)I
    .locals 4

    .line 407
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gez v3, :cond_1

    .line 408
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    .line 409
    neg-long p0, p0

    invoke-static {p0, p1}, Lorg/joda/time/format/FormatUtils;->calculateDigitCount(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    .line 411
    :cond_0
    const/16 p0, 0x14

    return p0

    .line 414
    :cond_1
    const-wide/16 v1, 0xa

    cmp-long v3, p0, v1

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x64

    cmp-long v3, p0, v1

    if-gez v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x3e8

    cmp-long v3, p0, v1

    if-gez v3, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x2710

    cmp-long v3, p0, v1

    if-gez v3, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v1, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr p0, v1

    double-to-int p0, p0

    add-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method static createErrorMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 428
    add-int/lit8 v0, p1, 0x20

    .line 430
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x3

    if-gt v1, v2, :cond_0

    .line 431
    move-object v0, p0

    goto :goto_0

    .line 433
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    const/16 v1, 0x22

    if-gtz p1, :cond_1

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid format: \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 440
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p1, p0, :cond_2

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid format: \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is too short"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 444
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format: \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is malformed at \""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseTwoDigits(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 423
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 424
    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    add-int/2addr v1, p0

    add-int/lit8 v1, v1, -0x30

    return v1
.end method

.method public static writePaddedInteger(Ljava/io/Writer;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    const/16 v0, 0xa

    const/16 v1, 0x30

    if-gez p1, :cond_2

    .line 183
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 184
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_0

    .line 185
    neg-int p1, p1

    goto :goto_1

    .line 187
    :cond_0
    :goto_0
    if-le p2, v0, :cond_1

    .line 188
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 187
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 190
    :cond_1
    const-string p1, "2147483648"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 191
    return-void

    .line 194
    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-ge p1, v0, :cond_4

    .line 195
    :goto_2
    if-le p2, v2, :cond_3

    .line 196
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 195
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 198
    :cond_3
    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_5

    .line 199
    :cond_4
    const/16 v0, 0x64

    if-ge p1, v0, :cond_6

    .line 200
    :goto_3
    const/4 v0, 0x2

    if-le p2, v0, :cond_5

    .line 201
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 200
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 206
    :cond_5
    add-int/lit8 p2, p1, 0x1

    const v0, 0xcccccc

    mul-int p2, p2, v0

    shr-int/lit8 p2, p2, 0x1b

    .line 207
    add-int/lit8 v0, p2, 0x30

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 209
    shl-int/lit8 v0, p2, 0x3

    sub-int/2addr p1, v0

    shl-int/2addr p2, v2

    sub-int/2addr p1, p2

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 210
    goto :goto_5

    .line 212
    :cond_6
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_7

    .line 213
    const/4 v0, 0x3

    goto :goto_4

    .line 214
    :cond_7
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_8

    .line 215
    const/4 v0, 0x4

    goto :goto_4

    .line 217
    :cond_8
    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    sget-wide v5, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v3, v5

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 219
    :goto_4
    if-le p2, v0, :cond_9

    .line 220
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 219
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 222
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 224
    :goto_5
    return-void
.end method

.method public static writePaddedInteger(Ljava/io/Writer;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    long-to-int v0, p1

    .line 240
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 241
    invoke-static {p0, v0, p3}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    goto :goto_3

    .line 242
    :cond_0
    const/16 v0, 0x13

    if-gt p3, v0, :cond_1

    .line 243
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 245
    :cond_1
    const-wide/16 v1, 0x0

    const/16 v3, 0x30

    cmp-long v4, p1, v1

    if-gez v4, :cond_4

    .line 246
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 247
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v4, p1, v1

    if-eqz v4, :cond_2

    .line 248
    neg-long p1, p1

    goto :goto_1

    .line 250
    :cond_2
    :goto_0
    if-le p3, v0, :cond_3

    .line 251
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 250
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 253
    :cond_3
    const-string p1, "9223372036854775808"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 254
    return-void

    .line 257
    :cond_4
    :goto_1
    long-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v4, Lorg/joda/time/format/FormatUtils;->LOG_10:D

    div-double/2addr v0, v4

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 258
    :goto_2
    if-le p3, v0, :cond_5

    .line 259
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 258
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 261
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 263
    :goto_3
    return-void
.end method

.method public static writeUnpaddedInteger(Ljava/io/Writer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    if-gez p1, :cond_1

    .line 360
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 361
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 362
    neg-int p1, p1

    goto :goto_0

    .line 364
    :cond_0
    const-string p1, "2147483648"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    return-void

    .line 368
    :cond_1
    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    .line 369
    add-int/lit8 p1, p1, 0x30

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 370
    :cond_2
    const/16 v0, 0x64

    if-ge p1, v0, :cond_3

    .line 374
    add-int/lit8 v0, p1, 0x1

    const v1, 0xcccccc

    mul-int v0, v0, v1

    shr-int/lit8 v0, v0, 0x1b

    .line 375
    add-int/lit8 v1, v0, 0x30

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 377
    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr p1, v1

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x30

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 378
    goto :goto_1

    .line 379
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    :goto_1
    return-void
.end method

.method public static writeUnpaddedInteger(Ljava/io/Writer;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    long-to-int v0, p1

    .line 395
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 396
    invoke-static {p0, v0}, Lorg/joda/time/format/FormatUtils;->writeUnpaddedInteger(Ljava/io/Writer;I)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void
.end method

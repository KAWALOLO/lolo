.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneOffset"
.end annotation


# instance fields
.field private final iMaxFields:I

.field private final iMinFields:I

.field private final iShowSeparators:Z

.field private final iZeroOffsetParseText:Ljava/lang/String;

.field private final iZeroOffsetPrintText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1965
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    .line 1966
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    .line 1967
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    .line 1968
    if-lez p4, :cond_1

    if-lt p5, p4, :cond_1

    .line 1971
    const/4 p1, 0x4

    if-le p4, p1, :cond_0

    .line 1972
    nop

    .line 1973
    const/4 p5, 0x4

    goto :goto_0

    .line 1971
    :cond_0
    move p1, p4

    .line 1975
    :goto_0
    iput p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    .line 1976
    iput p5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    .line 1977
    return-void

    .line 1969
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private digitCount(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 2233
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2234
    const/4 v0, 0x0

    .line 2235
    :goto_0
    if-lez p3, :cond_1

    .line 2236
    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2237
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    .line 2238
    goto :goto_1

    .line 2240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2235
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 2242
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 2054
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 3

    .line 1980
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 1981
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v2, :cond_0

    .line 1982
    add-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    .line 1984
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1985
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1987
    :cond_1
    return v1
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 2058
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 2061
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 2062
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2064
    if-lez v0, :cond_0

    .line 2065
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2066
    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    .line 2067
    goto :goto_0

    .line 2070
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2071
    return p3

    .line 2073
    :cond_1
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-static {p2, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->csStartsWithIgnoreCase(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2074
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2075
    iget-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    .line 2081
    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 2082
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2086
    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 2087
    if-ne v5, v3, :cond_4

    .line 2088
    const/4 v2, 0x1

    goto :goto_1

    .line 2089
    :cond_4
    if-ne v5, v2, :cond_1a

    .line 2090
    const/4 v2, 0x0

    .line 2095
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 2096
    add-int/2addr p3, v1

    .line 2110
    const/4 v3, 0x2

    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ge v5, v3, :cond_5

    .line 2112
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2117
    :cond_5
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2118
    const/16 v6, 0x17

    if-le v5, v6, :cond_6

    .line 2119
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2121
    :cond_6
    const v6, 0x36ee80

    mul-int v5, v5, v6

    .line 2122
    add-int/lit8 v0, v0, -0x2

    .line 2123
    add-int/2addr p3, v3

    .line 2129
    if-gtz v0, :cond_7

    .line 2130
    goto/16 :goto_3

    .line 2134
    :cond_7
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2135
    const/16 v7, 0x3a

    const/16 v8, 0x30

    if-ne v6, v7, :cond_8

    .line 2136
    nop

    .line 2137
    add-int/lit8 v0, v0, -0x1

    .line 2138
    add-int/lit8 p3, p3, 0x1

    const/4 v4, 0x1

    goto :goto_2

    .line 2139
    :cond_8
    if-lt v6, v8, :cond_18

    const/16 v9, 0x39

    if-gt v6, v9, :cond_18

    .line 2140
    nop

    .line 2147
    :goto_2
    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 2148
    if-nez v6, :cond_9

    if-nez v4, :cond_9

    .line 2149
    goto/16 :goto_3

    .line 2150
    :cond_9
    if-ge v6, v3, :cond_a

    .line 2152
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2155
    :cond_a
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 2156
    const/16 v9, 0x3b

    if-le v6, v9, :cond_b

    .line 2157
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2159
    :cond_b
    const v10, 0xea60

    mul-int v6, v6, v10

    add-int/2addr v5, v6

    .line 2160
    add-int/lit8 v0, v0, -0x2

    .line 2161
    add-int/lit8 p3, p3, 0x2

    .line 2165
    if-gtz v0, :cond_c

    .line 2166
    goto/16 :goto_3

    .line 2169
    :cond_c
    if-eqz v4, :cond_e

    .line 2170
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_d

    .line 2171
    goto/16 :goto_3

    .line 2173
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 2174
    add-int/lit8 p3, p3, 0x1

    .line 2177
    :cond_e
    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 2178
    if-nez v6, :cond_f

    if-nez v4, :cond_f

    .line 2179
    goto :goto_3

    .line 2180
    :cond_f
    if-ge v6, v3, :cond_10

    .line 2182
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2185
    :cond_10
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 2186
    if-le v6, v9, :cond_11

    .line 2187
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2189
    :cond_11
    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    .line 2190
    add-int/lit8 v0, v0, -0x2

    .line 2191
    add-int/lit8 p3, p3, 0x2

    .line 2195
    if-gtz v0, :cond_12

    .line 2196
    goto :goto_3

    .line 2199
    :cond_12
    if-eqz v4, :cond_14

    .line 2200
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_13

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x2c

    if-eq v0, v6, :cond_13

    .line 2201
    goto :goto_3

    .line 2203
    :cond_13
    nop

    .line 2204
    add-int/lit8 p3, p3, 0x1

    .line 2207
    :cond_14
    const/4 v0, 0x3

    invoke-direct {p0, p2, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 2208
    if-nez v0, :cond_15

    if-nez v4, :cond_15

    .line 2209
    goto :goto_3

    .line 2210
    :cond_15
    if-ge v0, v1, :cond_16

    .line 2212
    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 2215
    :cond_16
    add-int/lit8 v4, p3, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    sub-int/2addr p3, v8

    mul-int/lit8 p3, p3, 0x64

    add-int/2addr v5, p3

    .line 2216
    if-le v0, v1, :cond_17

    .line 2217
    add-int/lit8 p3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v5, v1

    .line 2218
    if-le v0, v3, :cond_18

    .line 2219
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    sub-int/2addr p2, v8

    add-int/2addr v5, p2

    move p3, v0

    goto :goto_3

    .line 2216
    :cond_17
    move p3, v4

    .line 2224
    :cond_18
    :goto_3
    if-eqz v2, :cond_19

    neg-int v5, v5

    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2225
    return p3

    .line 2092
    :cond_1a
    xor-int/lit8 p1, p3, -0x1

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1993
    if-nez p6, :cond_0

    .line 1994
    return-void

    .line 1996
    :cond_0
    if-nez p5, :cond_1

    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 1997
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1998
    return-void

    .line 2000
    :cond_1
    if-ltz p5, :cond_2

    .line 2001
    const/16 p2, 0x2b

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 2003
    :cond_2
    const/16 p2, 0x2d

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2004
    neg-int p5, p5

    .line 2007
    :goto_0
    const p2, 0x36ee80

    div-int p3, p5, p2

    .line 2008
    const/4 p4, 0x2

    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2009
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p7, 0x1

    if-ne p6, p7, :cond_3

    .line 2010
    return-void

    .line 2012
    :cond_3
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    .line 2013
    if-nez p5, :cond_4

    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p7, :cond_4

    .line 2014
    return-void

    .line 2017
    :cond_4
    const p2, 0xea60

    div-int p3, p5, p2

    .line 2018
    iget-boolean p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    const/16 p7, 0x3a

    if-eqz p6, :cond_5

    .line 2019
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2021
    :cond_5
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2022
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-ne p6, p4, :cond_6

    .line 2023
    return-void

    .line 2025
    :cond_6
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    .line 2026
    if-nez p5, :cond_7

    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_7

    .line 2027
    return-void

    .line 2030
    :cond_7
    div-int/lit16 p2, p5, 0x3e8

    .line 2031
    iget-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p3, :cond_8

    .line 2032
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2034
    :cond_8
    invoke-static {p1, p2, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2035
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_9

    .line 2036
    return-void

    .line 2038
    :cond_9
    mul-int/lit16 p2, p2, 0x3e8

    sub-int/2addr p5, p2

    .line 2039
    if-nez p5, :cond_a

    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_a

    .line 2040
    return-void

    .line 2043
    :cond_a
    iget-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p2, :cond_b

    .line 2044
    const/16 p2, 0x2e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2046
    :cond_b
    invoke-static {p1, p5, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2047
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2051
    return-void
.end method

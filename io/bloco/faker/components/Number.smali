.class public Lio/bloco/faker/components/Number;
.super Lio/bloco/faker/FakerComponent;
.source "Number.java"


# static fields
.field private static final DEFAULT_DECIMAL_PART_DIGITS:I = 0x2

.field private static final DEFAULT_FROM:I = 0x1

.field private static final DEFAULT_TO:I = 0x1388


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 13
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 14
    return-void
.end method


# virtual methods
.method public between(DD)D
    .locals 2
    .param p1, "from"    # D
    .param p3, "to"    # D

    .line 79
    iget-object v0, p0, Lio/bloco/faker/components/Number;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bloco/faker/helpers/RandomHelper;->range(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public between()I
    .locals 2

    .line 67
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v0

    return v0
.end method

.method public between(II)I
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 71
    iget-object v0, p0, Lio/bloco/faker/components/Number;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0, p1, p2}, Lio/bloco/faker/helpers/RandomHelper;->range(II)I

    move-result v0

    return v0
.end method

.method public between(JJ)J
    .locals 2
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 75
    iget-object v0, p0, Lio/bloco/faker/components/Number;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bloco/faker/helpers/RandomHelper;->range(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public decimal(I)Ljava/lang/String;
    .locals 1
    .param p1, "leftDigits"    # I

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Number;->decimal(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decimal(II)Ljava/lang/String;
    .locals 2
    .param p1, "leftDigits"    # I
    .param p2, "rightDigits"    # I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lio/bloco/faker/components/Number;->number(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lio/bloco/faker/components/Number;->decimalPart(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decimalPart(I)Ljava/lang/String;
    .locals 3
    .param p1, "digits"    # I

    .line 34
    const-string v0, ""

    .line 35
    .local v0, "num":Ljava/lang/String;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lio/bloco/faker/components/Number;->nonZeroDigit()Ljava/lang/String;

    move-result-object v0

    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lio/bloco/faker/components/Number;->leadingZeroNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public digit()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lio/bloco/faker/components/Number;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hexadecimal(I)Ljava/lang/String;
    .locals 6
    .param p1, "digits"    # I

    .line 59
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 60
    const-string v0, ""

    return-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lio/bloco/faker/components/Number;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lio/bloco/faker/helpers/RandomHelper;->number(J)J

    move-result-wide v1

    .line 63
    .local v1, "num":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leadingZeroNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "digits"    # I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lio/bloco/faker/components/Number;->digit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public negative(DD)D
    .locals 4
    .param p1, "from"    # D
    .param p3, "to"    # D

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bloco/faker/components/Number;->between(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public negative()I
    .locals 2

    .line 99
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Number;->negative(II)I

    move-result v0

    return v0
.end method

.method public negative(II)I
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 103
    invoke-virtual {p0, p1, p2}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public negative(JJ)J
    .locals 4
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 107
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bloco/faker/components/Number;->between(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public nonZeroDigit()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lio/bloco/faker/components/Number;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public number(I)Ljava/lang/String;
    .locals 3
    .param p1, "digits"    # I

    .line 17
    const-string v0, ""

    .line 18
    .local v0, "num":Ljava/lang/String;
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lio/bloco/faker/components/Number;->nonZeroDigit()Ljava/lang/String;

    move-result-object v0

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lio/bloco/faker/components/Number;->leadingZeroNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public positive(DD)D
    .locals 2
    .param p1, "from"    # D
    .param p3, "to"    # D

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bloco/faker/components/Number;->between(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public positive()I
    .locals 2

    .line 83
    const/4 v0, 0x1

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Number;->positive(II)I

    move-result v0

    return v0
.end method

.method public positive(II)I
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 87
    invoke-virtual {p0, p1, p2}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public positive(JJ)J
    .locals 2
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bloco/faker/components/Number;->between(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

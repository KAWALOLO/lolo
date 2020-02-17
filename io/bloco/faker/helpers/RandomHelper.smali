.class public Lio/bloco/faker/helpers/RandomHelper;
.super Ljava/lang/Object;
.source "RandomHelper.java"


# instance fields
.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    .line 12
    return-void
.end method


# virtual methods
.method public digit()Ljava/lang/String;
    .locals 2

    .line 19
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public number(I)I
    .locals 1
    .param p1, "max"    # I

    .line 27
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public number(J)J
    .locals 2
    .param p1, "max"    # J

    .line 31
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    rem-long/2addr v0, p1

    return-wide v0
.end method

.method public numberByLength(I)I
    .locals 5
    .param p1, "length"    # I

    .line 35
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public randBoolean()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public randDouble()D
    .locals 2

    .line 72
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public range(DD)D
    .locals 4
    .param p1, "min"    # D
    .param p3, "max"    # D

    .line 63
    cmpg-double v0, p3, p1

    if-gez v0, :cond_0

    .line 64
    move-wide v0, p3

    .line 65
    .local v0, "temp":D
    move-wide p3, p1

    .line 66
    move-wide p1, v0

    .line 68
    .end local v0    # "temp":D
    :cond_0
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    sub-double v2, p3, p1

    mul-double v0, v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public range(II)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 39
    if-ne p1, p2, :cond_0

    .line 40
    return p1

    .line 42
    :cond_0
    if-ge p2, p1, :cond_1

    .line 43
    move v0, p2

    .line 44
    .local v0, "temp":I
    move p2, p1

    .line 45
    move p1, v0

    .line 47
    .end local v0    # "temp":I
    :cond_1
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public range(JJ)J
    .locals 4
    .param p1, "min"    # J
    .param p3, "max"    # J

    .line 51
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 52
    return-wide p1

    .line 54
    :cond_0
    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    .line 55
    move-wide v0, p3

    .line 56
    .local v0, "temp":J
    move-wide p3, p1

    .line 57
    move-wide p1, v0

    .line 59
    .end local v0    # "temp":J
    :cond_1
    sub-long v0, p3, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public sample(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 15
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lio/bloco/faker/helpers/RandomHelper;->random:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

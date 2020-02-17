.class public Lio/bloco/faker/components/Color;
.super Lio/bloco/faker/FakerComponent;
.source "Color.java"


# static fields
.field public static final MAX_HSL:D = 360.0

.field public static final MAX_RGB:I = 0x100


# instance fields
.field private mathHelper:Lio/bloco/faker/helpers/MathHelper;


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 1
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 15
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 16
    new-instance v0, Lio/bloco/faker/helpers/MathHelper;

    invoke-direct {v0}, Lio/bloco/faker/helpers/MathHelper;-><init>()V

    iput-object v0, p0, Lio/bloco/faker/components/Color;->mathHelper:Lio/bloco/faker/helpers/MathHelper;

    .line 17
    return-void
.end method


# virtual methods
.method public alphaChannel()D
    .locals 2

    .line 40
    iget-object v0, p0, Lio/bloco/faker/components/Color;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0}, Lio/bloco/faker/helpers/RandomHelper;->randDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public colorName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "color.name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Color;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hexColor()Ljava/lang/String;
    .locals 7

    .line 20
    const-string v0, "#%06x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/bloco/faker/components/Color;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hslColor()[D
    .locals 4

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleHslColor()D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleHslColor()D

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleHslColor()D

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public hslaColor()[D
    .locals 4

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [D

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleHslColor()D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleHslColor()D

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleHslColor()D

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->alphaChannel()D

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public rgbColor()[I
    .locals 3

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleRgbColor()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleRgbColor()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Lio/bloco/faker/components/Color;->singleRgbColor()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public singleHslColor()D
    .locals 6

    .line 36
    iget-object v0, p0, Lio/bloco/faker/components/Color;->mathHelper:Lio/bloco/faker/helpers/MathHelper;

    iget-object v1, p0, Lio/bloco/faker/components/Color;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const-wide/16 v2, 0x0

    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/bloco/faker/helpers/RandomHelper;->range(DD)D

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lio/bloco/faker/helpers/MathHelper;->round(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public singleRgbColor()I
    .locals 2

    .line 28
    iget-object v0, p0, Lio/bloco/faker/components/Color;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v0

    return v0
.end method

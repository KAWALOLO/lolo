.class public Lio/bloco/faker/components/Bool;
.super Lio/bloco/faker/FakerComponent;
.source "Bool.java"


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 9
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bool()Z
    .locals 1

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Bool;->bool(F)Z

    move-result v0

    return v0
.end method

.method public bool(F)Z
    .locals 5
    .param p1, "trueRatio"    # F

    .line 17
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

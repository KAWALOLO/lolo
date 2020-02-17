.class public Lio/bloco/faker/helpers/MathHelper;
.super Ljava/lang/Object;
.source "MathHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public round(DI)D
    .locals 4
    .param p1, "number"    # D
    .param p3, "precision"    # I

    .line 9
    int-to-double v0, p3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 10
    .local v0, "precisionPow":D
    mul-double v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    return-wide v2
.end method

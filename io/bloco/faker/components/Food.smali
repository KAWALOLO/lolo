.class public Lio/bloco/faker/components/Food;
.super Lio/bloco/faker/FakerComponent;
.source "Food.java"


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
.method public description()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "food.descriptions"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Food;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dish()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "food.dish"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Food;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ingredient()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "food.ingredients"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Food;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public measurement()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "food.measurement_sizes"

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Food;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "food.measurements"

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Food;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public metricMeasurement()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "food.metric_measurements"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Food;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public spice()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "food.spices"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Food;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

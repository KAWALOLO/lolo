.class public Lio/bloco/faker/components/SlackEmoji;
.super Lio/bloco/faker/FakerComponent;
.source "SlackEmoji.java"


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
.method public activity()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "slack_emoji.activity"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public celebration()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "slack_emoji.celebration"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public custom()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "slack_emoji.custom"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public emoji()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "slack_emoji.emoji"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public foodAndDrink()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "slack_emoji.food_and_drink"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nature()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "slack_emoji.nature"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectsAndSymbols()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "slack_emoji.objects_and_symbols"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public people()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "slack_emoji.people"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public travelAndPlaces()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "slack_emoji.travel_and_places"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/SlackEmoji;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

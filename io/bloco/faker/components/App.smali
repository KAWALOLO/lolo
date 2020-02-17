.class public Lio/bloco/faker/components/App;
.super Lio/bloco/faker/FakerComponent;
.source "App.java"


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
.method public author()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "app.author"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/App;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/App;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "app.name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/App;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "app.version"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/App;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/App;->numerify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

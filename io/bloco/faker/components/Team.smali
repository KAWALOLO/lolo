.class public Lio/bloco/faker/components/Team;
.super Lio/bloco/faker/FakerComponent;
.source "Team.java"


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
.method public creature()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "team.creature"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Team;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "team.name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Team;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Team;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sport()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "team.sport"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Team;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public state()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "address.state"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Team;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

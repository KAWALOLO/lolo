.class public Lio/bloco/faker/components/Name;
.super Lio/bloco/faker/FakerComponent;
.source "Name.java"


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 11
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 12
    return-void
.end method


# virtual methods
.method public firstName()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, "name.first_name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jobTitles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    const-string v0, "name"

    const-string v1, "title"

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Name;->getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "job"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public lastName()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "name.last_name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "name.name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nameWithMiddle()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "name.name_with_middle"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prefix()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "name.prefix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public suffix()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "name.suffix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name.title.descriptor"

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name.title.level"

    .line 32
    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name.title.job"

    .line 33
    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Name;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

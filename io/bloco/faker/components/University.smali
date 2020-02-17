.class public Lio/bloco/faker/components/University;
.super Lio/bloco/faker/FakerComponent;
.source "University.java"


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
.method public name()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "university.name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/University;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/University;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prefix()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "university.prefix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/University;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public suffix()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "university.suffix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/University;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

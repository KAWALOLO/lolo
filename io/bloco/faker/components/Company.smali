.class public Lio/bloco/faker/components/Company;
.super Lio/bloco/faker/FakerComponent;
.source "Company.java"


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
.method public bs()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "company.bs"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Company;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buzzwords()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "company.buzzwords"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Company;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public catchPhrase()Ljava/lang/String;
    .locals 6

    .line 27
    const-string v0, "company"

    const-string v1, "buzzwords"

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Company;->getList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "buzzwordsSections":Ljava/util/List;
    const-string v1, ""

    .line 29
    .local v1, "catchPhrase":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 30
    .local v3, "buzzwordsSection":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v5}, Lio/bloco/faker/components/Company;->sampleFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    .end local v3    # "buzzwordsSection":Ljava/lang/Object;
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public industry()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "company.industry"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Company;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logo()Ljava/lang/String;
    .locals 3

    .line 44
    iget-object v0, p0, Lio/bloco/faker/components/Company;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lio/bloco/faker/helpers/RandomHelper;->range(II)I

    move-result v0

    .line 45
    .local v0, "randomNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://pigment.github.io/fake-logos/logos/medium/color/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 15
    const-string v0, "company.name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Company;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Company;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public profession()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "company.profession"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Company;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public suffix()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "company.suffix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Company;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

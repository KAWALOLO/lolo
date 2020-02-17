.class public Lio/bloco/faker/components/Commerce;
.super Lio/bloco/faker/FakerComponent;
.source "Commerce.java"


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 15
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 16
    return-void
.end method

.method private getCategories(I)Ljava/util/List;
    .locals 3
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 83
    const-string v1, "commerce.department"

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Commerce;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "category":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v1    # "category":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    return-object v0
.end method

.method private mergeCategories(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "commaCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/bloco/faker/components/Commerce;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v2, ", "

    invoke-virtual {v1, v0, v2}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "commaSeparated":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bloco/faker/components/Commerce;->getSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public color()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "color.colorName"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Commerce;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public department()Ljava/lang/String;
    .locals 1

    .line 23
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Commerce;->department(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public department(I)Ljava/lang/String;
    .locals 1
    .param p1, "max"    # I

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Commerce;->department(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public department(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "max"    # I
    .param p2, "fixedAmount"    # Z

    .line 33
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 34
    move v1, p1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lio/bloco/faker/components/Commerce;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v1, p1}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 39
    .local v1, "num":I
    :goto_0
    invoke-direct {p0, v1}, Lio/bloco/faker/components/Commerce;->getCategories(I)Ljava/util/List;

    move-result-object v2

    .line 41
    .local v2, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-le v1, v0, :cond_1

    .line 42
    invoke-direct {p0, v2}, Lio/bloco/faker/components/Commerce;->mergeCategories(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public material()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "commerce.product_name.material"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Commerce;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public price()Ljava/math/BigDecimal;
    .locals 2

    .line 59
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lio/bloco/faker/components/Commerce;->price(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public price(II)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 63
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lio/bloco/faker/components/Commerce;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v1, p1, p2}, Lio/bloco/faker/helpers/RandomHelper;->range(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v1, Ljava/math/MathContext;

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public productName()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commerce.product_name.adjective"

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Commerce;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "commerce.product_name.material"

    .line 50
    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Commerce;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "commerce.product_name.product"

    .line 51
    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Commerce;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public promotionCode()Ljava/lang/String;
    .locals 1

    .line 68
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Commerce;->promotionCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public promotionCode(I)Ljava/lang/String;
    .locals 2
    .param p1, "digits"    # I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commerce.promotion_code.adjective"

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Commerce;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "commerce.promotion_code.noun"

    .line 73
    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Commerce;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/bloco/faker/components/Number;

    .line 74
    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Commerce;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Number;

    invoke-virtual {v1, p1}, Lio/bloco/faker/components/Number;->number(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method

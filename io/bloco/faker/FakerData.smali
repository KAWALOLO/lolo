.class public Lio/bloco/faker/FakerData;
.super Ljava/lang/Object;
.source "FakerData.java"


# instance fields
.field private final components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bloco/faker/FakerComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final stringHelper:Lio/bloco/faker/helpers/StringHelper;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/bloco/faker/FakerData;->data:Ljava/util/Map;

    .line 39
    const/16 v0, 0x15

    new-array v0, v0, [Lio/bloco/faker/FakerComponent;

    new-instance v1, Lio/bloco/faker/components/Address;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Address;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lio/bloco/faker/components/App;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/App;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Avatar;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Avatar;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Book;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Book;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Bool;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Bool;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Business;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Business;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Color;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Color;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Commerce;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Commerce;-><init>(Lio/bloco/faker/FakerData;)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Company;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Company;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Date;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Date;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Food;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Food;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Internet;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Internet;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Lorem;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Lorem;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Name;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Name;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Number;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Number;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Placeholdit;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Placeholdit;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/PhoneNumber;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/PhoneNumber;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/SlackEmoji;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/SlackEmoji;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Team;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Team;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/Time;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/Time;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lio/bloco/faker/components/University;

    invoke-direct {v1, p0}, Lio/bloco/faker/components/University;-><init>(Lio/bloco/faker/FakerData;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    .line 63
    .local v0, "componentsList":[Lio/bloco/faker/FakerComponent;
    new-instance v1, Ljava/util/HashMap;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lio/bloco/faker/FakerData;->components:Ljava/util/Map;

    .line 65
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 66
    .local v3, "component":Lio/bloco/faker/FakerComponent;
    iget-object v4, p0, Lio/bloco/faker/FakerData;->components:Ljava/util/Map;

    invoke-virtual {v3}, Lio/bloco/faker/FakerComponent;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v3    # "component":Lio/bloco/faker/FakerComponent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Lio/bloco/faker/helpers/StringHelper;

    invoke-direct {v1}, Lio/bloco/faker/helpers/StringHelper;-><init>()V

    iput-object v1, p0, Lio/bloco/faker/FakerData;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    .line 70
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "componentKey"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lio/bloco/faker/FakerData;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lio/bloco/faker/FakerComponent;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)TK;"
        }
    .end annotation

    .line 73
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "componentKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lio/bloco/faker/FakerData;->getComponentByKey(Ljava/lang/String;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    return-object v1
.end method

.method public getComponentByKey(Ljava/lang/String;)Lio/bloco/faker/FakerComponent;
    .locals 5
    .param p1, "componentKey"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lio/bloco/faker/FakerData;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    invoke-virtual {v0, p1}, Lio/bloco/faker/helpers/StringHelper;->camelToSnake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "componentKeyInSnake":Ljava/lang/String;
    iget-object v1, p0, Lio/bloco/faker/FakerData;->components:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/FakerComponent;

    .line 81
    .local v1, "component":Lio/bloco/faker/FakerComponent;
    if-eqz v1, :cond_0

    .line 85
    return-object v1

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getComponentData(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "componentKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lio/bloco/faker/FakerData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 90
    .local v0, "component":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 93
    return-object v0

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported component \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

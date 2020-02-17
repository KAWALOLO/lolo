.class public abstract Lio/bloco/faker/FakerComponent;
.super Ljava/lang/Object;
.source "FakerComponent.java"


# static fields
.field private static final DIGIT_SYMBOL:Ljava/lang/String; = "#"

.field private static final PARSE_REGEXP:Ljava/lang/String; = "\\#\\{(.+?)\\}"


# instance fields
.field private final data:Lio/bloco/faker/FakerData;

.field protected final randomHelper:Lio/bloco/faker/helpers/RandomHelper;

.field protected final stringHelper:Lio/bloco/faker/helpers/StringHelper;


# direct methods
.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 1
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/bloco/faker/FakerComponent;->data:Lio/bloco/faker/FakerData;

    .line 22
    new-instance v0, Lio/bloco/faker/helpers/RandomHelper;

    invoke-direct {v0}, Lio/bloco/faker/helpers/RandomHelper;-><init>()V

    iput-object v0, p0, Lio/bloco/faker/FakerComponent;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    .line 23
    new-instance v0, Lio/bloco/faker/helpers/StringHelper;

    invoke-direct {v0}, Lio/bloco/faker/helpers/StringHelper;-><init>()V

    iput-object v0, p0, Lio/bloco/faker/FakerComponent;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    .line 24
    return-void
.end method

.method private callMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "methodKey"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lio/bloco/faker/FakerComponent;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    invoke-virtual {v0, p1}, Lio/bloco/faker/helpers/StringHelper;->snakeToCamel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "methodKeyCamel":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v1, "value":Ljava/lang/String;
    nop

    .line 114
    return-object v1

    .line 109
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for component \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Lio/bloco/faker/FakerComponent;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getComponentData(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
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

    .line 126
    iget-object v0, p0, Lio/bloco/faker/FakerComponent;->data:Lio/bloco/faker/FakerData;

    invoke-virtual {v0, p1}, Lio/bloco/faker/FakerData;->getComponentData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected call(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 63
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "keys":[Ljava/lang/String;
    iget-object v1, p0, Lio/bloco/faker/FakerComponent;->data:Lio/bloco/faker/FakerData;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponentByKey(Ljava/lang/String;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lio/bloco/faker/FakerComponent;->callMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "keys":[Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;->callMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fetch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 31
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "keys":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 35
    aget-object v1, v0, v3

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lio/bloco/faker/FakerComponent;->getList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_0
    aget-object v1, v0, v3

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lio/bloco/faker/FakerComponent;->getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 40
    .local v1, "list":Ljava/util/List;
    :goto_0
    invoke-virtual {p0, v1}, Lio/bloco/faker/FakerComponent;->sampleFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Lio/bloco/faker/FakerComponent;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)TK;"
        }
    .end annotation

    .line 97
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lio/bloco/faker/FakerData;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lio/bloco/faker/FakerComponent;->data:Lio/bloco/faker/FakerData;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bloco/faker/FakerComponent;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported component \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lio/bloco/faker/FakerComponent;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/StringHelper;->camelToSnake(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "componentKey"    # Ljava/lang/String;
    .param p2, "listKey"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;->getComponentData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 89
    .local v0, "list":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 92
    return-object v0

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "componentKey"    # Ljava/lang/String;
    .param p2, "listKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;->getComponentData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 119
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 122
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getSeparator()Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lio/bloco/faker/FakerComponent;->data:Lio/bloco/faker/FakerData;

    const-string v1, "separator"

    invoke-virtual {v0, v1}, Lio/bloco/faker/FakerData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected numerify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lio/bloco/faker/FakerComponent;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v1, "#"

    new-instance v2, Lio/bloco/faker/FakerComponent$1;

    invoke-direct {v2, p0}, Lio/bloco/faker/FakerComponent$1;-><init>(Lio/bloco/faker/FakerComponent;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/bloco/faker/helpers/StringHelper;->replaceMethod(Ljava/lang/String;Ljava/lang/String;Lio/bloco/faker/helpers/StringHelper$StringReplacer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lio/bloco/faker/FakerComponent;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v1, "\\#\\{(.+?)\\}"

    new-instance v2, Lio/bloco/faker/FakerComponent$2;

    invoke-direct {v2, p0}, Lio/bloco/faker/FakerComponent$2;-><init>(Lio/bloco/faker/FakerComponent;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/bloco/faker/helpers/StringHelper;->replaceMethod(Ljava/lang/String;Ljava/lang/String;Lio/bloco/faker/helpers/StringHelper$StringReplacer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sampleFromList(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "options"    # Ljava/util/List;

    .line 76
    iget-object v0, p0, Lio/bloco/faker/FakerComponent;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0, p1}, Lio/bloco/faker/helpers/RandomHelper;->sample(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "option":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 80
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lio/bloco/faker/FakerComponent;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lio/bloco/faker/helpers/RandomHelper;->sample(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported data type"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

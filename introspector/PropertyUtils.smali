.class public Lorg/yaml/snakeyaml/introspector/PropertyUtils;
.super Ljava/lang/Object;
.source "PropertyUtils.java"


# instance fields
.field private allowReadOnlyProperties:Z

.field private beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field private final propertiesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private final readableProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private skipMissingProperties:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    .line 33
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    iput-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    .line 35
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    return-void
.end method


# virtual methods
.method protected createPropertySet(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;
    .locals 5
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 71
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 72
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 73
    .local v1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/introspector/Property;

    .line 74
    .local v3, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/introspector/Property;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .end local v3    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_1
    goto :goto_0

    .line 78
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 57
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {p0, p1, v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;
    .locals 2
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 61
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->createPropertySet(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Set;

    move-result-object v0

    .line 65
    .local v0, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

.method protected getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;
    .locals 9
    .param p2, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 38
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 42
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/Property;>;"
    move-object v1, p1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 45
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 46
    .local v6, "modifiers":I
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 48
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/yaml/snakeyaml/introspector/FieldProperty;

    invoke-direct {v8, v5}, Lorg/yaml/snakeyaml/introspector/FieldProperty;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "modifiers":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 43
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 52
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method public getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 83
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/Class;Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 88
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p3}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getPropertiesMap(Ljava/lang/Class;Lorg/yaml/snakeyaml/introspector/BeanAccess;)Ljava/util/Map;

    move-result-object v0

    .line 89
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/yaml/snakeyaml/introspector/Property;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/introspector/Property;

    .line 90
    .local v1, "property":Lorg/yaml/snakeyaml/introspector/Property;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    if-eqz v2, :cond_0

    .line 91
    new-instance v2, Lorg/yaml/snakeyaml/introspector/MissingProperty;

    invoke-direct {v2, p2}, Lorg/yaml/snakeyaml/introspector/MissingProperty;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 93
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    return-object v1

    .line 94
    :cond_1
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' on class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAllowReadOnlyProperties(Z)V
    .locals 1
    .param p1, "allowReadOnlyProperties"    # Z

    .line 109
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    if-eq v0, p1, :cond_0

    .line 110
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->allowReadOnlyProperties:Z

    .line 111
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    :cond_0
    return-void
.end method

.method public setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .locals 1
    .param p1, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 101
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    if-eq v0, p1, :cond_0

    .line 102
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->beanAccess:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 103
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->propertiesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    :cond_0
    return-void
.end method

.method public setSkipMissingProperties(Z)V
    .locals 1
    .param p1, "skipMissingProperties"    # Z

    .line 123
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    if-eq v0, p1, :cond_0

    .line 124
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->skipMissingProperties:Z

    .line 125
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->readableProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    :cond_0
    return-void
.end method

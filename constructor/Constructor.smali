.class public Lorg/yaml/snakeyaml/constructor/Constructor;
.super Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.source "Constructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;,
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;,
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;,
        Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;
    }
.end annotation


# instance fields
.field protected final typeDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final typeTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "theRoot":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/TypeDescription;

    invoke-static {p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->checkRoot(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/TypeDescription;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Lorg/yaml/snakeyaml/TypeDescription;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "theRoot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/TypeDescription;)V
    .locals 3
    .param p1, "theRoot"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 77
    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/SafeConstructor;-><init>()V

    .line 78
    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlConstructors:Ljava/util/Map;

    const/4 v1, 0x0

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructYamlObject;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->rootTag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 85
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeTags:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeDefinitions:Ljava/util/Map;

    .line 87
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructScalar;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->yamlClassConstructors:Ljava/util/Map;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v2, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructSequence;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;->addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)Lorg/yaml/snakeyaml/TypeDescription;

    .line 91
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root type must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final check(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 108
    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-object p0

    .line 112
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Root type must be provided."

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root type must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkRoot(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    .local p0, "theRoot":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    .line 74
    return-object p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root class must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)Lorg/yaml/snakeyaml/TypeDescription;
    .locals 3
    .param p1, "definition"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 128
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    .line 132
    .local v0, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeTags:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeDefinitions:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/TypeDescription;

    return-object v1

    .line 129
    .end local v0    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TypeDescription is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 676
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method protected getClassForNode(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Class;
    .locals 7
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeTags:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 659
    .local v0, "classForTag":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Tag;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .local v2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 667
    iget-object v3, p0, Lorg/yaml/snakeyaml/constructor/Constructor;->typeTags:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    return-object v2

    .line 664
    .end local v2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 665
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    .local v3, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 670
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0
.end method

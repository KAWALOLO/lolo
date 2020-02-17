.class public Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;
.super Lorg/yaml/snakeyaml/constructor/AbstractConstruct;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructYamlNumber"
.end annotation


# instance fields
.field private final nf:Ljava/text/NumberFormat;

.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/SafeConstructor;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    invoke-direct {p0}, Lorg/yaml/snakeyaml/constructor/AbstractConstruct;-><init>()V

    .line 278
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;->nf:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 281
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 283
    .local v0, "scalar":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    :try_start_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "lowerCaseValue":Ljava/lang/String;
    const-string v3, "inf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "nan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse as Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$ConstructYamlNumber;->this$0:Lorg/yaml/snakeyaml/constructor/SafeConstructor;

    iget-object v3, v3, Lorg/yaml/snakeyaml/constructor/SafeConstructor;->yamlConstructors:Ljava/util/Map;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/constructor/Construct;

    invoke-interface {v3, p1}, Lorg/yaml/snakeyaml/constructor/Construct;->construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    return-object v3
.end method

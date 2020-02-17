.class public abstract Lorg/yaml/snakeyaml/introspector/Property;
.super Ljava/lang/Object;
.source "Property.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/yaml/snakeyaml/introspector/Property;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 36
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/yaml/snakeyaml/introspector/Property;->name:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/yaml/snakeyaml/introspector/Property;->type:Ljava/lang/Class;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 31
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/introspector/Property;

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/introspector/Property;->compareTo(Lorg/yaml/snakeyaml/introspector/Property;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/yaml/snakeyaml/introspector/Property;)I
    .locals 2
    .param p1, "o"    # Lorg/yaml/snakeyaml/introspector/Property;

    .line 57
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/Property;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/yaml/snakeyaml/introspector/Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Lorg/yaml/snakeyaml/introspector/Property;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/introspector/Property;

    .line 81
    .local v0, "p":Lorg/yaml/snakeyaml/introspector/Property;
    iget-object v2, p0, Lorg/yaml/snakeyaml/introspector/Property;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/yaml/snakeyaml/introspector/Property;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 83
    .end local v0    # "p":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_1
    return v1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getActualTypeArguments()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/Property;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/yaml/snakeyaml/introspector/Property;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/introspector/Property;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

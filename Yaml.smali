.class public Lorg/yaml/snakeyaml/Yaml;
.super Ljava/lang/Object;
.source "Yaml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/Yaml$EventIterable;,
        Lorg/yaml/snakeyaml/Yaml$NodeIterable;,
        Lorg/yaml/snakeyaml/Yaml$YamlIterable;,
        Lorg/yaml/snakeyaml/Yaml$SilentEmitter;
    }
.end annotation


# instance fields
.field protected constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

.field protected dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

.field private name:Ljava/lang/String;

.field protected representer:Lorg/yaml/snakeyaml/representer/Representer;

.field protected final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 63
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    new-instance v2, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    new-instance v3, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v3}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 2
    .param p1, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 73
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;)V
    .locals 1
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 95
    new-instance v0, Lorg/yaml/snakeyaml/representer/Representer;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/representer/Representer;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V
    .locals 1
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 108
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/DumperOptions;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 1
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 136
    new-instance v0, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .locals 2
    .param p1, "constructor"    # Lorg/yaml/snakeyaml/constructor/BaseConstructor;
    .param p2, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p3, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->isExplicitPropertyUtils()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->isExplicitPropertyUtils()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    .line 159
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    .line 160
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 161
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 162
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isAllowReadOnlyProperties()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setAllowReadOnlyProperties(Z)V

    .line 164
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setTimeZone(Ljava/util/TimeZone;)V

    .line 165
    iput-object p2, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    .line 166
    iput-object p3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    .line 167
    iput-object p4, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yaml:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;)V
    .locals 1
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;

    .line 84
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 2
    .param p1, "representer"    # Lorg/yaml/snakeyaml/representer/Representer;
    .param p2, "dumperOptions"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 121
    new-instance v0, Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>()V

    new-instance v1, Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/resolver/Resolver;-><init>()V

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/yaml/snakeyaml/Yaml;-><init>(Lorg/yaml/snakeyaml/constructor/BaseConstructor;Lorg/yaml/snakeyaml/representer/Representer;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 122
    return-void
.end method

.method private dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 4
    .param p2, "output"    # Ljava/io/Writer;
    .param p3, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/Writer;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")V"
        }
    .end annotation

    .line 237
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/yaml/snakeyaml/serializer/Serializer;

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v1, p2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;-><init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/yaml/snakeyaml/serializer/Serializer;-><init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 240
    .local v0, "serializer":Lorg/yaml/snakeyaml/serializer/Serializer;
    :try_start_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->open()V

    .line 241
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/representer/Representer;->represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .line 243
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serialize(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 244
    .end local v1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    nop

    .line 249
    return-void

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    return-void
.end method

.method private loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "sreader"    # Lorg/yaml/snakeyaml/reader/StreamReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/reader/StreamReader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 448
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 449
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 450
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, p2}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getSingleData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "regexp"    # Ljava/util/regex/Pattern;
    .param p3, "first"    # Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public compose(Ljava/io/Reader;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 3
    .param p1, "yaml"    # Ljava/io/Reader;

    .line 531
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 532
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 533
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/composer/Composer;->getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    return-object v1
.end method

.method public composeAll(Ljava/io/Reader;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 547
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 548
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$2;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/Yaml$2;-><init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 561
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$NodeIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$NodeIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public dump(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/io/Writer;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 222
    return-void
.end method

.method public dumpAll(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 205
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 206
    .local v0, "buffer":Ljava/io/StringWriter;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dumpAll(Ljava/util/Iterator;Ljava/io/Writer;)V
    .locals 1
    .param p2, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .line 233
    .local p1, "data":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 234
    return-void
.end method

.method public dumpAs(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 292
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/representer/Representer;->getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    .line 293
    .local v0, "oldStyle":Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    if-eqz p3, :cond_0

    .line 294
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v1, p3}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 296
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 299
    .local v2, "buffer":Ljava/io/StringWriter;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v3, v2, p2}, Lorg/yaml/snakeyaml/Yaml;->dumpAll(Ljava/util/Iterator;Ljava/io/Writer;Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 300
    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v3, v0}, Lorg/yaml/snakeyaml/representer/Representer;->setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 301
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public dumpAsMap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 324
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {p0, p1, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->dumpAs(Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .param p1, "io"    # Ljava/io/InputStream;

    .line 381
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    new-instance v1, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .param p1, "io"    # Ljava/io/Reader;

    .line 393
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "yaml"    # Ljava/lang/String;

    .line 369
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/io/InputStream;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "yaml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 517
    new-instance v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Lorg/yaml/snakeyaml/composer/Composer;

    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v2, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v2, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V

    .line 464
    .local v0, "composer":Lorg/yaml/snakeyaml/composer/Composer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->setComposer(Lorg/yaml/snakeyaml/composer/Composer;)V

    .line 465
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$1;

    invoke-direct {v1, p0}, Lorg/yaml/snakeyaml/Yaml$1;-><init>(Lorg/yaml/snakeyaml/Yaml;)V

    .line 478
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$YamlIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$YamlIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public loadAll(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "yaml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 504
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/Yaml;->loadAll(Ljava/io/Reader;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 444
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    new-instance v1, Lorg/yaml/snakeyaml/reader/UnicodeReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/UnicodeReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "io"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 410
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "yaml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 427
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/yaml/snakeyaml/Yaml;->loadFromReader(Lorg/yaml/snakeyaml/reader/StreamReader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Iterable;
    .locals 3
    .param p1, "yaml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Lorg/yaml/snakeyaml/parser/ParserImpl;

    new-instance v1, Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-direct {v1, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    .line 628
    .local v0, "parser":Lorg/yaml/snakeyaml/parser/Parser;
    new-instance v1, Lorg/yaml/snakeyaml/Yaml$3;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/Yaml$3;-><init>(Lorg/yaml/snakeyaml/Yaml;Lorg/yaml/snakeyaml/parser/Parser;)V

    .line 641
    .local v1, "result":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    new-instance v2, Lorg/yaml/snakeyaml/Yaml$EventIterable;

    invoke-direct {v2, v1}, Lorg/yaml/snakeyaml/Yaml$EventIterable;-><init>(Ljava/util/Iterator;)V

    return-object v2
.end method

.method public represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/representer/Representer;->represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/util/List;
    .locals 5
    .param p1, "data"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;-><init>(Lorg/yaml/snakeyaml/Yaml$1;)V

    .line 337
    .local v0, "emitter":Lorg/yaml/snakeyaml/Yaml$SilentEmitter;
    new-instance v2, Lorg/yaml/snakeyaml/serializer/Serializer;

    iget-object v3, p0, Lorg/yaml/snakeyaml/Yaml;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    iget-object v4, p0, Lorg/yaml/snakeyaml/Yaml;->dumperOptions:Lorg/yaml/snakeyaml/DumperOptions;

    invoke-direct {v2, v0, v3, v4, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;-><init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V

    move-object v1, v2

    .line 339
    .local v1, "serializer":Lorg/yaml/snakeyaml/serializer/Serializer;
    :try_start_0
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->open()V

    .line 340
    invoke-virtual {v1, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serialize(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 341
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    nop

    .line 345
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/Yaml$SilentEmitter;->getEvents()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v3, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V
    .locals 1
    .param p1, "beanAccess"    # Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 657
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->constructor:Lorg/yaml/snakeyaml/constructor/BaseConstructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/BaseConstructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 658
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->representer:Lorg/yaml/snakeyaml/representer/Representer;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->setBeanAccess(Lorg/yaml/snakeyaml/introspector/BeanAccess;)V

    .line 659
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 615
    iput-object p1, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    .line 616
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/yaml/snakeyaml/Yaml;->name:Ljava/lang/String;

    return-object v0
.end method

.class public Lorg/yaml/snakeyaml/resolver/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# static fields
.field public static final BOOL:Ljava/util/regex/Pattern;

.field public static final EMPTY:Ljava/util/regex/Pattern;

.field public static final FLOAT:Ljava/util/regex/Pattern;

.field public static final INT:Ljava/util/regex/Pattern;

.field public static final MERGE:Ljava/util/regex/Pattern;

.field public static final NULL:Ljava/util/regex/Pattern;

.field public static final TIMESTAMP:Ljava/util/regex/Pattern;

.field public static final VALUE:Ljava/util/regex/Pattern;

.field public static final YAML:Ljava/util/regex/Pattern;


# instance fields
.field protected yamlImplicitResolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/resolver/ResolverTuple;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "^(?:yes|Yes|YES|no|No|NO|true|True|TRUE|false|False|FALSE|on|On|ON|off|Off|OFF)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->BOOL:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "^([-+]?(\\.[0-9]+|[0-9_]+(\\.[0-9_]*)?)([eE][-+]?[0-9]+)?|[-+]?[0-9][0-9_]*(?::[0-5]?[0-9])+\\.[0-9_]*|[-+]?\\.(?:inf|Inf|INF)|\\.(?:nan|NaN|NAN))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->FLOAT:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "^(?:[-+]?0b[0-1_]+|[-+]?0[0-7_]+|[-+]?(?:0|[1-9][0-9_]*)|[-+]?0x[0-9a-fA-F_]+|[-+]?[1-9][0-9_]*(?::[0-5]?[0-9])+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->INT:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "^(?:<<)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->MERGE:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "^(?:~|null|Null|NULL| )$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->NULL:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "^$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->EMPTY:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "^(?:[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]|[0-9][0-9][0-9][0-9]-[0-9][0-9]?-[0-9][0-9]?(?:[Tt]|[ \t]+)[0-9][0-9]?:[0-9][0-9]:[0-9][0-9](?:\\.[0-9]*)?(?:[ \t]*(?:Z|[-+][0-9][0-9]?(?::[0-9][0-9])?))?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->TIMESTAMP:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "^(?:=)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->VALUE:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "^(?:!|&|\\*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/resolver/Resolver;->YAML:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    .line 73
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolvers()V

    .line 74
    return-void
.end method


# virtual methods
.method public addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "regexp"    # Ljava/util/regex/Pattern;
    .param p3, "first"    # Ljava/lang/String;

    .line 77
    if-nez p3, :cond_1

    .line 78
    iget-object v0, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    .local v0, "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    if-nez v0, :cond_0

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 81
    iget-object v2, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    new-instance v1, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    invoke-direct {v1, p1, p2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v0    # "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 86
    .local v0, "chrs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 87
    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 88
    .local v3, "theC":Ljava/lang/Character;
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    if-nez v4, :cond_2

    .line 90
    const/4 v3, 0x0

    .line 92
    :cond_2
    iget-object v4, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 93
    .local v4, "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    if-nez v4, :cond_3

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 95
    iget-object v5, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_3
    new-instance v5, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    invoke-direct {v5, p1, p2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v3    # "theC":Ljava/lang/Character;
    .end local v4    # "curr":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "chrs":[C
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    :goto_1
    return-void
.end method

.method protected addImplicitResolvers()V
    .locals 3

    .line 53
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->BOOL:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->BOOL:Ljava/util/regex/Pattern;

    const-string v2, "yYnNtTfFoO"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->INT:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->INT:Ljava/util/regex/Pattern;

    const-string v2, "-+0123456789"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->FLOAT:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->FLOAT:Ljava/util/regex/Pattern;

    const-string v2, "-+0123456789."

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->MERGE:Ljava/util/regex/Pattern;

    const-string v2, "<"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->NULL:Ljava/util/regex/Pattern;

    const-string v2, "~nN\u0000"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->EMPTY:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->TIMESTAMP:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->TIMESTAMP:Ljava/util/regex/Pattern;

    const-string v2, "0123456789"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->YAML:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v1, Lorg/yaml/snakeyaml/resolver/Resolver;->YAML:Ljava/util/regex/Pattern;

    const-string v2, "!&*"

    invoke-virtual {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->addImplicitResolver(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 6
    .param p1, "kind"    # Lorg/yaml/snakeyaml/nodes/NodeId;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "implicit"    # Z

    .line 103
    sget-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne p1, v0, :cond_4

    if-eqz p3, :cond_4

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "resolvers":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 110
    :goto_0
    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    .line 112
    .local v2, "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 113
    .local v3, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getRegexp()Ljava/util/regex/Pattern;

    move-result-object v4

    .line 114
    .local v4, "regexp":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    return-object v3

    .line 117
    .end local v2    # "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    .end local v3    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v4    # "regexp":Ljava/util/regex/Pattern;
    :cond_1
    goto :goto_1

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p0, Lorg/yaml/snakeyaml/resolver/Resolver;->yamlImplicitResolvers:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/resolver/ResolverTuple;

    .line 121
    .restart local v2    # "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 122
    .restart local v3    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/resolver/ResolverTuple;->getRegexp()Ljava/util/regex/Pattern;

    move-result-object v4

    .line 123
    .restart local v4    # "regexp":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    return-object v3

    .line 126
    .end local v2    # "v":Lorg/yaml/snakeyaml/resolver/ResolverTuple;
    .end local v3    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v4    # "regexp":Ljava/util/regex/Pattern;
    :cond_3
    goto :goto_2

    .line 129
    .end local v0    # "resolvers":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/resolver/ResolverTuple;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-object v0, Lorg/yaml/snakeyaml/resolver/Resolver$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 133
    :pswitch_0
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->SEQ:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 131
    :pswitch_1
    sget-object v0, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

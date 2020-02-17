.class public Lio/bloco/faker/Faker;
.super Ljava/lang/Object;
.source "Faker.java"


# static fields
.field public static final DEFAULT_LOCALE:Ljava/lang/String; = "en"


# instance fields
.field public final address:Lio/bloco/faker/components/Address;

.field public final app:Lio/bloco/faker/components/App;

.field public final avatar:Lio/bloco/faker/components/Avatar;

.field public final book:Lio/bloco/faker/components/Book;

.field public final bool:Lio/bloco/faker/components/Bool;

.field public final business:Lio/bloco/faker/components/Business;

.field public final color:Lio/bloco/faker/components/Color;

.field public final commerce:Lio/bloco/faker/components/Commerce;

.field public final company:Lio/bloco/faker/components/Company;

.field private final data:Lio/bloco/faker/FakerData;

.field public final date:Lio/bloco/faker/components/Date;

.field public final food:Lio/bloco/faker/components/Food;

.field public final internet:Lio/bloco/faker/components/Internet;

.field private final locale:Ljava/lang/String;

.field public final lorem:Lio/bloco/faker/components/Lorem;

.field public final name:Lio/bloco/faker/components/Name;

.field public final number:Lio/bloco/faker/components/Number;

.field public final phoneNumber:Lio/bloco/faker/components/PhoneNumber;

.field public final placeholdit:Lio/bloco/faker/components/Placeholdit;

.field public final slackEmoji:Lio/bloco/faker/components/SlackEmoji;

.field public final team:Lio/bloco/faker/components/Team;

.field public final time:Lio/bloco/faker/components/Time;

.field public final university:Lio/bloco/faker/components/University;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    const-string v0, "en"

    invoke-direct {p0, v0}, Lio/bloco/faker/Faker;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lio/bloco/faker/Faker;->locale:Ljava/lang/String;

    .line 77
    const-string v0, "en"

    invoke-direct {p0, v0}, Lio/bloco/faker/Faker;->loadData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 78
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/bloco/faker/Faker;->locale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lio/bloco/faker/Faker;->locale:Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/bloco/faker/Faker;->loadData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bloco/faker/helpers/MapHelper;->deepMerge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 81
    :cond_0
    new-instance v1, Lio/bloco/faker/FakerData;

    invoke-direct {v1, v0}, Lio/bloco/faker/FakerData;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    .line 84
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Address;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Address;

    iput-object v1, p0, Lio/bloco/faker/Faker;->address:Lio/bloco/faker/components/Address;

    .line 85
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/App;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/App;

    iput-object v1, p0, Lio/bloco/faker/Faker;->app:Lio/bloco/faker/components/App;

    .line 86
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Avatar;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Avatar;

    iput-object v1, p0, Lio/bloco/faker/Faker;->avatar:Lio/bloco/faker/components/Avatar;

    .line 87
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Book;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Book;

    iput-object v1, p0, Lio/bloco/faker/Faker;->book:Lio/bloco/faker/components/Book;

    .line 88
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Bool;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Bool;

    iput-object v1, p0, Lio/bloco/faker/Faker;->bool:Lio/bloco/faker/components/Bool;

    .line 89
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Business;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Business;

    iput-object v1, p0, Lio/bloco/faker/Faker;->business:Lio/bloco/faker/components/Business;

    .line 90
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Color;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Color;

    iput-object v1, p0, Lio/bloco/faker/Faker;->color:Lio/bloco/faker/components/Color;

    .line 91
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Commerce;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Commerce;

    iput-object v1, p0, Lio/bloco/faker/Faker;->commerce:Lio/bloco/faker/components/Commerce;

    .line 92
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Company;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Company;

    iput-object v1, p0, Lio/bloco/faker/Faker;->company:Lio/bloco/faker/components/Company;

    .line 93
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Date;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Date;

    iput-object v1, p0, Lio/bloco/faker/Faker;->date:Lio/bloco/faker/components/Date;

    .line 94
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Food;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Food;

    iput-object v1, p0, Lio/bloco/faker/Faker;->food:Lio/bloco/faker/components/Food;

    .line 95
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Internet;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Internet;

    iput-object v1, p0, Lio/bloco/faker/Faker;->internet:Lio/bloco/faker/components/Internet;

    .line 96
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Lorem;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Lorem;

    iput-object v1, p0, Lio/bloco/faker/Faker;->lorem:Lio/bloco/faker/components/Lorem;

    .line 97
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Name;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Name;

    iput-object v1, p0, Lio/bloco/faker/Faker;->name:Lio/bloco/faker/components/Name;

    .line 98
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Number;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Number;

    iput-object v1, p0, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    .line 99
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Placeholdit;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Placeholdit;

    iput-object v1, p0, Lio/bloco/faker/Faker;->placeholdit:Lio/bloco/faker/components/Placeholdit;

    .line 100
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/PhoneNumber;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/PhoneNumber;

    iput-object v1, p0, Lio/bloco/faker/Faker;->phoneNumber:Lio/bloco/faker/components/PhoneNumber;

    .line 101
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/SlackEmoji;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/SlackEmoji;

    iput-object v1, p0, Lio/bloco/faker/Faker;->slackEmoji:Lio/bloco/faker/components/SlackEmoji;

    .line 102
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Team;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Team;

    iput-object v1, p0, Lio/bloco/faker/Faker;->team:Lio/bloco/faker/components/Team;

    .line 103
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/Time;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Time;

    iput-object v1, p0, Lio/bloco/faker/Faker;->time:Lio/bloco/faker/components/Time;

    .line 104
    iget-object v1, p0, Lio/bloco/faker/Faker;->data:Lio/bloco/faker/FakerData;

    const-class v2, Lio/bloco/faker/components/University;

    invoke-virtual {v1, v2}, Lio/bloco/faker/FakerData;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/University;

    iput-object v1, p0, Lio/bloco/faker/Faker;->university:Lio/bloco/faker/components/University;

    .line 105
    return-void
.end method

.method private getDataInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locales/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".yml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 125
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 126
    return-object v0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0

    .line 129
    :cond_0
    nop

    .line 131
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unavailable locale \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadData(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "locale"    # Ljava/lang/String;
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

    .line 112
    new-instance v0, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    .line 113
    .local v0, "yaml":Lorg/yaml/snakeyaml/Yaml;
    invoke-direct {p0, p1}, Lio/bloco/faker/Faker;->getDataInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 115
    .local v1, "input":Ljava/io/InputStream;
    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 116
    .local v2, "root":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 117
    .local v3, "fakerData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "faker"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    return-object v4
.end method


# virtual methods
.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/bloco/faker/Faker;->locale:Ljava/lang/String;

    return-object v0
.end method

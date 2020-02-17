.class Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.super Lorg/yaml/snakeyaml/representer/BaseRepresenter;
.source "SafeRepresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentUuid;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentByteArray;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentEnum;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentSet;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentArray;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$IteratorWrapper;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentList;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;,
        Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNull;
    }
.end annotation


# static fields
.field public static MULTILINE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected classTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ">;"
        }
    .end annotation
.end field

.field protected timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    const-string v0, "\n|\u0085|\u2028|\u2029"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->MULTILINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 48
    invoke-direct {p0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    .line 49
    new-instance v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNull;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNull;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

    .line 50
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentBoolean;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, Ljava/util/UUID;

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentUuid;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentUuid;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v1, [B

    new-instance v2, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentByteArray;

    invoke-direct {v2, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentByteArray;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentPrimitiveArray;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    .line 57
    .local v0, "primitiveArray":Lorg/yaml/snakeyaml/representer/Represent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v2, [S

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v2, [I

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v2, [J

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v2, [F

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v2, [D

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v2, [C

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representers:Ljava/util/Map;

    const-class v2, [Z

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/lang/Number;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentNumber;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/util/List;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentList;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentList;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/util/Map;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentMap;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/util/Set;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentSet;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentSet;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/util/Iterator;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentIterator;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentArray;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentArray;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/util/Date;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/lang/Enum;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentEnum;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentEnum;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->multiRepresenters:Ljava/util/Map;

    const-class v2, Ljava/util/Calendar;

    new-instance v3, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;

    invoke-direct {v3, p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentDate;-><init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 2
    .param p2, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Tag;"
        }
    .end annotation

    .line 96
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tag must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 1
    .param p2, "defaultTag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Tag;"
        }
    .end annotation

    .line 78
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->classTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0

    .line 81
    :cond_0
    return-object p2
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 418
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->timeZone:Ljava/util/TimeZone;

    .line 419
    return-void
.end method

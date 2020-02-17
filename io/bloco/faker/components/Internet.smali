.class public Lio/bloco/faker/components/Internet;
.super Lio/bloco/faker/FakerComponent;
.source "Internet.java"


# static fields
.field private static final DEFAULT_SEPARATORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_SLUG_GLUE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_TOKEN_LENGTH:I = 0x40

.field private static final PASSWORD_MAX_LENGTH:I = 0x10

.field private static final PASSWORD_MIN_LENGTH:I = 0x8

.field private static final PASSWORD_MIX_CASE:Z = true

.field private static final PASSWORD_SPECIAL_CHARS:Z = false

.field private static final PASSWORD_SPECIAL_CHARS_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAFE_EMAIL_HOST:Ljava/lang/String; = "example."

.field private static final SAFE_EMAIL_TLDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    const-string v0, "org"

    const-string v1, "com"

    const-string v2, "net"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bloco/faker/components/Internet;->SAFE_EMAIL_TLDS:Ljava/util/List;

    .line 14
    const-string v0, "."

    const-string v1, "_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bloco/faker/components/Internet;->DEFAULT_SEPARATORS:Ljava/util/List;

    .line 15
    const-string v0, "."

    const-string v1, "_"

    const-string v2, "-"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bloco/faker/components/Internet;->DEFAULT_SLUG_GLUE:Ljava/util/List;

    .line 20
    const-string v1, "!"

    const-string v2, "@"

    const-string v3, "#"

    const-string v4, "$"

    const-string v5, "%"

    const-string v6, "^"

    const-string v7, "&"

    const-string v8, "*"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/bloco/faker/components/Internet;->PASSWORD_SPECIAL_CHARS_LIST:Ljava/util/List;

    .line 20
    return-void
.end method

.method public constructor <init>(Lio/bloco/faker/FakerData;)V
    .locals 0
    .param p1, "data"    # Lio/bloco/faker/FakerData;

    .line 25
    invoke-direct {p0, p1}, Lio/bloco/faker/FakerComponent;-><init>(Lio/bloco/faker/FakerData;)V

    .line 26
    return-void
.end method


# virtual methods
.method public deviceToken()Ljava/lang/String;
    .locals 7

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "deviceToken":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 214
    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public domainName()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bloco/faker/components/Internet;->domainWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bloco/faker/components/Internet;->domainSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public domainSuffix()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "internet.domain_suffix"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public domainWord()Ljava/lang/String;
    .locals 2

    .line 125
    const-string v0, "Company.name"

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "companyName":Ljava/lang/String;
    iget-object v1, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    invoke-virtual {v1, v0}, Lio/bloco/faker/helpers/StringHelper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public email()Ljava/lang/String;
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->email(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public email(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lio/bloco/faker/components/Internet;->userName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bloco/faker/components/Internet;->domainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public freeEmail()Ljava/lang/String;
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->freeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public freeEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lio/bloco/faker/components/Internet;->userName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "internet.free_email"

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Internet;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ipV4Address()Ljava/lang/String;
    .locals 5

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 158
    iget-object v3, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_0
    iget-object v1, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v2, "."

    invoke-virtual {v1, v0, v2}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ipV4Cidr()Ljava/lang/String;
    .locals 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bloco/faker/components/Internet;->ipV4Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/4 v2, 0x1

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Lio/bloco/faker/helpers/RandomHelper;->range(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ipV6Address()Ljava/lang/String;
    .locals 8

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 170
    const-string v3, "%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_0
    iget-object v1, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v2, ":"

    invoke-virtual {v1, v0, v2}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ipV6Cidr()Ljava/lang/String;
    .locals 4

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/bloco/faker/components/Internet;->ipV6Address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/4 v2, 0x1

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lio/bloco/faker/helpers/RandomHelper;->range(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public macAddress()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, ""

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->macAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public macAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "prefixDigits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6

    .line 146
    .local v1, "addressDigitsCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v2, "addressDigits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 148
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    const/16 v8, 0x100

    invoke-virtual {v7, v8}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 151
    .end local v3    # "i":I
    :cond_1
    invoke-interface {v2, v4, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 152
    iget-object v3, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v4, ":"

    invoke-virtual {v3, v2, v4}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public password()Ljava/lang/String;
    .locals 1

    .line 82
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->password(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public password(I)Ljava/lang/String;
    .locals 1
    .param p1, "minLength"    # I

    .line 86
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Internet;->password(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public password(II)Ljava/lang/String;
    .locals 1
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lio/bloco/faker/components/Internet;->password(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public password(IIZ)Ljava/lang/String;
    .locals 1
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I
    .param p3, "mixCase"    # Z

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bloco/faker/components/Internet;->password(IIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public password(IIZZ)Ljava/lang/String;
    .locals 9
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I
    .param p3, "mixCase"    # Z
    .param p4, "specialChars"    # Z

    .line 98
    iget-object v0, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0, p1, p2}, Lio/bloco/faker/helpers/RandomHelper;->range(II)I

    move-result v0

    .line 99
    .local v0, "characterCount":I
    const-class v1, Lio/bloco/faker/components/Lorem;

    invoke-virtual {p0, v1}, Lio/bloco/faker/components/Internet;->getComponent(Ljava/lang/Class;)Lio/bloco/faker/FakerComponent;

    move-result-object v1

    check-cast v1, Lio/bloco/faker/components/Lorem;

    invoke-virtual {v1, v0}, Lio/bloco/faker/components/Lorem;->characters(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "password":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v3, :cond_0

    .line 102
    iget-object v4, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 103
    .local v4, "middlePoint":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .end local v4    # "middlePoint":I
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 108
    iget-object v3, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 109
    .local v3, "numSpecialChars":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 110
    iget-object v5, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    sget-object v6, Lio/bloco/faker/components/Internet;->PASSWORD_SPECIAL_CHARS_LIST:Ljava/util/List;

    invoke-virtual {v5, v6}, Lio/bloco/faker/helpers/RandomHelper;->sample(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 111
    .local v5, "specialChar":Ljava/lang/String;
    iget-object v6, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lio/bloco/faker/helpers/RandomHelper;->number(I)I

    move-result v6

    .line 112
    .local v6, "index":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, 0x1

    .line 113
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .end local v5    # "specialChar":Ljava/lang/String;
    .end local v6    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    .end local v3    # "numSpecialChars":I
    .end local v4    # "i":I
    :cond_1
    return-object v1
.end method

.method public safeEmail()Ljava/lang/String;
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->safeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public safeEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lio/bloco/faker/components/Internet;->userName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "example."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    sget-object v2, Lio/bloco/faker/components/Internet;->SAFE_EMAIL_TLDS:Ljava/util/List;

    invoke-virtual {v1, v2}, Lio/bloco/faker/helpers/RandomHelper;->sample(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public slug()Ljava/lang/String;
    .locals 1

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->slug(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public slug(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 196
    .local p1, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Internet;->slug(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public slug(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "glue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    .local p1, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 201
    iget-object v0, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    sget-object v1, Lio/bloco/faker/components/Internet;->DEFAULT_SLUG_GLUE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/bloco/faker/helpers/RandomHelper;->sample(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    .line 204
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lorem.words"

    invoke-virtual {p0, v2}, Lio/bloco/faker/components/Internet;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lorem.words"

    invoke-virtual {p0, v2}, Lio/bloco/faker/components/Internet;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 208
    :cond_2
    iget-object v0, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    invoke-virtual {v0, p1, p2}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lio/bloco/faker/components/Internet;->domainName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/bloco/faker/components/Internet;->userName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Internet;->url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userName()Ljava/lang/String;
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/bloco/faker/components/Internet;->userName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "specifier"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lio/bloco/faker/components/Internet;->DEFAULT_SEPARATORS:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lio/bloco/faker/components/Internet;->userName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "specifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 61
    .local p2, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v0, p2}, Lio/bloco/faker/helpers/RandomHelper;->sample(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "separator":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 64
    const-string v1, "\\s"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v2, "normalizedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, "word":Ljava/lang/String;
    iget-object v5, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    invoke-virtual {v5, v4}, Lio/bloco/faker/helpers/StringHelper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "word":Ljava/lang/String;
    goto :goto_0

    .line 69
    :cond_0
    iget-object v3, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    invoke-virtual {v3, v2, v0}, Lio/bloco/faker/helpers/StringHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 71
    .end local v1    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "normalizedWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lio/bloco/faker/components/Internet;->randomHelper:Lio/bloco/faker/helpers/RandomHelper;

    invoke-virtual {v1}, Lio/bloco/faker/helpers/RandomHelper;->randBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v3, "Name.first_name"

    invoke-virtual {p0, v3}, Lio/bloco/faker/components/Internet;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bloco/faker/helpers/StringHelper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v3, "Name.last_name"

    .line 74
    invoke-virtual {p0, v3}, Lio/bloco/faker/components/Internet;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bloco/faker/helpers/StringHelper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    return-object v1

    .line 77
    :cond_2
    iget-object v1, p0, Lio/bloco/faker/components/Internet;->stringHelper:Lio/bloco/faker/helpers/StringHelper;

    const-string v2, "Name.first_name"

    invoke-virtual {p0, v2}, Lio/bloco/faker/components/Internet;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bloco/faker/helpers/StringHelper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

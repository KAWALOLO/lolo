.class public Lio/bloco/faker/helpers/StringHelper;
.super Ljava/lang/Object;
.source "StringHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bloco/faker/helpers/StringHelper$StringReplacer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public camelToSnake(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 37
    const-string v0, "(?<=\\w)(\\p{Upper})"

    new-instance v1, Lio/bloco/faker/helpers/StringHelper$2;

    invoke-direct {v1, p0}, Lio/bloco/faker/helpers/StringHelper$2;-><init>(Lio/bloco/faker/helpers/StringHelper;)V

    invoke-virtual {p0, p1, v0, v1}, Lio/bloco/faker/helpers/StringHelper;->replaceMethod(Ljava/lang/String;Ljava/lang/String;Lio/bloco/faker/helpers/StringHelper$StringReplacer;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 37
    return-object v0
.end method

.method public join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2, "separator"    # Ljava/lang/String;
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

    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 48
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    .local v3, "item":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .end local v3    # "item":Ljava/lang/String;
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .line 59
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, "[^\\p{ASCII}]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "\\W"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceMethod(Ljava/lang/String;Ljava/lang/String;Lio/bloco/faker/helpers/StringHelper$StringReplacer;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "replacer"    # Lio/bloco/faker/helpers/StringHelper$StringReplacer;

    .line 15
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 16
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 17
    .local v1, "matcher":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-interface {p3, v1}, Lio/bloco/faker/helpers/StringHelper$StringReplacer;->replaceWith(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "replacement":Ljava/lang/String;
    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 21
    .end local v3    # "replacement":Ljava/lang/String;
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public snakeToCamel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 27
    const-string v0, "_(\\p{Lower})"

    new-instance v1, Lio/bloco/faker/helpers/StringHelper$1;

    invoke-direct {v1, p0}, Lio/bloco/faker/helpers/StringHelper$1;-><init>(Lio/bloco/faker/helpers/StringHelper;)V

    invoke-virtual {p0, p1, v0, v1}, Lio/bloco/faker/helpers/StringHelper;->replaceMethod(Ljava/lang/String;Ljava/lang/String;Lio/bloco/faker/helpers/StringHelper$StringReplacer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

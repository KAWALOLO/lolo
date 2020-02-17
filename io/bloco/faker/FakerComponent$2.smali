.class Lio/bloco/faker/FakerComponent$2;
.super Ljava/lang/Object;
.source "FakerComponent.java"

# interfaces
.implements Lio/bloco/faker/helpers/StringHelper$StringReplacer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bloco/faker/FakerComponent;->parse(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bloco/faker/FakerComponent;


# direct methods
.method constructor <init>(Lio/bloco/faker/FakerComponent;)V
    .locals 0
    .param p1, "this$0"    # Lio/bloco/faker/FakerComponent;

    .line 53
    iput-object p1, p0, Lio/bloco/faker/FakerComponent$2;->this$0:Lio/bloco/faker/FakerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public replaceWith(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 2
    .param p1, "matcher"    # Ljava/util/regex/Matcher;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lio/bloco/faker/FakerComponent$2;->this$0:Lio/bloco/faker/FakerComponent;

    invoke-virtual {v1, v0}, Lio/bloco/faker/FakerComponent;->call(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

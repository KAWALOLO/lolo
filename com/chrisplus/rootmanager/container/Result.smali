.class public Lcom/chrisplus/rootmanager/container/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;,
        Lcom/chrisplus/rootmanager/container/Result$ResultEnum;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/chrisplus/rootmanager/container/Result$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/chrisplus/rootmanager/container/Result$1;

    .line 5
    invoke-direct {p0}, Lcom/chrisplus/rootmanager/container/Result;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/chrisplus/rootmanager/container/Result;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Result;
    .param p1, "x1"    # Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/chrisplus/rootmanager/container/Result;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/chrisplus/rootmanager/container/Result;I)I
    .locals 0
    .param p0, "x0"    # Lcom/chrisplus/rootmanager/container/Result;
    .param p1, "x1"    # I

    .line 5
    iput p1, p0, Lcom/chrisplus/rootmanager/container/Result;->statusCode:I

    return p1
.end method

.method public static newBuilder()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 17
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    invoke-direct {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Boolean;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status Code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chrisplus/rootmanager/container/Result;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Result;->statusCode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    const/16 v2, 0x64

    if-gt v0, v2, :cond_1

    .line 33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Result;->statusCode:I

    return v0
.end method

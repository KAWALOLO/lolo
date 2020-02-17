.class public final enum Lcom/chrisplus/rootmanager/container/Result$ResultEnum;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chrisplus/rootmanager/container/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chrisplus/rootmanager/container/Result$ResultEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED_DENIED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED_INTERRUPTED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_FAILED_TIMEOUT:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum COMMAND_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum CUSTOM:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FAILED_NOSPACE:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FAILED_WRONGCER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FAILED_WRONGCONTAINER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_FIALED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum INSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum UNINSTALL_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

.field public static final enum UNINSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;


# instance fields
.field private message:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "COMMAND_SUCCESS"

    const-string v2, "Command Executed Successfully"

    const/4 v3, 0x0

    const/16 v4, 0x5a

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 42
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "COMMAND_FAILED_TIMEOUT"

    const-string v2, "Run Command Timeout"

    const/4 v4, 0x1

    const/16 v5, 0x191

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_TIMEOUT:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 43
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "COMMAND_FAILED_DENIED"

    const-string v2, "Run Command Permission Denied"

    const/4 v5, 0x2

    const/16 v6, 0x192

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_DENIED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 44
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "COMMAND_FAILED_INTERRUPTED"

    const-string v2, "Run Command Interrupted"

    const/4 v6, 0x3

    const/16 v7, 0x193

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_INTERRUPTED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 45
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "COMMAND_FAILED"

    const-string v2, "Run Command Failed"

    const/16 v7, 0x199

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 47
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "INSTALL_SUCCESS"

    const-string v2, "Application installed Successfully"

    const/4 v9, 0x5

    const/16 v10, 0x50

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 48
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "INSTALL_FAILED_NOSPACE"

    const-string v2, "Install Failed because of no enough space"

    const/4 v10, 0x6

    const/16 v11, 0x194

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_NOSPACE:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 49
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "INSTALL_FAILED_WRONGCONTAINER"

    const-string v2, "Install Failed Wrong container"

    const/4 v11, 0x7

    const/16 v12, 0x195

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCONTAINER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 50
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "INSTALL_FAILED_WRONGCER"

    const-string v2, "Install Failed Wrong Cer or version"

    const/16 v12, 0x8

    const/16 v13, 0x196

    invoke-direct {v0, v1, v12, v13, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 51
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "INSTALL_FIALED"

    const-string v2, "Install Failed"

    const/16 v13, 0x9

    const/16 v14, 0x197

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FIALED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 53
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "UNINSTALL_SUCCESS"

    const-string v2, "Application uninstall Successfully"

    const/16 v14, 0xa

    const/16 v15, 0x46

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 54
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "UNINSTALL_FAILED"

    const-string v2, "Uninstall App Failed"

    const/16 v15, 0xb

    const/16 v14, 0x198

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 56
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "FAILED"

    const-string v2, "Illegal Parameters or State"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v7, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 57
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const-string v1, "CUSTOM"

    const-string v2, ""

    const/16 v7, 0xd

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->CUSTOM:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 39
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_TIMEOUT:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_DENIED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_INTERRUPTED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_NOSPACE:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCONTAINER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v12

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FIALED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v13

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v15

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v14

    sget-object v1, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->CUSTOM:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->$VALUES:[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "sc"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->statusCode:I

    .line 65
    iput-object p4, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->message:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result$ResultEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    return-object v0
.end method

.method public static values()[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;
    .locals 1

    .line 39
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->$VALUES:[Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    invoke-virtual {v0}, [Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->statusCode:I

    return v0
.end method

.method public setCustomMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "customMessage"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->message:Ljava/lang/String;

    .line 70
    return-void
.end method

.class public Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chrisplus/rootmanager/container/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBuilder"
.end annotation


# instance fields
.field private inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    return-void
.end method


# virtual methods
.method public build()Lcom/chrisplus/rootmanager/container/Result;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/chrisplus/rootmanager/container/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chrisplus/rootmanager/container/Result;-><init>(Lcom/chrisplus/rootmanager/container/Result$1;)V

    .line 165
    .local v0, "re":Lcom/chrisplus/rootmanager/container/Result;
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chrisplus/rootmanager/container/Result;->access$102(Lcom/chrisplus/rootmanager/container/Result;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->getStatusCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chrisplus/rootmanager/container/Result;->access$202(Lcom/chrisplus/rootmanager/container/Result;I)I

    .line 167
    return-object v0

    .line 159
    .end local v0    # "re":Lcom/chrisplus/rootmanager/container/Result;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Get a empty or null error message during command execution, can not generate result object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCommandFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 107
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 108
    return-object p0
.end method

.method public setCommandFailedDenied()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 97
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_DENIED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 98
    return-object p0
.end method

.method public setCommandFailedInterrupted()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 102
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_INTERRUPTED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 103
    return-object p0
.end method

.method public setCommandFailedTimeout()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 92
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_FAILED_TIMEOUT:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 93
    return-object p0
.end method

.method public setCommandSuccess()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 87
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->COMMAND_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 88
    return-object p0
.end method

.method public setCustomMessage(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1
    .param p1, "customMessage"    # Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->CUSTOM:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 153
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    invoke-virtual {v0, p1}, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->setCustomMessage(Ljava/lang/String;)V

    .line 154
    return-object p0
.end method

.method public setFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 147
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 148
    return-object p0
.end method

.method public setInsallFailedNoSpace()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 117
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_NOSPACE:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 118
    return-object p0
.end method

.method public setInstallFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 132
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FIALED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 133
    return-object p0
.end method

.method public setInstallFailedWrongCer()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 127
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 128
    return-object p0
.end method

.method public setInstallFailedWrongContainer()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 122
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_FAILED_WRONGCONTAINER:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 123
    return-object p0
.end method

.method public setInstallSuccess()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 112
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->INSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 113
    return-object p0
.end method

.method public setUninstallFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 142
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_FAILED:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 143
    return-object p0
.end method

.method public setUninstallSuccess()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    .locals 1

    .line 137
    sget-object v0, Lcom/chrisplus/rootmanager/container/Result$ResultEnum;->UNINSTALL_SUCCESS:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    iput-object v0, p0, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->inEnum:Lcom/chrisplus/rootmanager/container/Result$ResultEnum;

    .line 138
    return-object p0
.end method

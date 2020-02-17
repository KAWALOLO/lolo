.class public abstract Lcom/chrisplus/rootmanager/container/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field private commands:[Ljava/lang/String;

.field private exitCode:I

.field private id:I

.field private isFinished:Z

.field private timeout:J


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "timeout"    # I
    .param p2, "commands"    # [Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/RootUtils;->generateCommandID()I

    move-result v0

    iput v0, p0, Lcom/chrisplus/rootmanager/container/Command;->id:I

    .line 28
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/chrisplus/rootmanager/container/Command;->timeout:J

    .line 29
    iput-object p2, p0, Lcom/chrisplus/rootmanager/container/Command;->commands:[Ljava/lang/String;

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "commands"    # [Ljava/lang/String;

    .line 23
    const v0, 0x493e0

    invoke-direct {p0, v0, p1}, Lcom/chrisplus/rootmanager/container/Command;-><init>(I[Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/chrisplus/rootmanager/container/Command;->commands:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/chrisplus/rootmanager/container/Command;->commands:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 99
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending command(s): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 104
    return-object v1

    .line 94
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "command":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Command;->id:I

    return v0
.end method

.method public keepAlive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    monitor-enter p0

    .line 76
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Command;->isFinished:Z

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 80
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Command;->exitCode:I

    return v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method

.method public abstract onFinished(I)V
.end method

.method public abstract onUpdate(ILjava/lang/String;)V
.end method

.method public setExitCode(I)V
    .locals 1
    .param p1, "code"    # I

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iput p1, p0, Lcom/chrisplus/rootmanager/container/Command;->exitCode:I

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Command;->isFinished:Z

    .line 44
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Command;->id:I

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/container/Command;->onFinished(I)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 51
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Terminate all shells with reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->closeAll()V

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/container/Command;->setExitCode(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    const-string v1, "Terminate all shells and io exception happens"

    invoke-static {v1}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public waitForFinish()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/chrisplus/rootmanager/container/Command;->timeout:J

    invoke-virtual {p0, v0, v1}, Lcom/chrisplus/rootmanager/container/Command;->waitForFinish(J)I

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Command;->exitCode:I

    return v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public waitForFinish(J)I
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 61
    monitor-enter p0

    .line 62
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Command;->isFinished:Z

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 64
    iget-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Command;->isFinished:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chrisplus/rootmanager/container/Command;->isFinished:Z

    .line 66
    const-string v0, "Timeout Exception has occurred."

    invoke-static {v0}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 67
    const-string v0, "Timeout Exception"

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/container/Command;->terminate(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget v0, p0, Lcom/chrisplus/rootmanager/container/Command;->exitCode:I

    return v0

    .line 70
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method

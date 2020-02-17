.class public Lcom/chrisplus/rootmanager/RootManager;
.super Ljava/lang/Object;
.source "RootManager.java"


# static fields
.field private static accessRoot:Z

.field private static instance:Lcom/chrisplus/rootmanager/RootManager;


# instance fields
.field private hasGivenPermission:Z

.field private hasRooted:Ljava/lang/Boolean;

.field private lastPermissionCheck:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chrisplus/rootmanager/RootManager;->accessRoot:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasRooted:Ljava/lang/Boolean;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasGivenPermission:Z

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/chrisplus/rootmanager/RootManager;->lastPermissionCheck:J

    .line 31
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 17
    sput-boolean p0, Lcom/chrisplus/rootmanager/RootManager;->accessRoot:Z

    return p0
.end method

.method private accessRoot()Z
    .locals 3

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "result":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/chrisplus/rootmanager/RootManager;->accessRoot:Z

    .line 563
    new-instance v1, Lcom/chrisplus/rootmanager/RootManager$4;

    const-string v2, "id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/chrisplus/rootmanager/RootManager$4;-><init>(Lcom/chrisplus/rootmanager/RootManager;[Ljava/lang/String;)V

    .line 580
    .local v1, "commandImpl":Lcom/chrisplus/rootmanager/container/Command;
    :try_start_0
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->startRootShell()Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chrisplus/rootmanager/container/Shell;->add(Lcom/chrisplus/rootmanager/container/Command;)Lcom/chrisplus/rootmanager/container/Command;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chrisplus/rootmanager/container/Command;->waitForFinish()I

    .line 581
    sget-boolean v2, Lcom/chrisplus/rootmanager/RootManager;->accessRoot:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/chrisplus/rootmanager/exception/PermissionException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 591
    :catch_0
    move-exception v2

    .line 592
    .local v2, "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    invoke-virtual {v2}, Lcom/chrisplus/rootmanager/exception/PermissionException;->printStackTrace()V

    .line 593
    const/4 v0, 0x0

    goto :goto_1

    .line 588
    .end local v2    # "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    :catch_1
    move-exception v2

    .line 589
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v2}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 590
    const/4 v0, 0x0

    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 585
    :catch_2
    move-exception v2

    .line 586
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 587
    const/4 v0, 0x0

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 582
    :catch_3
    move-exception v2

    .line 583
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 584
    const/4 v0, 0x0

    .line 594
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 596
    :goto_1
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/chrisplus/rootmanager/RootManager;
    .locals 2

    const-class v0, Lcom/chrisplus/rootmanager/RootManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/chrisplus/rootmanager/RootManager;->instance:Lcom/chrisplus/rootmanager/RootManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/chrisplus/rootmanager/RootManager;

    invoke-direct {v1}, Lcom/chrisplus/rootmanager/RootManager;-><init>()V

    sput-object v1, Lcom/chrisplus/rootmanager/RootManager;->instance:Lcom/chrisplus/rootmanager/RootManager;

    .line 37
    :cond_0
    sget-object v1, Lcom/chrisplus/rootmanager/RootManager;->instance:Lcom/chrisplus/rootmanager/RootManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destinationDir"    # Ljava/lang/String;

    .line 344
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 348
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "sourceFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v2, "desFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    const-string v3, "rw"

    invoke-virtual {p0, p2, v3}, Lcom/chrisplus/rootmanager/RootManager;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result;->getResult()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 357
    :cond_2
    return v1

    .line 351
    :cond_3
    :goto_0
    return v1

    .line 345
    .end local v0    # "sourceFile":Ljava/io/File;
    .end local v2    # "desFile":Ljava/io/File;
    :cond_4
    :goto_1
    return v1
.end method

.method public hasRooted()Z
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasRooted:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/chrisplus/rootmanager/Constants;->SU_BINARY_DIRS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 52
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/su"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, "su":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasRooted:Ljava/lang/Boolean;

    .line 55
    goto :goto_1

    .line 57
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/chrisplus/rootmanager/RootManager;->hasRooted:Ljava/lang/Boolean;

    .line 51
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "su":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasRooted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public installBinary(Ljava/lang/String;)Z
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    return v1

    .line 304
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    return v1

    .line 309
    :cond_1
    const-string v1, "/system/bin/"

    invoke-virtual {p0, p1, v1}, Lcom/chrisplus/rootmanager/RootManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public installPackage(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
    .locals 1
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 101
    const-string v0, "a"

    invoke-virtual {p0, p1, v0}, Lcom/chrisplus/rootmanager/RootManager;->installPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v0

    return-object v0
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
    .locals 6
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "installLocation"    # Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/RootUtils;->checkUIThread()V

    .line 125
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Result;->newBuilder()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v0

    .line 127
    .local v0, "builder":Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    const-string v1, "pm install -r "

    .line 132
    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/RootUtils;->isNeedPathSDK()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LD_LIBRARY_PATH=/vendor/lib:/system/lib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    const-string v2, "ex"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_2
    const-string v2, "in"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v2, "infoSb":Ljava/lang/StringBuilder;
    new-instance v3, Lcom/chrisplus/rootmanager/RootManager$1;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/chrisplus/rootmanager/RootManager$1;-><init>(Lcom/chrisplus/rootmanager/RootManager;[Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;)V

    .line 182
    .local v3, "commandImpl":Lcom/chrisplus/rootmanager/container/Command;
    :try_start_0
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->startRootShell()Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/chrisplus/rootmanager/container/Shell;->add(Lcom/chrisplus/rootmanager/container/Command;)Lcom/chrisplus/rootmanager/container/Command;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chrisplus/rootmanager/container/Command;->waitForFinish()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/chrisplus/rootmanager/exception/PermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v4

    .line 193
    .local v4, "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    invoke-virtual {v4}, Lcom/chrisplus/rootmanager/exception/PermissionException;->printStackTrace()V

    .line 194
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedDenied()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_2

    .line 189
    .end local v4    # "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    :catch_1
    move-exception v4

    .line 190
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 191
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedTimeout()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_1

    .line 186
    :catch_2
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 183
    :catch_3
    move-exception v4

    .line 184
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 185
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedInterrupted()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .line 195
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 197
    :goto_2
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v4

    return-object v4
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;

    .line 509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_0
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v0

    .line 513
    .local v0, "infos":Lcom/chrisplus/rootmanager/container/Result;
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public killProcessById(Ljava/lang/String;)Z
    .locals 2
    .param p1, "processID"    # Ljava/lang/String;

    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x0

    return v0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v0

    .line 548
    .local v0, "res":Lcom/chrisplus/rootmanager/container/Result;
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result;->getResult()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public killProcessByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 525
    return v1

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pidof "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v0

    .line 529
    .local v0, "res":Lcom/chrisplus/rootmanager/container/Result;
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chrisplus/rootmanager/RootManager;->killProcessById(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 532
    :cond_1
    return v1
.end method

.method public obtainPermission()Z
    .locals 5

    .line 74
    iget-boolean v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasGivenPermission:Z

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/chrisplus/rootmanager/RootManager;->accessRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasGivenPermission:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chrisplus/rootmanager/RootManager;->lastPermissionCheck:J

    goto :goto_0

    .line 78
    :cond_0
    iget-wide v0, p0, Lcom/chrisplus/rootmanager/RootManager;->lastPermissionCheck:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/chrisplus/rootmanager/RootManager;->lastPermissionCheck:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/chrisplus/rootmanager/RootManager;->accessRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasGivenPermission:Z

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chrisplus/rootmanager/RootManager;->lastPermissionCheck:J

    .line 86
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/chrisplus/rootmanager/RootManager;->hasGivenPermission:Z

    return v0
.end method

.method public remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mountType"    # Ljava/lang/String;

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ro"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    return v1

    .line 375
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lcom/chrisplus/rootmanager/utils/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 371
    :cond_3
    :goto_1
    return v1
.end method

.method public removeBinary(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    return v1

    .line 323
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    return v1

    .line 328
    :cond_1
    const-string v2, "/system/"

    const-string v3, "rw"

    invoke-virtual {p0, v2, v3}, Lcom/chrisplus/rootmanager/RootManager;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm \'/system/bin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result;->getResult()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 331
    :cond_2
    return v1
.end method

.method public restartDevice()V
    .locals 1

    .line 555
    const-string v0, "zygote"

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/RootManager;->killProcessByName(Ljava/lang/String;)Z

    .line 556
    return-void
.end method

.method public runBinBinary(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
    .locals 3
    .param p1, "binaryName"    # Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Result;->newBuilder()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v0

    .line 390
    .local v0, "builder":Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    return-object v1

    .line 393
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runBinary(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    return-object v1
.end method

.method public runBinary(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 403
    invoke-virtual {p0, p1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v0

    return-object v0
.end method

.method public runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .line 414
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Result;->newBuilder()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v0

    .line 415
    .local v0, "builder":Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    return-object v1

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v1, "infoSb":Ljava/lang/StringBuilder;
    new-instance v2, Lcom/chrisplus/rootmanager/RootManager$3;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/chrisplus/rootmanager/RootManager$3;-><init>(Lcom/chrisplus/rootmanager/RootManager;[Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;)V

    .line 435
    .local v2, "commandImpl":Lcom/chrisplus/rootmanager/container/Command;
    :try_start_0
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->startRootShell()Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/chrisplus/rootmanager/container/Shell;->add(Lcom/chrisplus/rootmanager/container/Command;)Lcom/chrisplus/rootmanager/container/Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Command;->waitForFinish()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/chrisplus/rootmanager/exception/PermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v3

    .line 446
    .local v3, "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/exception/PermissionException;->printStackTrace()V

    .line 447
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedDenied()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_1

    .line 442
    .end local v3    # "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    :catch_1
    move-exception v3

    .line 443
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 444
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedTimeout()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 439
    :catch_2
    move-exception v3

    .line 440
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 441
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 436
    :catch_3
    move-exception v3

    .line 437
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 438
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedInterrupted()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .line 448
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 450
    :goto_1
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v3

    return-object v3
.end method

.method public screenCap(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 462
    return v1

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screencap "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v0

    .line 465
    .local v0, "res":Lcom/chrisplus/rootmanager/container/Result;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chrisplus/rootmanager/utils/RootUtils;->Log(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result;->getResult()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public screenRecord(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 477
    const-wide/32 v2, 0x3d0900

    const-wide/16 v4, 0x1e

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/chrisplus/rootmanager/RootManager;->screenRecord(Ljava/lang/String;JJ)Z

    move-result v0

    return v0
.end method

.method public screenRecord(Ljava/lang/String;JJ)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitRate"    # J
    .param p4, "time"    # J

    .line 492
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/RootUtils;->isKitKatUpper()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenrecord --bit-rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " --time-limit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v0

    .line 497
    .local v0, "res":Lcom/chrisplus/rootmanager/container/Result;
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result;->getResult()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 493
    .end local v0    # "res":Lcom/chrisplus/rootmanager/container/Result;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public uninstallPackage(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/RootUtils;->checkUIThread()V

    .line 214
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Result;->newBuilder()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v0

    .line 216
    .local v0, "builder":Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    return-object v1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pm uninstall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v2, "infoSb":Ljava/lang/StringBuilder;
    new-instance v3, Lcom/chrisplus/rootmanager/RootManager$2;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/chrisplus/rootmanager/RootManager$2;-><init>(Lcom/chrisplus/rootmanager/RootManager;[Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;)V

    .line 247
    .local v3, "commandImpl":Lcom/chrisplus/rootmanager/container/Command;
    :try_start_0
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->startRootShell()Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/chrisplus/rootmanager/container/Shell;->add(Lcom/chrisplus/rootmanager/container/Command;)Lcom/chrisplus/rootmanager/container/Command;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chrisplus/rootmanager/container/Command;->waitForFinish()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/chrisplus/rootmanager/exception/PermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v4

    .line 258
    .local v4, "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    invoke-virtual {v4}, Lcom/chrisplus/rootmanager/exception/PermissionException;->printStackTrace()V

    .line 259
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedDenied()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    goto :goto_1

    .line 254
    .end local v4    # "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    :catch_1
    move-exception v4

    .line 255
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 256
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedTimeout()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 251
    :catch_2
    move-exception v4

    .line 252
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 248
    :catch_3
    move-exception v4

    .line 249
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 250
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setCommandFailedInterrupted()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    .line 260
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 262
    :goto_1
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v4

    return-object v4
.end method

.method public uninstallSystemApp(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;
    .locals 4
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 276
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/RootUtils;->checkUIThread()V

    .line 278
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Result;->newBuilder()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v0

    .line 279
    .local v0, "builder":Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    return-object v1

    .line 283
    :cond_0
    const-string v1, "/system/"

    const-string v2, "rw"

    invoke-virtual {p0, v1, v2}, Lcom/chrisplus/rootmanager/RootManager;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "apkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rm \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v2

    return-object v2

    .line 290
    .end local v1    # "apkFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->setFailed()Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chrisplus/rootmanager/container/Result$ResultBuilder;->build()Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v1

    return-object v1
.end method

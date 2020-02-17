.class public Lcom/chrisplus/rootmanager/utils/Remounter;
.super Ljava/lang/Object;
.source "Remounter.java"


# static fields
.field private static final MOUNT_FILE:Ljava/lang/String; = "/proc/mounts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMountPoint(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Mount;
    .locals 5
    .param p0, "file"    # Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/Remounter;->getMounts()Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "mounts":Ljava/util/List;, "Ljava/util/List<Lcom/chrisplus/rootmanager/container/Mount;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "path":Ljava/io/File;
    :goto_0
    nop

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chrisplus/rootmanager/container/Mount;

    .line 124
    .local v3, "mount":Lcom/chrisplus/rootmanager/container/Mount;
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    return-object v3

    .line 127
    .end local v3    # "mount":Lcom/chrisplus/rootmanager/container/Mount;
    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    .line 119
    .end local v1    # "path":Ljava/io/File;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getMounts()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chrisplus/rootmanager/container/Mount;",
            ">;"
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    .line 138
    .local v0, "lnr":Ljava/io/LineNumberReader;
    :try_start_0
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/mounts"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 142
    nop

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, "mounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/chrisplus/rootmanager/container/Mount;>;"
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 148
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "fields":[Ljava/lang/String;
    new-instance v4, Lcom/chrisplus/rootmanager/container/Mount;

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aget-object v7, v2, v7

    const/4 v8, 0x3

    aget-object v8, v2, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/chrisplus/rootmanager/container/Mount;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_0

    .line 152
    .end local v2    # "fields":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    goto :goto_1

    .line 153
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 139
    .end local v1    # "mounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/chrisplus/rootmanager/container/Mount;>;"
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 141
    const/4 v2, 0x0

    return-object v2
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "mountType"    # Ljava/lang/String;

    .line 41
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 47
    .local v0, "foundMount":Z
    invoke-static {}, Lcom/chrisplus/rootmanager/utils/Remounter;->getMounts()Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "mounts":Ljava/util/List;, "Ljava/util/List<Lcom/chrisplus/rootmanager/container/Mount;>;"
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 52
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chrisplus/rootmanager/container/Mount;

    .line 54
    .local v4, "mount":Lcom/chrisplus/rootmanager/container/Mount;
    invoke-virtual {v4}, Lcom/chrisplus/rootmanager/container/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_2

    .line 58
    .end local v4    # "mount":Lcom/chrisplus/rootmanager/container/Mount;
    :cond_2
    goto :goto_1

    .line 59
    :cond_3
    :goto_2
    if-nez v0, :cond_1

    .line 60
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 64
    :cond_4
    invoke-static {p0}, Lcom/chrisplus/rootmanager/utils/Remounter;->getMountPoint(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Mount;

    move-result-object v3

    .line 66
    .local v3, "mountPoint":Lcom/chrisplus/rootmanager/container/Mount;
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getFlags()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 68
    .local v4, "isMountMode":Z
    const/4 v5, 0x1

    if-nez v4, :cond_5

    .line 70
    new-instance v6, Lcom/chrisplus/rootmanager/utils/Remounter$1;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "busybox mount -o remount,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getDevice()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toolbox mount -o remount,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getDevice()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mount -o remount,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getDevice()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/bin/toolbox mount -o remount,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getDevice()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v6, v7}, Lcom/chrisplus/rootmanager/utils/Remounter$1;-><init>([Ljava/lang/String;)V

    .line 93
    .local v6, "command":Lcom/chrisplus/rootmanager/container/Command;
    :try_start_0
    invoke-static {}, Lcom/chrisplus/rootmanager/container/Shell;->startRootShell()Lcom/chrisplus/rootmanager/container/Shell;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/chrisplus/rootmanager/container/Shell;->add(Lcom/chrisplus/rootmanager/container/Command;)Lcom/chrisplus/rootmanager/container/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/chrisplus/rootmanager/container/Command;->waitForFinish()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/chrisplus/rootmanager/exception/PermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 100
    :catch_0
    move-exception v7

    .line 101
    .local v7, "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    invoke-virtual {v7}, Lcom/chrisplus/rootmanager/exception/PermissionException;->printStackTrace()V

    goto :goto_3

    .line 98
    .end local v7    # "e":Lcom/chrisplus/rootmanager/exception/PermissionException;
    :catch_1
    move-exception v7

    .line 99
    .local v7, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .end local v7    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_3

    .line 96
    :catch_2
    move-exception v7

    .line 97
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 94
    :catch_3
    move-exception v7

    .line 95
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 106
    .end local v6    # "command":Lcom/chrisplus/rootmanager/container/Command;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_3
    invoke-static {p0}, Lcom/chrisplus/rootmanager/utils/Remounter;->getMountPoint(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Mount;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/chrisplus/rootmanager/container/Mount;->getFlags()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 109
    return v5

    .line 111
    :cond_6
    return v1

    .line 49
    .end local v3    # "mountPoint":Lcom/chrisplus/rootmanager/container/Mount;
    .end local v4    # "isMountMode":Z
    :cond_7
    :goto_4
    return v1
.end method

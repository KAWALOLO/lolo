.class public Luc/ciceron/cerberus/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# instance fields
.field private initDone:Z

.field private rm:Lcom/chrisplus/rootmanager/RootManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/chrisplus/rootmanager/RootManager;->getInstance()Lcom/chrisplus/rootmanager/RootManager;

    move-result-object v0

    iput-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Luc/ciceron/cerberus/Helper;->initDone:Z

    return-void
.end method


# virtual methods
.method public clearGameData()V
    .locals 2

    .line 40
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /sdcard/tencent"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 41
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "pm clear com.tencent.ig"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 42
    return-void
.end method

.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .line 31
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 32
    .local v0, "s":Ljava/util/Scanner;
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fromAssetPath"    # Ljava/lang/String;
    .param p3, "toPath"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 60
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 61
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 62
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 63
    invoke-virtual {p0, v0, v1}, Luc/ciceron/cerberus/Helper;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 67
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x1

    return v2

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v3, 0x0

    return v3
.end method

.method public copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 8
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "dest"    # Ljava/lang/String;

    .line 107
    const-string v0, "libxhook.so"

    const-string v1, "/sdcard/libxhook.so"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    const-string v0, "libcerberus.so"

    const-string v1, "/sdcard/libcerberus.so"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "mount -o rw,remount /data"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 110
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "cp -R %s %s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "/sdcard/libxhook.so"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 111
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "chmod 755 %s"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/libxhook.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 112
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf %s"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v6, "/sdcard/libxhook.so"

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 113
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "cp -R %s %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/sdcard/libcerberus.so"

    aput-object v3, v2, v5

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 114
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "chmod 755 %s"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/libcerberus.so"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 115
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf %s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "/sdcard/libcerberus.so"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 116
    return-void
.end method

.method public copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 79
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public deleteGenyd()V
    .locals 5

    .line 131
    invoke-virtual {p0}, Luc/ciceron/cerberus/Helper;->remount()V

    .line 132
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/system/bin/genyd"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 133
    return-void
.end method

.method public deleteHwFile()V
    .locals 2

    .line 53
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /data/share1/hardware_info.txt"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 54
    return-void
.end method

.method public deleteLdLib()V
    .locals 2

    .line 49
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /system/lib/libldutils.so"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 50
    return-void
.end method

.method public getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 152
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 155
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 156
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 159
    .local v1, "libDir":Ljava/lang/String;
    nop

    .line 161
    return-object v1

    .line 157
    .end local v1    # "libDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    return-object v2
.end method

.method public isInitDone()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Luc/ciceron/cerberus/Helper;->initDone:Z

    return v0
.end method

.method public isInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 144
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 148
    const/4 v1, 0x1

    return v1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Luc/ciceron/cerberus/Helper;->remount()V

    .line 86
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "cp -R %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 87
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 88
    return-void
.end method

.method public prepareAssets(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .line 91
    const-string v0, "libbluetooth_jni.so"

    const-string v1, "/sdcard/libbluetooth_jni.so"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    const-string v0, "/sdcard/libbluetooth_jni.so"

    const-string v1, "/system/lib"

    invoke-virtual {p0, v0, v1}, Luc/ciceron/cerberus/Helper;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "cpuinfo"

    const-string v1, "/sdcard/cpuinfo"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    const-string v0, "cpuinfo_max_freq"

    const-string v1, "/sdcard/cpuinfo_max_freq"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    const-string v0, "meminfo"

    const-string v1, "/sdcard/meminfo"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    const-string v0, "gpubusy"

    const-string v1, "/sdcard/gpubusy"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    const-string v0, "capacity"

    const-string v1, "/sdcard/battery_capacity"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    const-string v0, "usb_online"

    const-string v1, "/sdcard/usb_online"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    const-string v0, "ac_online"

    const-string v1, "/sdcard/ac_online"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    const-string v0, "cid"

    const-string v1, "/sdcard/device_cid"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    const-string v0, "name"

    const-string v1, "/sdcard/device_name"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    const-string v0, "type"

    const-string v1, "/sdcard/device_type"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    const-string v0, "build.prop"

    const-string v1, "/sdcard/build.prop"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    return-void
.end method

.method public reboot()V
    .locals 2

    .line 36
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 37
    return-void
.end method

.method public remount()V
    .locals 2

    .line 23
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "mount -o rw,remount /system"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 24
    return-void
.end method

.method public replaceHosts(Landroid/content/res/AssetManager;)V
    .locals 5
    .param p1, "am"    # Landroid/content/res/AssetManager;

    .line 136
    const-string v0, "hosts"

    const-string v1, "/sdcard/hosts"

    invoke-virtual {p0, p1, v0, v1}, Luc/ciceron/cerberus/Helper;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    const-string v0, "/sdcard/hosts"

    const-string v1, "/system/etc"

    invoke-virtual {p0, v0, v1}, Luc/ciceron/cerberus/Helper;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/sdcard/hosts"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 139
    return-void
.end method

.method public resetGoogleAd()V
    .locals 2

    .line 45
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "rm -rf /data/data/com.google.android.gms/shared_prefs/adid_settings.xml"

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 46
    return-void
.end method

.method public setInitDone(Z)V
    .locals 0
    .param p1, "initDone"    # Z

    .line 123
    iput-boolean p1, p0, Luc/ciceron/cerberus/Helper;->initDone:Z

    .line 124
    return-void
.end method

.method public testHook()Z
    .locals 1

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public writeToBuildProp(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Luc/ciceron/cerberus/Helper;->rm:Lcom/chrisplus/rootmanager/RootManager;

    const-string v1, "echo \'%s\' > /system/build.prop"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    .line 28
    return-void
.end method

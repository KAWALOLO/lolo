.class public Lcom/chrisplus/rootmanager/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final COMMAND_INSTALL:Ljava/lang/String; = "pm install -r "

.field public static final COMMAND_INSTALL_LOCATION_EXTERNAL:Ljava/lang/String; = "-s "

.field public static final COMMAND_INSTALL_LOCATION_INTERNAL:Ljava/lang/String; = "-f "

.field public static final COMMAND_INSTALL_PATCH:Ljava/lang/String; = "LD_LIBRARY_PATH=/vendor/lib:/system/lib "

.field public static final COMMAND_KILL:Ljava/lang/String; = "kill "

.field public static final COMMAND_PIDOF:Ljava/lang/String; = "pidof "

.field public static final COMMAND_PS:Ljava/lang/String; = "ps"

.field public static final COMMAND_SCREENCAP:Ljava/lang/String; = "screencap "

.field public static final COMMAND_SCREENRECORD:Ljava/lang/String; = "screenrecord "

.field public static final COMMAND_TIMEOUT:I = 0x493e0

.field public static final COMMAND_UNINSTALL:Ljava/lang/String; = "pm uninstall "

.field public static final PATH_SYSTEM:Ljava/lang/String; = "/system/"

.field public static final PATH_SYSTEM_BIN:Ljava/lang/String; = "/system/bin/"

.field public static final PERMISSION_EXPIRE_TIME:J = 0x927c0L

.field public static final SCREENRECORD_BITRATE_DEFAULT:J = 0x3d0900L

.field public static final SCREENRECORD_TIMELIMIT_DEFAULT:I = 0x1e

.field public static final SU_BINARY_DIRS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    const-string v0, "/system/bin"

    const-string v1, "/system/sbin"

    const-string v2, "/system/xbin"

    const-string v3, "/vendor/bin"

    const-string v4, "/sbin"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chrisplus/rootmanager/Constants;->SU_BINARY_DIRS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Luc/ciceron/cerberus/fCPU;
.super Ljava/lang/Object;
.source "fCPU.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fCPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 8
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 14
    const-string v0, "java.io.RandomAccessFile"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Luc/ciceron/cerberus/fCPU$1;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fCPU$1;-><init>(Luc/ciceron/cerberus/fCPU;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 23
    const-string v0, "java.io.File"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-instance v3, Luc/ciceron/cerberus/fCPU$2;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fCPU$2;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 32
    const-string v0, "java.io.FileReader"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v6, [Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-instance v3, Luc/ciceron/cerberus/fCPU$3;

    invoke-direct {v3, p0}, Luc/ciceron/cerberus/fCPU$3;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 41
    const-string v0, "com.tencent.tp.r"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "a"

    new-array v3, v6, [Ljava/lang/Object;

    const-class v7, Landroid/content/Context;

    aput-object v7, v3, v4

    new-instance v7, Luc/ciceron/cerberus/fCPU$4;

    invoke-direct {v7, p0}, Luc/ciceron/cerberus/fCPU$4;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v7, v3, v5

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 48
    const-class v0, Ljava/io/File;

    new-array v1, v6, [Ljava/lang/Object;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    new-instance v2, Luc/ciceron/cerberus/fCPU$5;

    invoke-direct {v2, p0}, Luc/ciceron/cerberus/fCPU$5;-><init>(Luc/ciceron/cerberus/fCPU;)V

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 58
    return-void
.end method

.class public Luc/ciceron/cerberus/fGPU;
.super Ljava/lang/Object;
.source "fGPU.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fGPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 8
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 11
    const-string v0, "android.opengl.GLES20"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "glGetString"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Luc/ciceron/cerberus/fGPU$1;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fGPU$1;-><init>(Luc/ciceron/cerberus/fGPU;)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 28
    const-string v0, "java.io.File"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v2, v3, [Ljava/lang/Object;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v6

    new-instance v4, Luc/ciceron/cerberus/fGPU$2;

    invoke-direct {v4, p0}, Luc/ciceron/cerberus/fGPU$2;-><init>(Luc/ciceron/cerberus/fGPU;)V

    aput-object v4, v2, v7

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 37
    const-string v0, "java.io.RandomAccessFile"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v7

    new-instance v4, Luc/ciceron/cerberus/fGPU$3;

    invoke-direct {v4, p0}, Luc/ciceron/cerberus/fGPU$3;-><init>(Luc/ciceron/cerberus/fGPU;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 45
    return-void
.end method

.class public Luc/ciceron/cerberus/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# instance fields
.field app_ctx:Landroid/content/Context;

.field helper:Luc/ciceron/cerberus/Helper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Luc/ciceron/cerberus/Helper;

    invoke-direct {v0}, Luc/ciceron/cerberus/Helper;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/Loader;->helper:Luc/ciceron/cerberus/Helper;

    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 10
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "uc.ciceron.cerberus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "uc.ciceron.cerberus.Helper"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "testHook"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Luc/ciceron/cerberus/Loader$1;

    invoke-direct {v6, p0}, Luc/ciceron/cerberus/Loader$1;-><init>(Luc/ciceron/cerberus/Loader;)V

    aput-object v6, v5, v1

    invoke-static {v0, v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 30
    :cond_0
    const-string v0, "com.tencent.ig"

    const-string v3, "com.pubg.krmobile"

    const-string v4, "com.vng.pubgmobile"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "game_packages":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    return-void

    .line 40
    :cond_1
    const-string v3, "com.tencent.smtt.export.external.LibraryLoader"

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 41
    .local v3, "tencentLoadLib":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "android.support.multidex.MultiDexApplication"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "attachBaseContext"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v1

    new-instance v9, Luc/ciceron/cerberus/Loader$2;

    invoke-direct {v9, p0}, Luc/ciceron/cerberus/Loader$2;-><init>(Luc/ciceron/cerberus/Loader;)V

    aput-object v9, v8, v2

    invoke-static {v4, v5, v6, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 48
    const-string v4, "com.epicgames.ue4.GameActivity"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "onCreate"

    new-array v7, v7, [Ljava/lang/Object;

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v1

    new-instance v1, Luc/ciceron/cerberus/Loader$3;

    invoke-direct {v1, p0, v3}, Luc/ciceron/cerberus/Loader$3;-><init>(Luc/ciceron/cerberus/Loader;Ljava/lang/Class;)V

    aput-object v1, v7, v2

    invoke-static {v4, v5, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 59
    new-instance v1, Luc/ciceron/cerberus/fIdentity;

    invoke-direct {v1}, Luc/ciceron/cerberus/fIdentity;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fIdentity;->fIdentity(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 60
    new-instance v1, Luc/ciceron/cerberus/fCPU;

    invoke-direct {v1}, Luc/ciceron/cerberus/fCPU;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fCPU;->fCPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 61
    new-instance v1, Luc/ciceron/cerberus/fGPU;

    invoke-direct {v1}, Luc/ciceron/cerberus/fGPU;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fGPU;->fGPU(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 62
    new-instance v1, Luc/ciceron/cerberus/fStorage;

    invoke-direct {v1}, Luc/ciceron/cerberus/fStorage;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fStorage;->fStorage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 63
    new-instance v1, Luc/ciceron/cerberus/fSensors;

    invoke-direct {v1}, Luc/ciceron/cerberus/fSensors;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fSensors;->fSensors(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 64
    new-instance v1, Luc/ciceron/cerberus/fPower;

    invoke-direct {v1}, Luc/ciceron/cerberus/fPower;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fPower;->fPower(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 65
    new-instance v1, Luc/ciceron/cerberus/fNetwork;

    invoke-direct {v1}, Luc/ciceron/cerberus/fNetwork;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fNetwork;->fNetwork(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 66
    new-instance v1, Luc/ciceron/cerberus/fMem;

    invoke-direct {v1}, Luc/ciceron/cerberus/fMem;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fMem;->fMem(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 67
    new-instance v1, Luc/ciceron/cerberus/fOther;

    invoke-direct {v1}, Luc/ciceron/cerberus/fOther;-><init>()V

    invoke-virtual {v1, p1}, Luc/ciceron/cerberus/fOther;->fOther(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 70
    return-void
.end method

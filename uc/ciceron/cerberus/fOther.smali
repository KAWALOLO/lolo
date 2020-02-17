.class public Luc/ciceron/cerberus/fOther;
.super Ljava/lang/Object;
.source "fOther.java"


# instance fields
.field private faker:Lio/bloco/faker/Faker;

.field rn:Luc/ciceron/cerberus/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-direct {v0}, Luc/ciceron/cerberus/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/fOther;->rn:Luc/ciceron/cerberus/RandomDataGenerator;

    .line 28
    new-instance v0, Lio/bloco/faker/Faker;

    invoke-direct {v0}, Lio/bloco/faker/Faker;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/fOther;->faker:Lio/bloco/faker/Faker;

    return-void
.end method

.method static synthetic access$000(Luc/ciceron/cerberus/fOther;)Lio/bloco/faker/Faker;
    .locals 1
    .param p0, "x0"    # Luc/ciceron/cerberus/fOther;

    .line 26
    iget-object v0, p0, Luc/ciceron/cerberus/fOther;->faker:Lio/bloco/faker/Faker;

    return-object v0
.end method


# virtual methods
.method public fOther(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 12
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 31
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "uc.ciceron.cerberus"

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v0, "config":Lde/robv/android/xposed/XSharedPreferences;
    new-instance v1, Lde/robv/android/xposed/XSharedPreferences;

    const-string v2, "uc.ciceron.cerberus"

    const-string v3, "phone"

    invoke-direct {v1, v2, v3}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v1, "pref":Lde/robv/android/xposed/XSharedPreferences;
    const-string v2, "android.os.Build"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 35
    .local v2, "build_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "android.os.Build.VERSION"

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 37
    .local v3, "build_version_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "ID"

    const-string v5, "ro.build.id"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v4, "DISPLAY"

    const-string v5, "ro.build.display.id"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v4, "INCREMENTAL"

    const-string v5, "ro.build.version.incremental"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v4, "TYPE"

    const-string v5, "ro.build.type"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    const-string v4, "USER"

    const-string v5, "ro.build.user"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    const-string v4, "HOST"

    const-string v5, "ro.build.host"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    const-string v4, "MODEL"

    const-string v5, "ro.product.model"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v4, "BRAND"

    const-string v5, "ro.product.brand"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v4, "PRODUCT"

    const-string v5, "ro.product.name"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const-string v4, "DEVICE"

    const-string v5, "ro.product.device"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v4, "PRODUCT"

    const-string v5, "ro.build.product"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string v4, "BOARD"

    const-string v5, "ro.product.board"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v4, "MANUFACTURER"

    const-string v5, "ro.product.manufacturer"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v4, "FINGERPRINT"

    const-string v5, "ro.build.fingerprint"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v4, "HARDWARE"

    const-string v5, "qcom"

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string v4, "RELEASE"

    const-string v5, "5.1.1"

    invoke-static {v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ne v4, v5, :cond_0

    .line 55
    const-string v4, "CPU_ABI"

    const-string v5, "armeabi-v7a"

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v4, "CPU_ABI2"

    const-string v5, "armeabi"

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 60
    const-string v4, "SUPPORTED_ABIS"

    const-string v5, "armeabi-v7a"

    const-string v6, "armeabi"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    :cond_1
    const-string v4, "com.tencent.tp.r"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "n"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    new-instance v9, Luc/ciceron/cerberus/fOther$1;

    invoke-direct {v9, p0, v0}, Luc/ciceron/cerberus/fOther$1;-><init>(Luc/ciceron/cerberus/fOther;Lde/robv/android/xposed/XSharedPreferences;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v4, v5, v6, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 70
    const-string v4, "com.tencent.tp.r"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "b"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    new-instance v11, Luc/ciceron/cerberus/fOther$2;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$2;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v7

    invoke-static {v4, v5, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 77
    const-string v4, "com.tencent.tp.r"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "q"

    new-array v9, v7, [Ljava/lang/Object;

    new-instance v11, Luc/ciceron/cerberus/fOther$3;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$3;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 85
    const-string v4, "com.tencent.tp.m"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "a"

    new-array v9, v8, [Ljava/lang/Object;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    new-instance v11, Luc/ciceron/cerberus/fOther$4;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$4;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v7

    invoke-static {v4, v5, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 97
    const-string v4, "android.os.StatFs"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "getAvailableBlocks"

    new-array v9, v7, [Ljava/lang/Object;

    new-instance v11, Luc/ciceron/cerberus/fOther$5;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$5;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 104
    const-string v4, "com.epicgames.ue4.GameActivity"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "onCreate"

    new-array v9, v8, [Ljava/lang/Object;

    const-class v11, Landroid/os/Bundle;

    aput-object v11, v9, v10

    new-instance v11, Luc/ciceron/cerberus/fOther$6;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$6;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v7

    invoke-static {v4, v5, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 119
    const-string v4, "com.tencent.abase.TXSystem"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "IsSysRooted"

    new-array v9, v7, [Ljava/lang/Object;

    new-instance v11, Luc/ciceron/cerberus/fOther$7;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$7;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 126
    const-string v4, "java.io.File"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v8, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v10

    new-instance v9, Luc/ciceron/cerberus/fOther$8;

    invoke-direct {v9, p0}, Luc/ciceron/cerberus/fOther$8;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 135
    const-string v4, "java.io.File"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v8, [Ljava/lang/Object;

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v10

    new-instance v9, Luc/ciceron/cerberus/fOther$9;

    invoke-direct {v9, p0}, Luc/ciceron/cerberus/fOther$9;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 144
    const-string v4, "android.app.ActivityManager"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "getRunningAppProcesses"

    new-array v9, v7, [Ljava/lang/Object;

    new-instance v11, Luc/ciceron/cerberus/fOther$10;

    invoke-direct {v11, p0}, Luc/ciceron/cerberus/fOther$10;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v9}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 151
    const-string v4, "android.app.ActivityManager"

    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v6, "getRunningServices"

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v10

    new-instance v9, Luc/ciceron/cerberus/fOther$11;

    invoke-direct {v9, p0}, Luc/ciceron/cerberus/fOther$11;-><init>(Luc/ciceron/cerberus/fOther;)V

    aput-object v9, v8, v7

    invoke-static {v4, v5, v6, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 157
    return-void
.end method

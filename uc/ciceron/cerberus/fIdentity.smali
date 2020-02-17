.class public Luc/ciceron/cerberus/fIdentity;
.super Ljava/lang/Object;
.source "fIdentity.java"


# instance fields
.field rd:Luc/ciceron/cerberus/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-direct {v0}, Luc/ciceron/cerberus/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/fIdentity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    return-void
.end method


# virtual methods
.method public fIdentity(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 9
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 19
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "uc.ciceron.cerberus"

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .local v0, "config":Lde/robv/android/xposed/XSharedPreferences;
    const-string v1, "android.provider.Settings.Secure"

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v3, "getString"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Luc/ciceron/cerberus/fIdentity$1;

    invoke-direct {v5, p0, v0}, Luc/ciceron/cerberus/fIdentity$1;-><init>(Luc/ciceron/cerberus/fIdentity;Lde/robv/android/xposed/XSharedPreferences;)V

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 30
    const-string v1, "android.os.Build"

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 31
    .local v1, "build_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "SERIAL"

    const-string v3, "S"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v2, "android.telephony.TelephonyManager"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "getDeviceId"

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v8, Luc/ciceron/cerberus/fIdentity$2;

    invoke-direct {v8, p0, v0}, Luc/ciceron/cerberus/fIdentity$2;-><init>(Luc/ciceron/cerberus/fIdentity;Lde/robv/android/xposed/XSharedPreferences;)V

    aput-object v8, v5, v6

    invoke-static {v2, v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 40
    const-string v2, "android.net.wifi.WifiInfo"

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v4, "getMacAddress"

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v7, Luc/ciceron/cerberus/fIdentity$3;

    invoke-direct {v7, p0, v0}, Luc/ciceron/cerberus/fIdentity$3;-><init>(Luc/ciceron/cerberus/fIdentity;Lde/robv/android/xposed/XSharedPreferences;)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 46
    return-void
.end method

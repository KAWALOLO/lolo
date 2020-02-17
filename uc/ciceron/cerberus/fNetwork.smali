.class public Luc/ciceron/cerberus/fNetwork;
.super Ljava/lang/Object;
.source "fNetwork.java"


# instance fields
.field config:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "uc.ciceron.cerberus"

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Luc/ciceron/cerberus/fNetwork;->config:Lde/robv/android/xposed/XSharedPreferences;

    return-void
.end method


# virtual methods
.method public fNetwork(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 7
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 16
    const-string v0, "android.net.wifi.WifiInfo"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getSSID"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$1;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$1;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 23
    const-string v0, "java.io.File"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v6

    new-instance v4, Luc/ciceron/cerberus/fNetwork$2;

    invoke-direct {v4, p0}, Luc/ciceron/cerberus/fNetwork$2;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 32
    const-string v0, "android.net.NetworkInfo"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getType"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$3;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$3;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 39
    const-string v0, "android.net.NetworkInfo"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getState"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$4;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$4;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 46
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getSimState"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$5;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$5;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 53
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getNetworkType"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$6;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$6;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 60
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getSubscriberId"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$7;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$7;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 67
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getPhoneType"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$8;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$8;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 74
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getSimOperator"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$9;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$9;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 81
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getNetworkOperator"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$10;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$10;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 88
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getNetworkCountryIso"

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Luc/ciceron/cerberus/fNetwork$11;

    invoke-direct {v5, p0}, Luc/ciceron/cerberus/fNetwork$11;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 95
    const-string v0, "android.telephony.TelephonyManager"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "getSimCountryIso"

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Luc/ciceron/cerberus/fNetwork$12;

    invoke-direct {v4, p0}, Luc/ciceron/cerberus/fNetwork$12;-><init>(Luc/ciceron/cerberus/fNetwork;)V

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 101
    return-void
.end method

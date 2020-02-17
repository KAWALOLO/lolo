.class Luc/ciceron/cerberus/fNetwork$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fNetwork;->fNetwork(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fNetwork;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fNetwork;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fNetwork;

    .line 23
    iput-object p1, p0, Luc/ciceron/cerberus/fNetwork$2;->this$0:Luc/ciceron/cerberus/fNetwork;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "/sys/class/net/wlan0/address"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v2, "/sdcard/wlan_address"

    aput-object v2, v0, v1

    .line 29
    :cond_0
    return-void
.end method

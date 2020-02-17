.class Luc/ciceron/cerberus/fPower$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fPower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fPower;->fPower(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fPower;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fPower;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fPower;

    .line 11
    iput-object p1, p0, Luc/ciceron/cerberus/fPower$1;->this$0:Luc/ciceron/cerberus/fPower;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 16
    .local v0, "file":Ljava/lang/String;
    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v3, "/sdcard/battery_capacity"

    aput-object v3, v2, v1

    .line 20
    :cond_0
    const-string v2, "/sys/class/power_supply/usb/online"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v3, "/sdcard/usb_online"

    aput-object v3, v2, v1

    .line 24
    :cond_1
    const-string v2, "/sys/class/power_supply/ac/online"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const-string v3, "/sdcard/ac_online"

    aput-object v3, v2, v1

    .line 27
    :cond_2
    return-void
.end method

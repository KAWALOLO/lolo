.class Luc/ciceron/cerberus/fIdentity$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fIdentity;->fIdentity(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fIdentity;

.field final synthetic val$config:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fIdentity;Lde/robv/android/xposed/XSharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fIdentity;

    .line 21
    iput-object p1, p0, Luc/ciceron/cerberus/fIdentity$1;->this$0:Luc/ciceron/cerberus/fIdentity;

    iput-object p2, p0, Luc/ciceron/cerberus/fIdentity$1;->val$config:Lde/robv/android/xposed/XSharedPreferences;

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

    .line 24
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Luc/ciceron/cerberus/fIdentity$1;->val$config:Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method

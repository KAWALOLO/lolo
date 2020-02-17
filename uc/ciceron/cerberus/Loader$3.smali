.class Luc/ciceron/cerberus/Loader$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/Loader;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/Loader;

.field final synthetic val$tencentLoadLib:Ljava/lang/Class;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/Loader;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/Loader;

    .line 48
    iput-object p1, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iput-object p2, p0, Luc/ciceron/cerberus/Loader$3;->val$tencentLoadLib:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Luc/ciceron/cerberus/Loader$3;->val$tencentLoadLib:Ljava/lang/Class;

    const-string v1, "loadLibrary"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v4, v4, Luc/ciceron/cerberus/Loader;->app_ctx:Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "xhook"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Luc/ciceron/cerberus/Loader$3;->val$tencentLoadLib:Ljava/lang/Class;

    const-string v1, "loadLibrary"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v3, v3, Luc/ciceron/cerberus/Loader;->app_ctx:Landroid/content/Context;

    aput-object v3, v2, v5

    const-string v3, "cerberus"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Luc/ciceron/cerberus/Loader$3;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v0, v0, Luc/ciceron/cerberus/Loader;->app_ctx:Landroid/content/Context;

    const-string v1, "Cerberus has been loaded successfully"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    return-void
.end method

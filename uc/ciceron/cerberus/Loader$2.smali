.class Luc/ciceron/cerberus/Loader$2;
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


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/Loader;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/Loader;

    .line 41
    iput-object p1, p0, Luc/ciceron/cerberus/Loader$2;->this$0:Luc/ciceron/cerberus/Loader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Luc/ciceron/cerberus/Loader$2;->this$0:Luc/ciceron/cerberus/Loader;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iput-object v1, v0, Luc/ciceron/cerberus/Loader;->app_ctx:Landroid/content/Context;

    .line 45
    return-void
.end method

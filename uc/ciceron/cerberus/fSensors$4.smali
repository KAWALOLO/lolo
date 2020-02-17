.class Luc/ciceron/cerberus/fSensors$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fSensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fSensors;->fSensors(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fSensors;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fSensors;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fSensors;

    .line 74
    iput-object p1, p0, Luc/ciceron/cerberus/fSensors$4;->this$0:Luc/ciceron/cerberus/fSensors;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    const-string v0, "YYYY"

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

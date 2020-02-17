.class Luc/ciceron/cerberus/fOther$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "fOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luc/ciceron/cerberus/fOther;->fOther(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luc/ciceron/cerberus/fOther;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fOther;)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fOther;

    .line 77
    iput-object p1, p0, Luc/ciceron/cerberus/fOther$3;->this$0:Luc/ciceron/cerberus/fOther;

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

    .line 80
    iget-object v0, p0, Luc/ciceron/cerberus/fOther$3;->this$0:Luc/ciceron/cerberus/fOther;

    invoke-static {v0}, Luc/ciceron/cerberus/fOther;->access$000(Luc/ciceron/cerberus/fOther;)Lio/bloco/faker/Faker;

    move-result-object v0

    iget-object v0, v0, Lio/bloco/faker/Faker;->number:Lio/bloco/faker/components/Number;

    const/16 v1, 0x1b58

    const/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2}, Lio/bloco/faker/components/Number;->between(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

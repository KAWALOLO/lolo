.class Luc/ciceron/cerberus/fSensors$3;
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

.field final synthetic val$r:I

.field final synthetic val$sensors:Ljava/lang/StringBuilder;

.field final synthetic val$vendors:[Ljava/lang/String;


# direct methods
.method constructor <init>(Luc/ciceron/cerberus/fSensors;Ljava/lang/StringBuilder;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Luc/ciceron/cerberus/fSensors;

    .line 52
    iput-object p1, p0, Luc/ciceron/cerberus/fSensors$3;->this$0:Luc/ciceron/cerberus/fSensors;

    iput-object p2, p0, Luc/ciceron/cerberus/fSensors$3;->val$sensors:Ljava/lang/StringBuilder;

    iput-object p3, p0, Luc/ciceron/cerberus/fSensors$3;->val$vendors:[Ljava/lang/String;

    iput p4, p0, Luc/ciceron/cerberus/fSensors$3;->val$r:I

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 9
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 59
    .local v1, "i":I
    iget-object v2, p0, Luc/ciceron/cerberus/fSensors$3;->val$sensors:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 60
    .local v5, "s":Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const/4 v6, 0x4

    if-eq v1, v6, :cond_1

    const/16 v6, 0xa

    if-eq v1, v6, :cond_1

    const/16 v6, 0xb

    if-eq v1, v6, :cond_1

    const/16 v6, 0xc

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    const-string v6, "vendor"

    iget-object v7, p0, Luc/ciceron/cerberus/fSensors$3;->val$vendors:[Ljava/lang/String;

    iget v8, p0, Luc/ciceron/cerberus/fSensors$3;->val$r:I

    aget-object v7, v7, v8

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 63
    :cond_1
    :goto_1
    const-string v6, "vendor"

    const-string v7, "Samsung Inc."

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :goto_2
    nop

    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.class public Luc/ciceron/cerberus/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field helper:Luc/ciceron/cerberus/Helper;

.field output:Ljava/lang/String;

.field rd:Luc/ciceron/cerberus/RandomDataGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    new-instance v0, Luc/ciceron/cerberus/Helper;

    invoke-direct {v0}, Luc/ciceron/cerberus/Helper;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    .line 14
    new-instance v0, Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-direct {v0}, Luc/ciceron/cerberus/RandomDataGenerator;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$null$0(Luc/ciceron/cerberus/MainActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "v2"    # Landroid/view/View;

    .line 106
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->reboot()V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Luc/ciceron/cerberus/MainActivity;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/SharedPreferences;Landroid/widget/Button;Landroid/view/View;)V
    .locals 4
    .param p1, "config"    # Landroid/content/SharedPreferences;
    .param p2, "chbxNewIdentity"    # Landroid/widget/CheckBox;
    .param p3, "txtLog"    # Landroid/widget/TextView;
    .param p4, "pref"    # Landroid/content/SharedPreferences;
    .param p5, "btnBypass"    # Landroid/widget/Button;
    .param p6, "v1"    # Landroid/view/View;

    .line 41
    const-string v0, "bypassed"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "Already bypassed."

    iput-object v0, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.tencent.ig"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->isInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.tencent.ig"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "libDir":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Luc/ciceron/cerberus/Helper;->copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string v1, "<font color=\'red\'>Failed copying libs. Aborting.<strong></strong></font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void

    .line 58
    .end local v0    # "libDir":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.pubg.krmobile"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->isInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.pubg.krmobile"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "libDir":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Luc/ciceron/cerberus/Helper;->copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    :cond_3
    const-string v1, "<font color=\'red\'>Failed copying libs. Aborting.<strong></strong></font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void

    .line 69
    .end local v0    # "libDir":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.vng.pubgmobile"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->isInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    const-string v1, "com.vng.pubgmobile"

    invoke-virtual {v0, v1, p0}, Luc/ciceron/cerberus/Helper;->getLibDir(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "libDir":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 73
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Luc/ciceron/cerberus/Helper;->copyCerberusLibs(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :cond_5
    const-string v1, "<font color=\'red\'>Failed copying libs. Aborting.<strong></strong></font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void

    .line 80
    .end local v0    # "libDir":Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Luc/ciceron/cerberus/Helper;->prepareAssets(Landroid/content/res/AssetManager;)V

    .line 81
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->deleteLdLib()V

    .line 82
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->clearGameData()V

    .line 83
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->resetGoogleAd()V

    .line 85
    iget-object v0, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v0}, Luc/ciceron/cerberus/Helper;->deleteGenyd()V

    .line 87
    new-instance v0, Luc/ciceron/cerberus/fBuildProp;

    invoke-direct {v0}, Luc/ciceron/cerberus/fBuildProp;-><init>()V

    .line 88
    .local v0, "b":Luc/ciceron/cerberus/fBuildProp;
    invoke-virtual {v0, p4}, Luc/ciceron/cerberus/fBuildProp;->generateBuildProp(Landroid/content/SharedPreferences;)V

    .line 89
    invoke-virtual {v0, p4}, Luc/ciceron/cerberus/fBuildProp;->changeBuildProp(Landroid/content/SharedPreferences;)V

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 92
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "bypassed"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "A"

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomA()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "I"

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "S"

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomS()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "M"

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomM()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "W"

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomW()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "K"

    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->rd:Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-virtual {v3}, Luc/ciceron/cerberus/RandomDataGenerator;->randomK()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    const-string v1, "Succesfully bypassed.<br>"

    iput-object v1, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'red\'><strong>Please reboot the emu.</strong></font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v1, 0x7f030003

    invoke-virtual {p5, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    new-instance v1, Luc/ciceron/cerberus/-$$Lambda$MainActivity$Qt1qWsBYGd6pfeWRWg7CHG3ja_o;

    invoke-direct {v1, p0}, Luc/ciceron/cerberus/-$$Lambda$MainActivity$Qt1qWsBYGd6pfeWRWg7CHG3ja_o;-><init>(Luc/ciceron/cerberus/MainActivity;)V

    invoke-virtual {p5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Luc/ciceron/cerberus/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "config"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 22
    .local v1, "config":Landroid/content/SharedPreferences;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v2, 0x7f050000

    invoke-virtual {p0, v2}, Luc/ciceron/cerberus/MainActivity;->setContentView(I)V

    .line 25
    const v2, 0x7f040017

    invoke-virtual {p0, v2}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 26
    .local v2, "txtLog":Landroid/widget/TextView;
    const v3, 0x7f040002

    invoke-virtual {p0, v3}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/Button;

    .line 27
    .local v10, "btnBypass":Landroid/widget/Button;
    const v3, 0x7f040004

    invoke-virtual {p0, v3}, Luc/ciceron/cerberus/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/CheckBox;

    .line 29
    .local v11, "chbxNewIdentity":Landroid/widget/CheckBox;
    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v3}, Luc/ciceron/cerberus/Helper;->testHook()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const-string v3, "<font color=\'red\'><strong>Module is not working. Make sure Xposed was correctly installed and the module is activated! Aborting...</strong></font>"

    iput-object v3, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 31
    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v3, 0x7f030002

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 33
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 34
    return-void

    .line 37
    :cond_0
    const-string v3, "<font color=\'#228B22\'><strong>Module is working. You can run PUBG MOBILE</strong></font>"

    iput-object v3, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Luc/ciceron/cerberus/MainActivity;->output:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v12, Luc/ciceron/cerberus/-$$Lambda$MainActivity$uWBDZ5lORDxiz6-P3U1Hzm9eRZI;

    move-object v3, v12

    move-object v4, p0

    move-object v5, v1

    move-object v6, v11

    move-object v7, v2

    move-object v8, v0

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Luc/ciceron/cerberus/-$$Lambda$MainActivity$uWBDZ5lORDxiz6-P3U1Hzm9eRZI;-><init>(Luc/ciceron/cerberus/MainActivity;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/SharedPreferences;Landroid/widget/Button;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

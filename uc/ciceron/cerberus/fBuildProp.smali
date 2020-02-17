.class public Luc/ciceron/cerberus/fBuildProp;
.super Ljava/lang/Object;
.source "fBuildProp.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field helper:Luc/ciceron/cerberus/Helper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Luc/ciceron/cerberus/Helper;

    invoke-direct {v0}, Luc/ciceron/cerberus/Helper;-><init>()V

    iput-object v0, p0, Luc/ciceron/cerberus/fBuildProp;->helper:Luc/ciceron/cerberus/Helper;

    return-void
.end method


# virtual methods
.method public changeBuildProp(Landroid/content/SharedPreferences;)V
    .locals 17
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/chrisplus/rootmanager/RootManager;->getInstance()Lcom/chrisplus/rootmanager/RootManager;

    move-result-object v2

    .line 59
    .local v2, "rm":Lcom/chrisplus/rootmanager/RootManager;
    const-string v3, "ro.hardware.gps"

    const-string v4, "ro.hardware.sensors"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "params_to_remove":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v4, "param_value_out":Ljava/lang/StringBuilder;
    const-string v5, "cat /system/build.prop"

    invoke-virtual {v2, v5}, Lcom/chrisplus/rootmanager/RootManager;->runCommand(Ljava/lang/String;)Lcom/chrisplus/rootmanager/container/Result;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chrisplus/rootmanager/container/Result;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "build_prop":Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "lines":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x1

    if-ge v9, v7, :cond_4

    aget-object v11, v6, v9

    .line 66
    .local v11, "line":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 67
    goto :goto_1

    .line 70
    :cond_0
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "param_value":[Ljava/lang/String;
    const-string v13, ""

    .line 73
    .local v13, "value":Ljava/lang/String;
    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 74
    aget-object v13, v12, v10

    .line 77
    :cond_1
    aget-object v14, v12, v8

    invoke-interface {v1, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 78
    const-string v14, "%s=%s\n"

    new-array v15, v15, [Ljava/lang/Object;

    aget-object v16, v12, v8

    aput-object v16, v15, v8

    aget-object v10, v12, v8

    const-string v8, ""

    invoke-interface {v1, v10, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v15, v10

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    aget-object v14, v12, v10

    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 82
    const-string v8, "%s=%s\n"

    new-array v14, v15, [Ljava/lang/Object;

    aget-object v15, v12, v10

    aput-object v15, v14, v10

    const/4 v10, 0x1

    aput-object v13, v14, v10

    invoke-static {v8, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "param_value":[Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_0

    .line 87
    :cond_4
    const-string v7, "\n%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "out":Ljava/lang/String;
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v8}, Luc/ciceron/cerberus/Helper;->remount()V

    .line 90
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->helper:Luc/ciceron/cerberus/Helper;

    invoke-virtual {v8, v7}, Luc/ciceron/cerberus/Helper;->writeToBuildProp(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public generateBuildProp(Landroid/content/SharedPreferences;)V
    .locals 20
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .line 16
    move-object/from16 v0, p0

    new-instance v1, Luc/ciceron/cerberus/RandomDataGenerator;

    invoke-direct {v1}, Luc/ciceron/cerberus/RandomDataGenerator;-><init>()V

    .line 17
    .local v1, "random_data":Luc/ciceron/cerberus/RandomDataGenerator;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomBuildId()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "build_id":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomVersionIncremental()Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "build_version_inc":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomDate()Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, "build_date":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomTime()Ljava/lang/String;

    move-result-object v5

    .line 21
    .local v5, "build_time":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Luc/ciceron/cerberus/RandomDataGenerator;->randomString(I)Ljava/lang/String;

    move-result-object v6

    .line 22
    .local v6, "build_device":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3e8

    const/16 v9, 0x2328

    invoke-virtual {v1, v8, v9}, Luc/ciceron/cerberus/RandomDataGenerator;->randomInt(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, "build_platform":Ljava/lang/String;
    const/4 v9, 0x7

    invoke-virtual {v1, v9}, Luc/ciceron/cerberus/RandomDataGenerator;->randomString(I)Ljava/lang/String;

    move-result-object v9

    .line 24
    .local v9, "product_name":Ljava/lang/String;
    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomWord()Ljava/lang/String;

    move-result-object v10

    .line 25
    .local v10, "build_flavor":Ljava/lang/String;
    const-string v11, "GT-I%s"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/16 v14, 0x270f

    invoke-virtual {v1, v8, v14}, Luc/ciceron/cerberus/RandomDataGenerator;->randomInt(II)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 27
    .local v8, "build_model":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    iput-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 30
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v13, "ro.build.id"

    invoke-interface {v11, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v13, "ro.build.display.id"

    invoke-interface {v11, v13, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v13, "ro.build.version.incremental"

    invoke-interface {v11, v13, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v13, "ro.build.version.security_patch"

    invoke-interface {v11, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v11, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v13, "ro.build.date"

    const-string v15, "%s %s"

    const/4 v12, 0x2

    move-object/from16 v17, v8

    .end local v8    # "build_model":Ljava/lang/String;
    .local v17, "build_model":Ljava/lang/String;
    new-array v8, v12, [Ljava/lang/Object;

    aput-object v4, v8, v14

    const/16 v16, 0x1

    aput-object v5, v8, v16

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v13, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.date.utc"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v11, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.time"

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v11, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.type"

    const-string v13, "user"

    invoke-interface {v8, v11, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.user"

    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomWord()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v11, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.host"

    invoke-virtual {v1}, Luc/ciceron/cerberus/RandomDataGenerator;->randomWord()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v11, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.flavor"

    const-string v13, "%s-user"

    const/4 v15, 0x1

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v10, v12, v14

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.model"

    const-string v12, "GT-I9505"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.brand"

    const-string v12, "samsung"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.name"

    invoke-interface {v8, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.device"

    invoke-interface {v8, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.product"

    invoke-interface {v8, v11, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.board"

    invoke-interface {v8, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.manufacturer"

    const-string v12, "samsung"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.locale.language"

    const-string v12, "en"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.product.locale.region"

    const-string v12, "US"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.board.platform"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.description"

    const-string v12, "%s-user 5.1.1 %s %s release-keys"

    const/4 v13, 0x3

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v10, v15, v14

    const/16 v16, 0x1

    aput-object v2, v15, v16

    const/16 v18, 0x2

    aput-object v3, v15, v18

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.fingerprint"

    const-string v12, "samsung/%s/%s:5.1.1/%s/%s:user/release-keys"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v9, v15, v14

    aput-object v6, v15, v16

    aput-object v2, v15, v18

    aput-object v3, v15, v13

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "ro.build.characteristics"

    const-string v12, "phone"

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    iget-object v8, v0, Luc/ciceron/cerberus/fBuildProp;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    return-void
.end method

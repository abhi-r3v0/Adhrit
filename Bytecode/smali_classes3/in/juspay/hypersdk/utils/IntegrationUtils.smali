.class public Lin/juspay/hypersdk/utils/IntegrationUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;
    .locals 5

    invoke-static {}, Lin/juspay/hypersdk/utils/IntegrationUtils;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lin/juspay/hypersdk/utils/IntegrationUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lin/juspay/hypersdk/data/SdkInfo;

    invoke-static {}, Lin/juspay/hypersdk/utils/IntegrationUtils;->isSdkDebuggable()Z

    move-result v3

    invoke-static {}, Lin/juspay/hypersdk/utils/IntegrationUtils;->usesLocalAssets()Z

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Lin/juspay/hypersdk/data/SdkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v2
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_version:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static varargs isClassPresent([Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static isSdkDebuggable()Z
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$bool;->godel_debuggable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static usesLocalAssets()Z
    .locals 2

    invoke-static {}, Lin/juspay/hypersdk/core/JuspayCoreLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$bool;->use_local_assets:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

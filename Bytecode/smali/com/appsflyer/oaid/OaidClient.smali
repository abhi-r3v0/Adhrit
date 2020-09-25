.class public Lcom/appsflyer/oaid/OaidClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/oaid/OaidClient$Info;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Ljava/util/logging/Logger;

.field private final timeout:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/appsflyer/oaid/OaidClient;-><init>(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppsFlyerOaid5.4.0"

    .line 23
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    .line 29
    iput-object p1, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    .line 30
    iput-wide p2, p0, Lcom/appsflyer/oaid/OaidClient;->timeout:J

    .line 31
    iput-object p4, p0, Lcom/appsflyer/oaid/OaidClient;->unit:Ljava/util/concurrent/TimeUnit;

    .line 32
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

.method static synthetic access$000(Lcom/appsflyer/oaid/OaidClient;)Ljava/util/logging/Logger;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    return-object p0
.end method

.method private fetchHuawei()Lcom/appsflyer/oaid/OaidClient$Info;
    .locals 5

    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->isAdvertisingIdAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/appsflyer/oaid/OaidClient$Info;

    invoke-virtual {v1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/appsflyer/oaid/OaidClient$Info;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 124
    iget-object v2, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Huawei"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private fetchMsa()Lcom/appsflyer/oaid/OaidClient$Info;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bun/miitmdid/core/JLibrary;->InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    .line 77
    iget-object v1, p0, Lcom/appsflyer/oaid/OaidClient;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/appsflyer/oaid/OaidClient$1;

    invoke-direct {v3, p0, v0}, Lcom/appsflyer/oaid/OaidClient$1;-><init>(Lcom/appsflyer/oaid/OaidClient;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v1, v2, v3}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I

    move-result v1

    if-eqz v1, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 106
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_0
    const-string v1, "Reflection call error"

    goto :goto_1

    :pswitch_1
    const-string v1, "Callback will be executed in a different thread"

    goto :goto_1

    :pswitch_2
    const-string v1, "Error loading configuration file"

    goto :goto_1

    :pswitch_3
    const-string v1, "Unsupported device"

    goto :goto_1

    :pswitch_4
    const-string v1, "Unsupported manufacturer"

    .line 108
    :goto_1
    iget-object v2, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 110
    :cond_1
    iget-wide v1, p0, Lcom/appsflyer/oaid/OaidClient;->timeout:J

    iget-object v3, p0, Lcom/appsflyer/oaid/OaidClient;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v1, Lcom/appsflyer/oaid/OaidClient$Info;

    invoke-direct {v1, v0}, Lcom/appsflyer/oaid/OaidClient$Info;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xf63e3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isHuawei()Z
    .locals 3

    const/4 v0, 0x0

    .line 44
    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.huawei.android.os.BuildEx$VERSION"

    .line 45
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "EMUI_SDK_INT"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method public fetch()Lcom/appsflyer/oaid/OaidClient$Info;
    .locals 7

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    invoke-static {}, Lcom/appsflyer/oaid/OaidClient;->isHuawei()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/appsflyer/oaid/OaidClient;->fetchHuawei()Lcom/appsflyer/oaid/OaidClient$Info;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/oaid/OaidClient;->fetchMsa()Lcom/appsflyer/oaid/OaidClient$Info;

    move-result-object v2

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fetch "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Fetch"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setLogging(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/appsflyer/oaid/OaidClient;->logger:Ljava/util/logging/Logger;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    return-void
.end method

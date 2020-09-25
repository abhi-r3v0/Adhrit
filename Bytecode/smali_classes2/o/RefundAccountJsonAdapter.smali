.class public final Lo/RefundAccountJsonAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/RefundAccountJsonAdapter;

.field private static final extraCallback:Ljava/lang/Object;


# instance fields
.field private final asInterface:Z

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lcom/google/android/gms/common/api/Status;

.field private final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/RefundAccountJsonAdapter;->extraCallback:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Lo/getCustomAmount$onMessageChannelReady;->common_google_play_services_unknown_issue:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_app_measurement_enable"

    const-string v3, "integer"

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    xor-int/lit8 v0, v2, 0x1

    .line 10
    iput-boolean v0, p0, Lo/RefundAccountJsonAdapter;->asInterface:Z

    move v3, v2

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v2, p0, Lo/RefundAccountJsonAdapter;->asInterface:Z

    .line 12
    :goto_0
    iput-boolean v3, p0, Lo/RefundAccountJsonAdapter;->onPostMessage:Z

    .line 13
    invoke-static {p1}, Lo/getTemplateType;->onPostMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 15
    new-instance v0, Lo/getAndroidDisplayRatio;

    invoke-direct {v0, p1}, Lo/getAndroidDisplayRatio;-><init>(Landroid/content/Context;)V

    .line 1007
    iget-object p1, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    iget-object v2, v0, Lo/getAndroidDisplayRatio;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "google_app_id"

    const-string v4, "string"

    invoke-virtual {p1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    move-object v0, v1

    goto :goto_1

    .line 1008
    :cond_2
    iget-object v0, v0, Lo/getAndroidDisplayRatio;->extraCallback:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 17
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v2, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lo/RefundAccountJsonAdapter;->onNavigationEvent:Lcom/google/android/gms/common/api/Status;

    .line 19
    iput-object v1, p0, Lo/RefundAccountJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    return-void

    .line 21
    :cond_4
    iput-object v0, p0, Lo/RefundAccountJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    .line 22
    sget-object p1, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lo/RefundAccountJsonAdapter;->onNavigationEvent:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)Lo/RefundAccountJsonAdapter;
    .locals 4

    .line 56
    sget-object v0, Lo/RefundAccountJsonAdapter;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lo/RefundAccountJsonAdapter;->ICustomTabsCallback:Lo/RefundAccountJsonAdapter;

    if-eqz v1, :cond_0

    .line 59
    sget-object p0, Lo/RefundAccountJsonAdapter;->ICustomTabsCallback:Lo/RefundAccountJsonAdapter;

    monitor-exit v0

    return-object p0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Initialize must be called before "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0

    throw p0
.end method

.method public static extraCallback()Z
    .locals 1

    const-string v0, "isMeasurementExplicitlyDisabled"

    .line 51
    invoke-static {v0}, Lo/RefundAccountJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)Lo/RefundAccountJsonAdapter;

    move-result-object v0

    .line 52
    iget-boolean v0, v0, Lo/RefundAccountJsonAdapter;->asInterface:Z

    return v0
.end method

.method public static onNavigationEvent(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    if-eqz p0, :cond_1

    .line 42
    sget-object v0, Lo/RefundAccountJsonAdapter;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lo/RefundAccountJsonAdapter;->ICustomTabsCallback:Lo/RefundAccountJsonAdapter;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lo/RefundAccountJsonAdapter;

    invoke-direct {v1, p0}, Lo/RefundAccountJsonAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo/RefundAccountJsonAdapter;->ICustomTabsCallback:Lo/RefundAccountJsonAdapter;

    .line 45
    :cond_0
    sget-object p0, Lo/RefundAccountJsonAdapter;->ICustomTabsCallback:Lo/RefundAccountJsonAdapter;

    iget-object p0, p0, Lo/RefundAccountJsonAdapter;->onNavigationEvent:Lcom/google/android/gms/common/api/Status;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0

    throw p0

    .line 1011
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Context must not be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "getGoogleAppId"

    .line 47
    invoke-static {v0}, Lo/RefundAccountJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)Lo/RefundAccountJsonAdapter;

    move-result-object v0

    .line 48
    iget-object v0, v0, Lo/RefundAccountJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

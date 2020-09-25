.class public final Lo/getTemplateType;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Ljava/lang/String;

.field private static onMessageChannelReady:Z

.field private static onNavigationEvent:I

.field private static onPostMessage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getTemplateType;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)I
    .locals 0

    .line 3
    invoke-static {p0}, Lo/getTemplateType;->onMessageChannelReady(Landroid/content/Context;)V

    .line 4
    sget p0, Lo/getTemplateType;->onNavigationEvent:I

    return p0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;)V
    .locals 3

    .line 5
    sget-object v0, Lo/getTemplateType;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-boolean v1, Lo/getTemplateType;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 8
    sput-boolean v1, Lo/getTemplateType;->onMessageChannelReady:Z

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {p0}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x80

    .line 11
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lo/component28;->onPostMessage(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 12
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    const-string v1, "com.google.app.id"

    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lo/getTemplateType;->ICustomTabsCallback:Ljava/lang/String;

    const p0, 0xbdfcb8

    .line 17
    sput p0, Lo/getTemplateType;->onNavigationEvent:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_4
    const-string v1, "MetadataValueReader"

    const-string v2, "This should never happen."

    .line 20
    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static onPostMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lo/getTemplateType;->onMessageChannelReady(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lo/getTemplateType;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method

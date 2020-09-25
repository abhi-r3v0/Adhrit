.class final Lo/requireArguments$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getId$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/requireArguments;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/content/Context;

.field private synthetic extraCallback:Lo/requireArguments;

.field private synthetic onMessageChannelReady:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lo/requireArguments;Landroid/telephony/TelephonyManager;Landroid/content/Context;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iput-object p2, p0, Lo/requireArguments$3;->onMessageChannelReady:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 8

    const-string v0, "getSimState"

    const-string v1, "getSimStateGemini"

    const-string v2, "getDeviceId"

    const-string v3, "getDeviceIdGemini"

    .line 35
    iget-object v4, p0, Lo/requireArguments$3;->onMessageChannelReady:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    .line 36
    iget-object v5, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lo/requireArguments;->extraCallback(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object v4, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v5, p0, Lo/requireArguments$3;->onMessageChannelReady:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lo/requireArguments;->ICustomTabsCallback(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-object v4, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v5, p0, Lo/requireArguments$3;->onMessageChannelReady:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lo/requireArguments;->onPostMessage(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    iget-object v4, p0, Lo/requireArguments$3;->onMessageChannelReady:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Lo/requireArguments;->onNavigationEvent(I)I

    const/4 v4, 0x0

    .line 42
    :try_start_0
    iget-object v5, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v6, p0, Lo/requireArguments$3;->onMessageChannelReady:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/requireArguments;->onMessageChannelReady(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    iget-object v5, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    invoke-static {v5, v4}, Lo/requireArguments;->onMessageChannelReady(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    :goto_0
    iget-object v5, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    invoke-static {v5, v4}, Lo/requireArguments;->onNavigationEvent(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 49
    :try_start_1
    iget-object v6, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v7, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v7, v3, v5}, Lo/requireArguments;->extraCallback(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lo/requireArguments;->onMessageChannelReady(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    iget-object v6, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v7, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v7, v3, v4}, Lo/requireArguments;->extraCallback(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lo/requireArguments;->onNavigationEvent(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lo/requireArguments$onPostMessage; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 54
    :catch_1
    :try_start_2
    iget-object v3, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v6, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v6, v2, v5}, Lo/requireArguments;->extraCallback(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lo/requireArguments;->onMessageChannelReady(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v6, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v6, v2, v4}, Lo/requireArguments;->extraCallback(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lo/requireArguments;->onNavigationEvent(Lo/requireArguments;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lo/requireArguments$onPostMessage; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    .line 61
    :goto_1
    iget-object v2, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v3, p0, Lo/requireArguments$3;->onMessageChannelReady:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    :goto_2
    invoke-static {v2, v3}, Lo/requireArguments;->onPostMessage(Lo/requireArguments;Z)Z

    .line 62
    iget-object v2, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    invoke-static {v2, v5}, Lo/requireArguments;->onNavigationEvent(Lo/requireArguments;Z)Z

    .line 65
    :try_start_3
    iget-object v2, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v3, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v3, v1, v5}, Lo/requireArguments;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v2, v3}, Lo/requireArguments;->onPostMessage(Lo/requireArguments;Z)Z

    .line 66
    iget-object v2, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v3, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v3, v1, v4}, Lo/requireArguments;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    invoke-static {v2, v1}, Lo/requireArguments;->onNavigationEvent(Lo/requireArguments;Z)Z
    :try_end_3
    .catch Lo/requireArguments$onPostMessage; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    .line 70
    :catch_3
    :try_start_4
    iget-object v1, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v2, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Lo/requireArguments;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v1, v2}, Lo/requireArguments;->onPostMessage(Lo/requireArguments;Z)Z

    .line 71
    iget-object v1, p0, Lo/requireArguments$3;->extraCallback:Lo/requireArguments;

    iget-object v2, p0, Lo/requireArguments$3;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Lo/requireArguments;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v1, v0}, Lo/requireArguments;->onNavigationEvent(Lo/requireArguments;Z)Z
    :try_end_4
    .catch Lo/requireArguments$onPostMessage; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_1
    return-void
.end method

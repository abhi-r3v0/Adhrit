.class public final Lo/StatementResponse;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static ICustomTabsCallback()V
    .locals 0

    .line 59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lo/StatementResponse;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static onPostMessage()V
    .locals 2

    .line 47
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {}, Lo/StatementResponse;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

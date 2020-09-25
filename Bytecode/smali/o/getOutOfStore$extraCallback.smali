.class final Lo/getOutOfStore$extraCallback;
.super Lo/getOutOfStore$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOutOfStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/setPreinstallAttribution;",
            "ZI)V"
        }
    .end annotation

    .line 515
    invoke-direct/range {p0 .. p5}, Lo/getOutOfStore$onPostMessage;-><init>(Lo/getOutOfStore;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;ZI)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Lo/getCardBackgroundColor;)I
    .locals 0

    .line 528
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result p1

    return p1
.end method

.method protected final onMessageChannelReady()Lo/AFKeystoreWrapper;
    .locals 1

    const/4 v0, 0x0

    .line 533
    invoke-static {v0, v0, v0}, Lo/ı;->extraCallback(IZZ)Lo/AFKeystoreWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected final declared-synchronized onNavigationEvent(Lo/getCardBackgroundColor;I)Z
    .locals 3

    monitor-enter p0

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 521
    monitor-exit p0

    return v1

    .line 523
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Lo/getOutOfStore$onPostMessage;->onNavigationEvent(Lo/getCardBackgroundColor;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

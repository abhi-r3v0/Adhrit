.class final Lo/peekValue$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/peekValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/peekValue;


# direct methods
.method constructor <init>(Lo/peekValue;)V
    .locals 0

    iput-object p1, p0, Lo/peekValue$asBinder;->onMessageChannelReady:Lo/peekValue;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 10

    .line 1079
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->MediaBrowserCompat$CustomActionCallback:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x43

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x2c6160

    if-eq v1, v2, :cond_2

    const v2, 0x32b09e

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "list"

    .line 1081
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/peekValue$asBinder;->onMessageChannelReady:Lo/peekValue;

    invoke-static {v0}, Lo/peekValue;->onPostMessage(Lo/peekValue;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 4000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1081
    new-instance v1, Lo/getThumbTintList;

    new-instance v9, Lo/setTitleMarginStart$extraCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const-string v3, "CARD_ONBOARDING_FRAGMENT"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v9}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "carousel"

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/peekValue$asBinder;->onMessageChannelReady:Lo/peekValue;

    invoke-static {v0}, Lo/peekValue;->onPostMessage(Lo/peekValue;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1080
    new-instance v1, Lo/getThumbTintList;

    new-instance v9, Lo/setTitleMarginStart$extraCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const-string v3, "MCF_VERIFY_CARD_FRAGMENT"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v9}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_1

    .line 1082
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/peekValue$asBinder;->onMessageChannelReady:Lo/peekValue;

    invoke-static {v0}, Lo/peekValue;->onPostMessage(Lo/peekValue;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1082
    new-instance v1, Lo/getThumbTintList;

    new-instance v9, Lo/setTitleMarginStart$extraCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const-string v3, "MCF_VERIFY_CARD_FRAGMENT"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v9}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 31
    :goto_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

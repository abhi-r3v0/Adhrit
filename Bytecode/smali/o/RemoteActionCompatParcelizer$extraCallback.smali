.class final Lo/RemoteActionCompatParcelizer$extraCallback;
.super Landroidx/appcompat/widget/ForwardingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RemoteActionCompatParcelizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/RemoteActionCompatParcelizer;


# direct methods
.method public constructor <init>(Lo/RemoteActionCompatParcelizer;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lo/RemoteActionCompatParcelizer$extraCallback;->onMessageChannelReady:Lo/RemoteActionCompatParcelizer;

    .line 300
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getPopup()Lo/sendCustomAction;
    .locals 1

    .line 305
    iget-object v0, p0, Lo/RemoteActionCompatParcelizer$extraCallback;->onMessageChannelReady:Lo/RemoteActionCompatParcelizer;

    iget-object v0, v0, Lo/RemoteActionCompatParcelizer;->ICustomTabsCallback:Lo/RemoteActionCompatParcelizer$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lo/RemoteActionCompatParcelizer$extraCallback;->onMessageChannelReady:Lo/RemoteActionCompatParcelizer;

    iget-object v0, v0, Lo/RemoteActionCompatParcelizer;->ICustomTabsCallback:Lo/RemoteActionCompatParcelizer$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/RemoteActionCompatParcelizer$ICustomTabsCallback;->extraCallback()Lo/sendCustomAction;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onForwardingStarted()Z
    .locals 3

    .line 314
    iget-object v0, p0, Lo/RemoteActionCompatParcelizer$extraCallback;->onMessageChannelReady:Lo/RemoteActionCompatParcelizer;

    iget-object v0, v0, Lo/RemoteActionCompatParcelizer;->onPostMessage:Lo/AudioAttributesImplBaseParcelizer$onMessageChannelReady;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RemoteActionCompatParcelizer$extraCallback;->onMessageChannelReady:Lo/RemoteActionCompatParcelizer;

    iget-object v0, v0, Lo/RemoteActionCompatParcelizer;->onPostMessage:Lo/AudioAttributesImplBaseParcelizer$onMessageChannelReady;

    iget-object v2, p0, Lo/RemoteActionCompatParcelizer$extraCallback;->onMessageChannelReady:Lo/RemoteActionCompatParcelizer;

    iget-object v2, v2, Lo/RemoteActionCompatParcelizer;->extraCallback:Lo/MediaBrowserCompat;

    invoke-interface {v0, v2}, Lo/AudioAttributesImplBaseParcelizer$onMessageChannelReady;->invokeItem(Lo/MediaBrowserCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->getPopup()Lo/sendCustomAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lo/sendCustomAction;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

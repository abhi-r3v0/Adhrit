.class final Lo/handleMessage$onPostMessage$4;
.super Landroidx/appcompat/widget/ForwardingListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/handleMessage$onPostMessage;-><init>(Lo/handleMessage;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/handleMessage;

.field final synthetic onPostMessage:Lo/handleMessage$onPostMessage;


# direct methods
.method constructor <init>(Lo/handleMessage$onPostMessage;Landroid/view/View;Lo/handleMessage;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lo/handleMessage$onPostMessage$4;->onPostMessage:Lo/handleMessage$onPostMessage;

    iput-object p3, p0, Lo/handleMessage$onPostMessage$4;->onMessageChannelReady:Lo/handleMessage;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getPopup()Lo/sendCustomAction;
    .locals 1

    .line 641
    iget-object v0, p0, Lo/handleMessage$onPostMessage$4;->onPostMessage:Lo/handleMessage$onPostMessage;

    iget-object v0, v0, Lo/handleMessage$onPostMessage;->onPostMessage:Lo/handleMessage;

    iget-object v0, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 645
    :cond_0
    iget-object v0, p0, Lo/handleMessage$onPostMessage$4;->onPostMessage:Lo/handleMessage$onPostMessage;

    iget-object v0, v0, Lo/handleMessage$onPostMessage;->onPostMessage:Lo/handleMessage;

    iget-object v0, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getRoot;->onNavigationEvent()Lo/getServiceComponent;

    move-result-object v0

    return-object v0
.end method

.method public final onForwardingStarted()Z
    .locals 1

    .line 650
    iget-object v0, p0, Lo/handleMessage$onPostMessage$4;->onPostMessage:Lo/handleMessage$onPostMessage;

    iget-object v0, v0, Lo/handleMessage$onPostMessage;->onPostMessage:Lo/handleMessage;

    invoke-virtual {v0}, Lo/handleMessage;->ICustomTabsCallback()Z

    const/4 v0, 0x1

    return v0
.end method

.method public final onForwardingStopped()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lo/handleMessage$onPostMessage$4;->onPostMessage:Lo/handleMessage$onPostMessage;

    iget-object v0, v0, Lo/handleMessage$onPostMessage;->onPostMessage:Lo/handleMessage;

    iget-object v0, v0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 663
    :cond_0
    iget-object v0, p0, Lo/handleMessage$onPostMessage$4;->onPostMessage:Lo/handleMessage$onPostMessage;

    iget-object v0, v0, Lo/handleMessage$onPostMessage;->onPostMessage:Lo/handleMessage;

    invoke-virtual {v0}, Lo/handleMessage;->onNavigationEvent()Z

    const/4 v0, 0x1

    return v0
.end method

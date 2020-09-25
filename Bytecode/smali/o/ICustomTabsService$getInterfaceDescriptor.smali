.class final Lo/ICustomTabsService$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSessionToken$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "getInterfaceDescriptor"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 2727
    iput-object p1, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 4

    .line 2732
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->asBinder()Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2734
    :goto_0
    iget-object v3, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Lo/ICustomTabsService;->onPostMessage(Landroid/view/Menu;)Lo/ICustomTabsService$ICustomTabsService;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 2737
    iget-object p2, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    iget v2, p1, Lo/ICustomTabsService$ICustomTabsService;->onMessageChannelReady:I

    invoke-virtual {p2, v2, p1, v0}, Lo/ICustomTabsService;->onPostMessage(ILo/ICustomTabsService$ICustomTabsService;Landroid/view/Menu;)V

    .line 2738
    iget-object p2, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-virtual {p2, p1, v1}, Lo/ICustomTabsService;->ICustomTabsCallback(Lo/ICustomTabsService$ICustomTabsService;Z)V

    return-void

    .line 2742
    :cond_2
    iget-object v0, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-virtual {v0, p1, p2}, Lo/ICustomTabsService;->ICustomTabsCallback(Lo/ICustomTabsService$ICustomTabsService;Z)V

    :cond_3
    return-void
.end method

.method public final onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)Z
    .locals 2

    .line 2750
    invoke-virtual {p1}, Lo/AudioAttributesImplBaseParcelizer;->asBinder()Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-boolean v0, v0, Lo/ICustomTabsService;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-virtual {v0}, Lo/ICustomTabsService;->getInterfaceDescriptor()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2752
    iget-object v1, p0, Lo/ICustomTabsService$getInterfaceDescriptor;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-boolean v1, v1, Lo/ICustomTabsService;->postMessage:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 2753
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

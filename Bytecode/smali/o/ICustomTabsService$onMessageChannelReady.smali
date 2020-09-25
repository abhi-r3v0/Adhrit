.class final Lo/ICustomTabsService$onMessageChannelReady;
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
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 2761
    iput-object p1, p0, Lo/ICustomTabsService$onMessageChannelReady;->ICustomTabsCallback:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;Z)V
    .locals 0

    .line 2775
    iget-object p2, p0, Lo/ICustomTabsService$onMessageChannelReady;->ICustomTabsCallback:Lo/ICustomTabsService;

    invoke-virtual {p2, p1}, Lo/ICustomTabsService;->ICustomTabsCallback(Lo/AudioAttributesImplBaseParcelizer;)V

    return-void
.end method

.method public final onPostMessage(Lo/AudioAttributesImplBaseParcelizer;)Z
    .locals 2

    .line 2766
    iget-object v0, p0, Lo/ICustomTabsService$onMessageChannelReady;->ICustomTabsCallback:Lo/ICustomTabsService;

    invoke-virtual {v0}, Lo/ICustomTabsService;->getInterfaceDescriptor()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2768
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

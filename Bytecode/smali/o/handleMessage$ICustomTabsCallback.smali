.class final Lo/handleMessage$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/handleMessage;

.field private onPostMessage:Lo/handleMessage$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/handleMessage;Lo/handleMessage$onMessageChannelReady;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lo/handleMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/handleMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Lo/handleMessage$ICustomTabsCallback;->onPostMessage:Lo/handleMessage$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 788
    iget-object v0, p0, Lo/handleMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/handleMessage;

    invoke-static {v0}, Lo/handleMessage;->onNavigationEvent(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lo/handleMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/handleMessage;

    invoke-static {v0}, Lo/handleMessage;->asInterface(Lo/handleMessage;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    .line 1841
    iget-object v1, v0, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer$extraCallback;

    if-eqz v1, :cond_0

    .line 1842
    iget-object v1, v0, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent:Lo/AudioAttributesImplBaseParcelizer$extraCallback;

    invoke-interface {v1, v0}, Lo/AudioAttributesImplBaseParcelizer$extraCallback;->extraCallback(Lo/AudioAttributesImplBaseParcelizer;)V

    .line 791
    :cond_0
    iget-object v0, p0, Lo/handleMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/handleMessage;

    invoke-static {v0}, Lo/handleMessage;->asBinder(Lo/handleMessage;)Lo/getExtras;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    .line 792
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/handleMessage$ICustomTabsCallback;->onPostMessage:Lo/handleMessage$onMessageChannelReady;

    .line 2320
    iget-object v1, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lo/getRoot;->extraCallback:Lo/getServiceComponent;

    invoke-virtual {v1}, Lo/getServiceComponent;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 2173
    :cond_2
    iget-object v1, v0, Lo/getRoot;->onNavigationEvent:Landroid/view/View;

    if-nez v1, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 2177
    :cond_3
    invoke-virtual {v0, v3, v3, v3, v3}, Lo/getRoot;->onMessageChannelReady(IIZZ)V

    :goto_1
    if-eqz v2, :cond_4

    .line 793
    iget-object v0, p0, Lo/handleMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/handleMessage;

    iget-object v1, p0, Lo/handleMessage$ICustomTabsCallback;->onPostMessage:Lo/handleMessage$onMessageChannelReady;

    iput-object v1, v0, Lo/handleMessage;->ICustomTabsService:Lo/handleMessage$onMessageChannelReady;

    .line 795
    :cond_4
    iget-object v0, p0, Lo/handleMessage$ICustomTabsCallback;->ICustomTabsCallback:Lo/handleMessage;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/handleMessage;->getInterfaceDescriptor:Lo/handleMessage$ICustomTabsCallback;

    return-void
.end method

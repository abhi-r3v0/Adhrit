.class public final Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$onViewCreated$2",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onNavigationEvent:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 402
    iget-object p1, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {p1}, Lo/isLayoutRTL;->onTransact(Lo/isLayoutRTL;)V

    :cond_0
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 394
    iget-object p1, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    const-string p2, "lifecycle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    new-instance p2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 879
    new-instance v0, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v0}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 880
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    if-eqz p3, :cond_1

    .line 395
    iget-object p3, p0, Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/isLayoutRTL;

    invoke-static {p3}, Lo/isLayoutRTL;->onPostMessage(Lo/isLayoutRTL;)V

    .line 882
    iput-boolean v2, p2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p3

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq p3, v1, :cond_2

    .line 884
    new-instance p3, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;

    invoke-direct {p3, p1, p2, p0}, Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$onViewCreated$2$onScrolled$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy;)V

    check-cast p3, Lo/createCallback;

    iput-object p3, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 885
    iget-object p2, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Lo/createCallback;

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 887
    :cond_2
    :goto_0
    new-instance p2, Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy$extraCallback;

    invoke-direct {p2, v0, p1}, Lo/isLayoutRTL$ICustomTabsCallback$Stub$Proxy$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

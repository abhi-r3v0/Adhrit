.class public final Lo/FullLifecycleObserverAdapter$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FullLifecycleObserverAdapter;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/festives/GreetingCarousalFragment$listItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onMessageChannelReady:Lo/FullLifecycleObserverAdapter;


# direct methods
.method constructor <init>(Lo/FullLifecycleObserverAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lo/FullLifecycleObserverAdapter$onMessageChannelReady;->onMessageChannelReady:Lo/FullLifecycleObserverAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 2

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    instance-of p3, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    if-eqz p3, :cond_0

    .line 147
    iget-object p3, p0, Lo/FullLifecycleObserverAdapter$onMessageChannelReady;->onMessageChannelReady:Lo/FullLifecycleObserverAdapter;

    invoke-static {p3}, Lo/FullLifecycleObserverAdapter;->onPostMessage(Lo/FullLifecycleObserverAdapter;)Lo/onActivityDestroyed;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 148
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$onMessageChannelReady;->onMessageChannelReady:Lo/FullLifecycleObserverAdapter;

    .line 1000
    iget-object v0, v0, Lo/FullLifecycleObserverAdapter;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 148
    check-cast p2, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    invoke-static {p3, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "creative"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1433
    new-instance p1, Lo/onGetChildDrawingOrder$setDefaultImpl;

    new-instance v1, Lo/LifecycleController$observer$1$ICustomTabsCallback;

    invoke-direct {v1, p3, p2}, Lo/LifecycleController$observer$1$ICustomTabsCallback;-><init>(Lo/onActivityDestroyed;Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;)V

    invoke-direct {p1, v1}, Lo/onGetChildDrawingOrder$setDefaultImpl;-><init>(Lo/LifecycleController$observer$1$ICustomTabsCallback;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {v0, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_0
    return-void
.end method

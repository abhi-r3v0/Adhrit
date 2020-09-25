.class public final Lo/updateNavigationIcon$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fromQueueItem$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateNavigationIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001Ba\u0012\u0012\u0008\u0002\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0002\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/animation/DefaultTransitionListener;",
        "Landroidx/transition/Transition$TransitionListener;",
        "onTransitionEnd",
        "Lkotlin/Function0;",
        "",
        "onTransitionResume",
        "onTransitionPause",
        "onTransitionCancel",
        "onTransitionStart",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "transition",
        "Landroidx/transition/Transition;",
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
.field private final ICustomTabsCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    .line 4000
    invoke-direct {p0, v0, v1}, Lo/updateNavigationIcon$extraCallback;-><init>(Lo/getServerTime;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/getServerTime;I)V
    .locals 6

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 3009
    invoke-direct/range {v0 .. v5}, Lo/updateNavigationIcon$extraCallback;-><init>(Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V

    return-void
.end method

.method private constructor <init>(Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateNavigationIcon$extraCallback;->onPostMessage:Lo/getServerTime;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/updateNavigationIcon$extraCallback;->ICustomTabsCallback:Lo/getServerTime;

    iput-object p1, p0, Lo/updateNavigationIcon$extraCallback;->extraCallback:Lo/getServerTime;

    iput-object p1, p0, Lo/updateNavigationIcon$extraCallback;->onNavigationEvent:Lo/getServerTime;

    iput-object p1, p0, Lo/updateNavigationIcon$extraCallback;->onMessageChannelReady:Lo/getServerTime;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    iget-object p1, p0, Lo/updateNavigationIcon$extraCallback;->onPostMessage:Lo/getServerTime;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    iget-object p1, p0, Lo/updateNavigationIcon$extraCallback;->extraCallback:Lo/getServerTime;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    iget-object p1, p0, Lo/updateNavigationIcon$extraCallback;->onNavigationEvent:Lo/getServerTime;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    iget-object p1, p0, Lo/updateNavigationIcon$extraCallback;->onMessageChannelReady:Lo/getServerTime;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    iget-object p1, p0, Lo/updateNavigationIcon$extraCallback;->ICustomTabsCallback:Lo/getServerTime;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void
.end method

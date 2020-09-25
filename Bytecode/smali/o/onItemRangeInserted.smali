.class public final Lo/onItemRangeInserted;
.super Lo/setThumbPosition$extraCallback;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/menu/NavigationMenu$updateConstraints$1$1",
        "Lcom/dreamplug/fabrik/helper/ui/animation/DefaultTransitionListener;",
        "onTransitionEnd",
        "",
        "transition",
        "Landroidx/transition/Transition;",
        "onTransitionStart",
        "app_release",
        "com/dreamplug/fabrik/ui/main/menu/NavigationMenu$updateConstraints$$inlined$also$lambda$2"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onTransact:Lo/setThreshold$onPostMessage;


# direct methods
.method public constructor <init>(Lo/setThreshold$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/onItemRangeInserted;->onTransact:Lo/setThreshold$onPostMessage;

    .line 113
    invoke-direct {p0}, Lo/setThumbPosition$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lo/onItemRangeInserted;->onTransact:Lo/setThreshold$onPostMessage;

    const/4 v0, 0x0

    .line 2018
    iput-boolean v0, p1, Lo/setThreshold$onPostMessage;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueueItem;)V
    .locals 1

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lo/onItemRangeInserted;->onTransact:Lo/setThreshold$onPostMessage;

    const/4 v0, 0x1

    .line 1018
    iput-boolean v0, p1, Lo/setThreshold$onPostMessage;->ICustomTabsCallback$Stub:Z

    return-void
.end method

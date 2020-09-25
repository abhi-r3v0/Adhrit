.class public final Lo/requireView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/requireView$onNavigationEvent;
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field final ICustomTabsCallback$Stub:Lo/isSameListener;

.field private ICustomTabsService:Landroid/widget/TextView;

.field public asBinder:J

.field private final asInterface:Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$observer$1;

.field extraCallback:J

.field onMessageChannelReady:Ljava/lang/Runnable;

.field public onNavigationEvent:F

.field public onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

.field public final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/requireView$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field onTransact:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/requireView;->ICustomTabsService:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lo/requireView;->onNavigationEvent:F

    const-wide/16 v0, 0x1f4

    .line 21
    iput-wide v0, p0, Lo/requireView;->extraCallback:J

    .line 33
    new-instance p1, Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$observer$1;

    invoke-direct {p1, p0}, Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$observer$1;-><init>(Lo/requireView;)V

    iput-object p1, p0, Lo/requireView;->asInterface:Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$observer$1;

    .line 39
    sget-object p1, Lo/requireView$onMessageChannelReady;->ICustomTabsCallback:Lo/requireView$onMessageChannelReady;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 39
    iput-object v0, p0, Lo/requireView;->ICustomTabsCallback$Stub:Lo/isSameListener;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lo/requireView;->asBinder:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/requireView$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "commands"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lo/requireView;->onPostMessage()V

    .line 60
    iget-object v0, p0, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    invoke-static {p1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/requireView$onNavigationEvent;

    .line 1043
    iget-wide v0, p1, Lo/requireView$onNavigationEvent;->ICustomTabsCallback:J

    .line 61
    iput-wide v0, p0, Lo/requireView;->asBinder:J

    .line 62
    invoke-virtual {p0}, Lo/requireView;->onMessageChannelReady()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lo/requireView;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/requireView;->asInterface:Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$observer$1;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 25
    :cond_0
    iput-object p1, p0, Lo/requireView;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    if-eqz p1, :cond_1

    .line 26
    iget-object v0, p0, Lo/requireView;->asInterface:Lcom/dreamplug/fabrik/helper/ui/text/MultiTextFadeBehaviour$observer$1;

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    :cond_1
    return-void
.end method

.method final onMessageChannelReady()V
    .locals 5

    .line 76
    iget v0, p0, Lo/requireView;->onTransact:I

    iget-object v1, p0, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    iget v1, p0, Lo/requireView;->onTransact:I

    const-string v2, "$this$getOrNull"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const-string v3, "$this$lastIndex"

    .line 2266
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_0

    .line 2266
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 77
    :goto_0
    check-cast v0, Lo/requireView$onNavigationEvent;

    .line 78
    iget-object v1, p0, Lo/requireView;->ICustomTabsService:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4043
    iget-object v2, v0, Lo/requireView$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 78
    :cond_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lo/requireView;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 80
    iget v1, p0, Lo/requireView;->onNavigationEvent:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 81
    new-instance v1, Lo/requireView$onPostMessage;

    invoke-direct {v1, v0, p0}, Lo/requireView$onPostMessage;-><init>(Landroid/view/ViewPropertyAnimator;Lo/requireView;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 93
    iget-wide v1, p0, Lo/requireView;->extraCallback:J

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method public final onNavigationEvent(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "commands"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lo/requireView;->onPostMessage()V

    .line 51
    check-cast p1, Ljava/lang/Iterable;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 142
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/String;

    .line 51
    new-instance v2, Lo/requireView$onNavigationEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p2, p3, v3}, Lo/requireView$onNavigationEvent;-><init>(Ljava/lang/String;JB)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 52
    iget-object p1, p0, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    iput-wide p2, p0, Lo/requireView;->asBinder:J

    .line 55
    invoke-virtual {p0}, Lo/requireView;->onMessageChannelReady()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/requireView;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 67
    iget-object v0, p0, Lo/requireView;->onMessageChannelReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lo/requireView;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 68
    iget-object v1, p0, Lo/requireView;->onMessageChannelReady:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lo/requireView;->onMessageChannelReady:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lo/requireView;->onTransact:I

    .line 72
    iget-object v0, p0, Lo/requireView;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final run()V
    .locals 5

    .line 6012
    iget-object v0, p0, Lo/requireView;->ICustomTabsService:Landroid/widget/TextView;

    .line 5100
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 5101
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 5102
    new-instance v1, Lo/getView;

    invoke-direct {v1, v0, p0}, Lo/getView;-><init>(Landroid/view/ViewPropertyAnimator;Lo/requireView;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 6021
    iget-wide v1, p0, Lo/requireView;->extraCallback:J

    const-wide/16 v3, 0x2

    .line 5128
    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 5129
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

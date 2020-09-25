.class public Lo/stopScroll;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/registerConversionListener;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "adjustBottom",
        "",
        "Landroid/view/View;",
        "lifecycle",
        "Landroidx/lifecycle/LifecycleOwner;",
        "setVisibility",
        "show",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic onPostMessage:Lo/isSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/isSet;)V
    .locals 0

    .line 8000
    iput-object p1, p0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final onPostMessage(Landroid/view/View;Z)V
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 673
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 674
    new-instance v0, Lo/stopScroll$onPostMessage;

    invoke-direct {v0, p0}, Lo/stopScroll$onPostMessage;-><init>(Landroid/view/View;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 682
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 683
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 684
    new-instance v0, Lo/stopScroll$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/stopScroll$ICustomTabsCallback;-><init>(Landroid/view/View;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public ICustomTabsCallback(Lo/getHostPrefix;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public extraCallback(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Lo/getHostPrefix;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 3000
    iget-object v0, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    .line 2000
    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    new-instance v0, Lo/requiredProvider;

    invoke-direct {v0, p0, p2}, Lo/requiredProvider;-><init>(Lo/stopScroll;Landroid/os/IBinder;)V

    .line 4000
    invoke-virtual {p1, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 5000
    iget-object v0, p0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 6000
    iget-object v0, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    .line 5000
    invoke-virtual {v0, p1, v1}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    new-instance v0, Lo/required;

    invoke-direct {v0, p0}, Lo/required;-><init>(Lo/stopScroll;)V

    .line 7000
    invoke-virtual {p1, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    return-void
.end method

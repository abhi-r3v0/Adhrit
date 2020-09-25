.class final Lo/getUserName;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

.field private final synthetic onNavigationEvent:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lo/getUserName;->extraCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/getUserName;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/getUserName;->extraCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Z)Z

    iget-object v0, p0, Lo/getUserName;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DeviceAttrResponse;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/getUserName;->extraCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-static {v1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Lo/setLastItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/setLastItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/setLastItem;)Z

    return-void

    :cond_0
    const-string v2, "Ad is not visible. Not refreshing ad."

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, v0, Lo/DeviceAttrResponse;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0, v1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/setLastItem;)V

    :cond_1
    return-void
.end method

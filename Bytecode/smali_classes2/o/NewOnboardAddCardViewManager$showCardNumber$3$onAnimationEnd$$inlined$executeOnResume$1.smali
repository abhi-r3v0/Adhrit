.class public final Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Runnable;

.field private asInterface:J

.field private extraCallback:Z

.field private final onMessageChannelReady:Lo/LoginUiModel;

.field private onNavigationEvent:Z

.field private onPostMessage:Lo/setLastItem;


# direct methods
.method public constructor <init>(Lo/DeviceAttrResponse;)V
    .locals 2

    new-instance v0, Lo/LoginUiModel;

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lo/LoginUiModel;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/DeviceAttrResponse;Lo/LoginUiModel;)V

    return-void
.end method

.method private constructor <init>(Lo/DeviceAttrResponse;Lo/LoginUiModel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->asInterface:J

    iput-object p2, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/LoginUiModel;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lo/getUserName;

    invoke-direct {p1, p0, p2}, Lo/getUserName;-><init>(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic extraCallback(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Lo/setLastItem;
    .locals 0

    iget-object p0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    iget-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    return v0
.end method

.method public final extraCallback()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Z

    iget-boolean v1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    iget-object v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    iget-wide v1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->asInterface:J

    invoke-virtual {p0, v0, v1, v2}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Lo/setLastItem;J)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setLastItem;J)V
    .locals 1

    iget-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    if-eqz v0, :cond_0

    const-string p1, "An ad refresh is already scheduled."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    iput-wide p2, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->asInterface:J

    iget-boolean p1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Z

    if-nez p1, :cond_1

    const/16 p1, 0x41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Scheduling ad refresh "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " milliseconds from now."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object p1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/LoginUiModel;

    iget-object v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Lo/LoginUiModel;->onNavigationEvent(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    iget-object v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/LoginUiModel;

    iget-object v1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/LoginUiModel;->onPostMessage(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setLastItem;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Lo/setLastItem;J)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Z

    iget-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/LoginUiModel;

    iget-object v1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/LoginUiModel;->onPostMessage(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Z

    iput-boolean v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Z

    iget-object v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    iget-object v0, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Lo/setLastItem;J)V

    return-void
.end method

.method public final onPostMessage(Lo/setLastItem;)V
    .locals 0

    iput-object p1, p0, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    return-void
.end method

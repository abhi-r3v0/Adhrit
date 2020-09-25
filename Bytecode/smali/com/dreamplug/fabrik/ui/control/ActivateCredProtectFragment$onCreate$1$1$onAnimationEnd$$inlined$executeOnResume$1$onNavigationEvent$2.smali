.class final Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$1$1$onAnimationStart$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent$2;->extraCallback:Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent$2;->extraCallback:Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onNavigationEvent;->onPostMessage:Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;

    iget-object v0, v0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;->onNavigationEvent:Lo/onActivityPostResumed$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-static {v0}, Lo/onActivityPostResumed;->onMessageChannelReady(Lo/onActivityPostResumed;)V

    .line 100
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

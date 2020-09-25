.class final Lo/stopInterceptRequestLayout$asInterface$extraCallback$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout$asInterface$extraCallback;->onAnimationEnd(Landroid/animation/Animator;)V
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
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$1$1$1$1$onAnimationEnd$1",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$lambda$1$1",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$let$lambda$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/stopInterceptRequestLayout$asInterface$extraCallback;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout$asInterface$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$asInterface$extraCallback$5;->onNavigationEvent:Lo/stopInterceptRequestLayout$asInterface$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1131
    iget-object v0, p0, Lo/stopInterceptRequestLayout$asInterface$extraCallback$5;->onNavigationEvent:Lo/stopInterceptRequestLayout$asInterface$extraCallback;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$asInterface$extraCallback;->extraCallback:Lo/stopInterceptRequestLayout$asInterface;

    iget-object v0, v0, Lo/stopInterceptRequestLayout$asInterface;->ICustomTabsCallback:Lo/stopInterceptRequestLayout;

    .line 2039
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 1131
    invoke-virtual {v0}, Lo/pullGlows;->asBinder()V

    .line 127
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

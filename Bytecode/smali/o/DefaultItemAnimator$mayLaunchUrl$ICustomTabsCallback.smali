.class final Lo/DefaultItemAnimator$mayLaunchUrl$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultItemAnimator$mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/control/payments/statusV2/PaymentSuccessFabrikDialog$setSuccessUI$2$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/DefaultItemAnimator$mayLaunchUrl;

.field private synthetic onNavigationEvent:J


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator$mayLaunchUrl;J)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$mayLaunchUrl$ICustomTabsCallback;->extraCallback:Lo/DefaultItemAnimator$mayLaunchUrl;

    iput-wide p2, p0, Lo/DefaultItemAnimator$mayLaunchUrl$ICustomTabsCallback;->onNavigationEvent:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 207
    iget-object v0, p0, Lo/DefaultItemAnimator$mayLaunchUrl$ICustomTabsCallback;->extraCallback:Lo/DefaultItemAnimator$mayLaunchUrl;

    iget-object v0, v0, Lo/DefaultItemAnimator$mayLaunchUrl;->ICustomTabsCallback:Lo/DefaultItemAnimator;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->gemCountText:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "gemCountText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lo/DefaultItemAnimator$mayLaunchUrl$ICustomTabsCallback;->onNavigationEvent:J

    const-string v3, "it"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v1, 0x0

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v3, v2}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/Number;ZLjava/lang/String;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

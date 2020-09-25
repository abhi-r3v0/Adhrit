.class final Lo/installDefaultInflateDelegates$ICustomTabsService$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/installDefaultInflateDelegates;->asInterface()V
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
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setAmountDetails$3$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:D

.field private synthetic extraCallback:Lo/installDefaultInflateDelegates;

.field private synthetic onPostMessage:D


# direct methods
.method constructor <init>(Lo/installDefaultInflateDelegates;DD)V
    .locals 0

    iput-object p1, p0, Lo/installDefaultInflateDelegates$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/installDefaultInflateDelegates;

    iput-wide p2, p0, Lo/installDefaultInflateDelegates$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:D

    iput-wide p4, p0, Lo/installDefaultInflateDelegates$ICustomTabsService$Stub$Proxy;->onPostMessage:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    const-string v0, "it"

    .line 401
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    float-to-double v0, p1

    iget-wide v2, p0, Lo/installDefaultInflateDelegates$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:D

    iget-wide v4, p0, Lo/installDefaultInflateDelegates$ICustomTabsService$Stub$Proxy;->onPostMessage:D

    sub-double/2addr v2, v4

    mul-double v0, v0, v2

    add-double/2addr v0, v4

    .line 402
    iget-object p1, p0, Lo/installDefaultInflateDelegates$ICustomTabsService$Stub$Proxy;->extraCallback:Lo/installDefaultInflateDelegates;

    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->itemPrice:I

    invoke-virtual {p1, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v2, "itemPrice"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    invoke-static/range {v1 .. v8}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

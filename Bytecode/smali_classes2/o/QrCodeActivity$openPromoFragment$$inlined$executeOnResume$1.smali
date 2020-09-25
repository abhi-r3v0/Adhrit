.class final synthetic Lo/QrCodeActivity$openPromoFragment$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;


# direct methods
.method private constructor <init>(Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/QrCodeActivity$openPromoFragment$$inlined$executeOnResume$1;->extraCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    return-void
.end method

.method static onNavigationEvent(Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lo/QrCodeActivity$openPromoFragment$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/QrCodeActivity$openPromoFragment$$inlined$executeOnResume$1;-><init>(Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/QrCodeActivity$openPromoFragment$$inlined$executeOnResume$1;->extraCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage()V

    return-void
.end method

.class final synthetic Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/OnboardCardsData;


# instance fields
.field private final ICustomTabsCallback:Lo/push;

.field private final onNavigationEvent:Lo/updateRangeInNode;

.field private final onPostMessage:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/push;

    iput-object p2, p0, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onNavigationEvent:Lo/updateRangeInNode;

    iput-object p3, p0, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onPostMessage:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 5

    iget-object v0, p0, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/push;

    iget-object v1, p0, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onNavigationEvent:Lo/updateRangeInNode;

    iget-object v2, p0, Lo/QrCodeActivity$hideQRFragment$$inlined$executeOnResume$1;->onPostMessage:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    sget-object v3, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v4, Lo/joinStringList;

    invoke-direct {v4, v0, v1, v2}, Lo/joinStringList;-><init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    sget v0, Lo/getPath;->onPostMessage:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

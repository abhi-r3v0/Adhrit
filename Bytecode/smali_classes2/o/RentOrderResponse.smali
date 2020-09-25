.class final synthetic Lo/RentOrderResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

.field private final onPostMessage:Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RentOrderResponse;->onPostMessage:Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/RentOrderResponse;->onMessageChannelReady:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/RentOrderResponse;->onPostMessage:Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/RentOrderResponse;->onMessageChannelReady:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/updateRangeInNode;

    invoke-static {v0}, Lo/updateRangeInNode;->onMessageChannelReady(Lo/updateRangeInNode;)Lo/CardValidationResponse;

    move-result-object v0

    invoke-interface {v0, v1}, Lo/CardValidationResponse;->ICustomTabsCallback(Ljava/lang/Object;)V

    invoke-interface {v1}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage()V

    return-void
.end method

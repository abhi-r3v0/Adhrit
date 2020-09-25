.class final Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Supported$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/Supported$$Parcelable<",
        "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/updateRangeInNode;


# direct methods
.method constructor <init>(Lo/updateRangeInNode;)V
    .locals 0

    iput-object p1, p0, Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;->onPostMessage:Lo/updateRangeInNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/RentOrderResponse;

    invoke-direct {v1, p0, p1}, Lo/RentOrderResponse;-><init>(Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

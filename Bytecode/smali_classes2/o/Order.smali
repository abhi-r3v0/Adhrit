.class final Lo/Order;
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
.field private final synthetic onPostMessage:Lo/applyTo;


# direct methods
.method constructor <init>(Lo/updateRangeInNode;Lo/applyTo;)V
    .locals 0

    iput-object p2, p0, Lo/Order;->onPostMessage:Lo/applyTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/Order;->onPostMessage:Lo/applyTo;

    invoke-interface {p1}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady()Lo/PlutusOrder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getSelected;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

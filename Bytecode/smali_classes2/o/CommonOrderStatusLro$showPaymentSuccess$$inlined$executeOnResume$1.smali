.class final Lo/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SuggestedAmountJsonAdapter;


# instance fields
.field private final synthetic onPostMessage:Lo/applyTo;


# direct methods
.method constructor <init>(Lo/updateRangeInNode;Lo/applyTo;)V
    .locals 0

    iput-object p2, p0, Lo/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/applyTo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/applyTo;

    invoke-virtual {v0}, Lo/getSelected;->ICustomTabsCallback()V

    return-void
.end method

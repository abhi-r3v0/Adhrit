.class final Lo/PaymentSummary;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getBank_code;

.field private final synthetic onNavigationEvent:Lo/RecentOrder;


# direct methods
.method constructor <init>(Lo/getBank_code;Lo/RecentOrder;)V
    .locals 0

    iput-object p1, p0, Lo/PaymentSummary;->ICustomTabsCallback:Lo/getBank_code;

    iput-object p2, p0, Lo/PaymentSummary;->onNavigationEvent:Lo/RecentOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lo/PaymentSummary;->onNavigationEvent:Lo/RecentOrder;

    invoke-virtual {p1}, Lo/RecentOrder;->onMessageChannelReady()V

    iget-object p1, p0, Lo/PaymentSummary;->ICustomTabsCallback:Lo/getBank_code;

    iget-object p1, p1, Lo/getBank_code;->extraCallback:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/PaymentSummary;->ICustomTabsCallback:Lo/getBank_code;

    iget-object p1, p1, Lo/getBank_code;->extraCallback:Lo/StatementDetailsRequestJsonAdapter;

    invoke-interface {p1}, Lo/StatementDetailsRequestJsonAdapter;->onNavigationEvent()V

    :cond_0
    return-void
.end method

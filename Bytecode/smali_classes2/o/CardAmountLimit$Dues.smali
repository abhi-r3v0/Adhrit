.class final Lo/CardAmountLimit$Dues;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/getBank_code;

.field private final synthetic onPostMessage:Lo/RecentOrder;


# direct methods
.method constructor <init>(Lo/getBank_code;Lo/RecentOrder;)V
    .locals 0

    iput-object p1, p0, Lo/CardAmountLimit$Dues;->onMessageChannelReady:Lo/getBank_code;

    iput-object p2, p0, Lo/CardAmountLimit$Dues;->onPostMessage:Lo/RecentOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lo/CardAmountLimit$Dues;->onPostMessage:Lo/RecentOrder;

    invoke-virtual {p1}, Lo/RecentOrder;->onMessageChannelReady()V

    iget-object p1, p0, Lo/CardAmountLimit$Dues;->onMessageChannelReady:Lo/getBank_code;

    iget-object p1, p1, Lo/getBank_code;->extraCallback:Lo/StatementDetailsRequestJsonAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/CardAmountLimit$Dues;->onMessageChannelReady:Lo/getBank_code;

    iget-object p1, p1, Lo/getBank_code;->extraCallback:Lo/StatementDetailsRequestJsonAdapter;

    invoke-interface {p1}, Lo/StatementDetailsRequestJsonAdapter;->onNavigationEvent()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

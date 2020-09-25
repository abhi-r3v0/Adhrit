.class final synthetic Lo/OnboardMachineInternalFragment$onViewCreated$3$3$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/component21;


# instance fields
.field private final ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# direct methods
.method constructor <init>(Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/OnboardMachineInternalFragment$onViewCreated$3$3$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lo/OnboardMachineInternalFragment$onViewCreated$3$3$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    check-cast p1, Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    instance-of v1, p1, Lo/withObject;

    if-eqz v1, :cond_0

    check-cast p1, Lo/withObject;

    invoke-static {p1}, Lo/withObject;->ICustomTabsCallback(Lo/withObject;)Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

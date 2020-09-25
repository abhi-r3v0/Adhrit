.class final Lo/LoanStatusResponse$Body;
.super Lo/LoanStatusResponse$BankDetails;


# instance fields
.field private final onMessageChannelReady:Lo/LoanStatusResponse$AccountDetails;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/LoanStatusResponse$BankDetails;-><init>()V

    new-instance v0, Lo/LoanStatusResponse$AccountDetails;

    invoke-direct {v0}, Lo/LoanStatusResponse$AccountDetails;-><init>()V

    iput-object v0, p0, Lo/LoanStatusResponse$Body;->onMessageChannelReady:Lo/LoanStatusResponse$AccountDetails;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lo/LoanStatusResponse$Body;->onMessageChannelReady:Lo/LoanStatusResponse$AccountDetails;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/LoanStatusResponse$AccountDetails;->onPostMessage(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "Suppressed: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

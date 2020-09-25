.class final Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/getOrderId;


# direct methods
.method constructor <init>(Lo/getOrderId;)V
    .locals 0

    iput-object p1, p0, Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getOrderId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getOrderId;

    invoke-static {p1}, Lo/getOrderId;->ICustomTabsCallback(Lo/getOrderId;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getOrderId;

    invoke-static {v0}, Lo/getOrderId;->onNavigationEvent(Lo/getOrderId;)Lo/SuggestedAmount;

    move-result-object v0

    invoke-virtual {v0}, Lo/SuggestedAmount;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getOrderId;

    invoke-static {v0}, Lo/getOrderId;->extraCallback(Lo/getOrderId;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_id"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    new-instance v0, Lo/getRedirectUrl;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lo/getRedirectUrl;-><init>(ILjava/util/Map;)V

    invoke-virtual {v0}, Lo/getRedirectUrl;->asBinder()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lo/getRedirectUrl;->onNavigationEvent()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " request error: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    iget-object p2, p0, Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;->onNavigationEvent:Lo/getOrderId;

    invoke-static {p2}, Lo/getOrderId;->onNavigationEvent(Lo/getOrderId;)Lo/SuggestedAmount;

    move-result-object p2

    invoke-virtual {p2, v0}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

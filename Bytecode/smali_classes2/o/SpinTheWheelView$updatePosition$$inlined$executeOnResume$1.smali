.class final Lo/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;
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
.field private final synthetic onMessageChannelReady:Lo/setTextAnimatorValue;


# direct methods
.method constructor <init>(Lo/setTextAnimatorValue;)V
    .locals 0

    iput-object p1, p0, Lo/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/setTextAnimatorValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
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

    :try_start_0
    iget-object p1, p0, Lo/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/setTextAnimatorValue;

    const-string v0, "timestamp"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lo/setTextAnimatorValue;->onPostMessage:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to call parse unconfirmedClickTimestamp."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lo/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/setTextAnimatorValue;

    const-string v0, "id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lo/setTextAnimatorValue;->onNavigationEvent:Ljava/lang/String;

    const-string p1, "asset_id"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lo/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/setTextAnimatorValue;

    invoke-static {p2}, Lo/setTextAnimatorValue;->ICustomTabsCallback(Lo/setTextAnimatorValue;)Lo/ActionableJsonAdapter;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "Received unconfirmed click but UnconfirmedClickListener is null."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object p2, p0, Lo/SpinTheWheelView$updatePosition$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/setTextAnimatorValue;

    invoke-static {p2}, Lo/setTextAnimatorValue;->ICustomTabsCallback(Lo/setTextAnimatorValue;)Lo/ActionableJsonAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/ActionableJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.class final Lo/utf8Bytes;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

.field private final synthetic onMessageChannelReady:Lo/push;

.field private final synthetic onNavigationEvent:Lo/updateRangeInNode;


# direct methods
.method constructor <init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/utf8Bytes;->onMessageChannelReady:Lo/push;

    iput-object p2, p0, Lo/utf8Bytes;->onNavigationEvent:Lo/updateRangeInNode;

    iput-object p3, p0, Lo/utf8Bytes;->extraCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lo/utf8Bytes;->onMessageChannelReady:Lo/push;

    invoke-static {p1}, Lo/push;->onNavigationEvent(Lo/push;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lo/utf8Bytes;->onNavigationEvent:Lo/updateRangeInNode;

    invoke-virtual {p2}, Lo/getSelected;->onPostMessage()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lo/utf8Bytes;->onNavigationEvent:Lo/updateRangeInNode;

    invoke-virtual {p2}, Lo/getSelected;->onPostMessage()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo/utf8Bytes;->onMessageChannelReady:Lo/push;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo/push;->onMessageChannelReady(Lo/push;I)I

    iget-object p2, p0, Lo/utf8Bytes;->onMessageChannelReady:Lo/push;

    invoke-static {p2}, Lo/push;->extraCallback(Lo/push;)Lo/CardValidationResponse;

    move-result-object p2

    iget-object v0, p0, Lo/utf8Bytes;->extraCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-interface {p2, v0}, Lo/CardValidationResponse;->ICustomTabsCallback(Ljava/lang/Object;)V

    iget-object p2, p0, Lo/utf8Bytes;->onNavigationEvent:Lo/updateRangeInNode;

    iget-object v0, p0, Lo/utf8Bytes;->extraCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {p2, v0}, Lo/getSelected;->ICustomTabsCallback(Ljava/lang/Object;)V

    iget-object p2, p0, Lo/utf8Bytes;->onMessageChannelReady:Lo/push;

    iget-object v0, p0, Lo/utf8Bytes;->onNavigationEvent:Lo/updateRangeInNode;

    invoke-static {p2, v0}, Lo/push;->ICustomTabsCallback(Lo/push;Lo/updateRangeInNode;)Lo/updateRangeInNode;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

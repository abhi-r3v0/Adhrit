.class public final Lo/getCards;
.super Lo/getContacts;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lo/getAccountReference$onPostMessage<",
        "+",
        "Lo/PaymentRequestItem;",
        "Lo/setCustomAmount$onMessageChannelReady;",
        ">;>",
        "Lo/getContacts;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getAccountReference$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILo/getAccountReference$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lo/getContacts;-><init>(I)V

    .line 2
    iput-object p2, p0, Lo/getCards;->onNavigationEvent:Lo/getAccountReference$onPostMessage;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/RuntimeException;)V
    .locals 4

    .line 11
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 13
    iget-object p1, p0, Lo/getCards;->onNavigationEvent:Lo/getAccountReference$onPostMessage;

    invoke-virtual {p1, v0}, Lo/getAccountReference$onPostMessage;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lo/getCards;->onNavigationEvent:Lo/getAccountReference$onPostMessage;

    invoke-virtual {v0, p1}, Lo/getAccountReference$onPostMessage;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final onPostMessage(Lo/AmexWebViewInterface;Z)V
    .locals 1

    .line 15
    iget-object v0, p0, Lo/getCards;->onNavigationEvent:Lo/getAccountReference$onPostMessage;

    invoke-virtual {p1, v0, p2}, Lo/AmexWebViewInterface;->ICustomTabsCallback(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V

    return-void
.end method

.method public final onPostMessage(Lo/getAmount_refunded$onMessageChannelReady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lo/getCards;->onNavigationEvent:Lo/getAccountReference$onPostMessage;

    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent()Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getAccountReference$onPostMessage;->extraCallback(Lo/setCustomAmount$onMessageChannelReady;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p0, p1}, Lo/getContacts;->onNavigationEvent(Ljava/lang/RuntimeException;)V

    return-void
.end method

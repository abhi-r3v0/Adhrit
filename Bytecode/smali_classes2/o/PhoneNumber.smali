.class public final Lo/PhoneNumber;
.super Lo/Cards;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lo/setCustomAmount$onPostMessage;",
        ">",
        "Lo/Cards;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setPaymentDueDateWeaklyTyped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setPaymentDueDateWeaklyTyped;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    .line 1
    invoke-direct {p0, v0}, Lo/Cards;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lo/PhoneNumber;->extraCallback:Lo/setPaymentDueDateWeaklyTyped;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "R::",
            "Lo/PaymentRequestItem;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lo/PhoneNumber;->extraCallback:Lo/setPaymentDueDateWeaklyTyped;

    invoke-virtual {v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->doRead(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Lo/setCalendarName;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()Landroid/os/Looper;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/PhoneNumber;->extraCallback:Lo/setPaymentDueDateWeaklyTyped;

    invoke-virtual {v0}, Lo/setPaymentDueDateWeaklyTyped;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "+",
            "Lo/PaymentRequestItem;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/PhoneNumber;->extraCallback:Lo/setPaymentDueDateWeaklyTyped;

    invoke-virtual {v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->doWrite(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Lo/setCalendarName;)V
    .locals 0

    return-void
.end method

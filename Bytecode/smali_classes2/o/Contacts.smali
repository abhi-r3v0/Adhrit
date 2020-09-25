.class public abstract Lo/Contacts;
.super Lo/getContacts;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/getContacts;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/getAmount_refunded$onMessageChannelReady;)[Lo/setAmountRefunded;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)[",
            "Lo/setAmountRefunded;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/getAmount_refunded$onMessageChannelReady;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;)Z"
        }
    .end annotation
.end method

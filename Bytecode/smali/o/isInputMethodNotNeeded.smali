.class public abstract Lo/isInputMethodNotNeeded;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH&J\n\u0010\n\u001a\u0004\u0018\u00010\tH&J\u0008\u0010\u000b\u001a\u00020\tH&J\u0008\u0010\u000c\u001a\u00020\tH&J\u0008\u0010\r\u001a\u00020\tH&J\u0008\u0010\u000e\u001a\u00020\u000fH&R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/Instrument;",
        "",
        "status",
        "Lcom/cred/pay/repository/models/Status;",
        "(Lcom/cred/pay/repository/models/Status;)V",
        "getStatus",
        "()Lcom/cred/pay/repository/models/Status;",
        "setStatus",
        "getInstrumentGroup",
        "",
        "getInstrumentLogo",
        "getInstrumentTitle",
        "getInstrumentUniqueId",
        "getPaymentMethodType",
        "toInstrumentComplete",
        "Lcom/cred/pay/repository/converters/InstrumentsComplete;",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;


# direct methods
.method public constructor <init>(Lcom/cred/pay/repository/models/Status;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/lang/String;
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public abstract onMessageChannelReady()Ljava/lang/String;
.end method

.method public abstract onNavigationEvent()Ljava/lang/String;
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method

.method public abstract onTransact()Lcom/cred/pay/repository/converters/InstrumentsComplete;
.end method

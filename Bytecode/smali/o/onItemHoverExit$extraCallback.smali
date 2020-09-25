.class public final Lo/onItemHoverExit$extraCallback;
.super Lo/onItemHoverExit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemHoverExit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cred/pay/ui/PaymentScreen$CredUpiBottomSheet;",
        "Lcom/cred/pay/ui/PaymentScreen;",
        "fromUpiOnboarding",
        "",
        "upiStatusList",
        "",
        "Lcom/cred/pay/repository/models/CredUpiInstrumentBankStatus;",
        "showConfirmation",
        "(ZLjava/util/List;Z)V",
        "getFromUpiOnboarding",
        "()Z",
        "getShowConfirmation",
        "getUpiStatusList",
        "()Ljava/util/List;",
        "getTag",
        "",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:Z

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/CredUpiInstrumentBankStatus;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/CredUpiInstrumentBankStatus;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lo/onItemHoverExit;-><init>(B)V

    iput-boolean p1, p0, Lo/onItemHoverExit$extraCallback;->extraCallback:Z

    iput-object p2, p0, Lo/onItemHoverExit$extraCallback;->onMessageChannelReady:Ljava/util/List;

    iput-boolean p3, p0, Lo/onItemHoverExit$extraCallback;->onNavigationEvent:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    const/4 p3, 0x0

    .line 46
    invoke-direct {p0, p1, p3, p2}, Lo/onItemHoverExit$extraCallback;-><init>(ZLjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "cred_upi"

    return-object v0
.end method

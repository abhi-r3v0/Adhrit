.class public interface abstract Lo/setPromptView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPromptView$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J\u001e\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cred/pay/repository/CardService;",
        "",
        "getCardDetails",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/cred/pay/repository/models/CardBinResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "bin",
        "Lcom/cred/pay/repository/models/CardBinRequest;",
        "Companion",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/setPromptView$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/setPromptView$onPostMessage;->onMessageChannelReady:Lo/setPromptView$onPostMessage;

    sput-object v0, Lo/setPromptView;->onMessageChannelReady:Lo/setPromptView$onPostMessage;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lcom/cred/pay/repository/models/CardBinRequest;)Lo/clearScrap;
    .param p1    # Lcom/cred/pay/repository/models/CardBinRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/models/CardBinRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/cred/pay/repository/models/CardBinResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/plutus/v1/cardinfo/bin"
    .end annotation
.end method

.class public final Lo/inflate$extraCallback$warmup;
.super Lo/inflate$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "warmup"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0018\u0008\u0002\u0010\u0006\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR!\u0010\u0006\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$VisaPay;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen;",
        "payload",
        "Lcom/cred/pay/repository/visa/ViesPayPayload;",
        "providerResponse",
        "Lorg/json/JSONObject;",
        "responseCallback",
        "Lkotlin/Function1;",
        "",
        "(Lcom/cred/pay/repository/visa/ViesPayPayload;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V",
        "getPayload",
        "()Lcom/cred/pay/repository/visa/ViesPayPayload;",
        "getProviderResponse",
        "()Lorg/json/JSONObject;",
        "getResponseCallback",
        "()Lkotlin/jvm/functions/Function1;",
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
.field final ICustomTabsCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Lorg/json/JSONObject;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lorg/json/JSONObject;

.field final onNavigationEvent:Lcom/cred/pay/repository/visa/ViesPayPayload;


# direct methods
.method public constructor <init>(Lcom/cred/pay/repository/visa/ViesPayPayload;Lorg/json/JSONObject;Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/visa/ViesPayPayload;",
            "Lorg/json/JSONObject;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lorg/json/JSONObject;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 908
    invoke-direct {p0, v0}, Lo/inflate$extraCallback;-><init>(B)V

    iput-object p1, p0, Lo/inflate$extraCallback$warmup;->onNavigationEvent:Lcom/cred/pay/repository/visa/ViesPayPayload;

    iput-object p2, p0, Lo/inflate$extraCallback$warmup;->extraCallback:Lorg/json/JSONObject;

    iput-object p3, p0, Lo/inflate$extraCallback$warmup;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    return-void
.end method


# virtual methods
.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "visaPay"

    return-object v0
.end method

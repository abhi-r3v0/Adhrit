.class public final Lo/inflate$extraCallback$asInterface;
.super Lo/inflate$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asInterface"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen$GenericBottomSheet;",
        "Lcom/cred/pay/ui/checkout/CheckoutContainerViewModel$CheckoutScreen;",
        "uiState",
        "Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "tagString",
        "",
        "(Lcom/dreamplug/widget/GenericBottomSheet$UIState;Ljava/lang/String;)V",
        "getTagString",
        "()Ljava/lang/String;",
        "getUiState",
        "()Lcom/dreamplug/widget/GenericBottomSheet$UIState;",
        "getTag",
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
.field private final ICustomTabsCallback:Ljava/lang/String;

.field final onNavigationEvent:Lo/updateAllRemainingSpans$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/updateAllRemainingSpans$onMessageChannelReady;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "uiState"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tagString"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 896
    invoke-direct {p0, v0}, Lo/inflate$extraCallback;-><init>(B)V

    iput-object p1, p0, Lo/inflate$extraCallback$asInterface;->onNavigationEvent:Lo/updateAllRemainingSpans$onMessageChannelReady;

    iput-object p2, p0, Lo/inflate$extraCallback$asInterface;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 897
    iget-object v0, p0, Lo/inflate$extraCallback$asInterface;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

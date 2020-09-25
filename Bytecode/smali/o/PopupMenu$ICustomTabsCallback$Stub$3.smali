.class final Lo/PopupMenu$ICustomTabsCallback$Stub$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu$ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Boolean;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "hasUserConsentVies",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/PopupMenu$ICustomTabsCallback$Stub;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/PopupMenu$ICustomTabsCallback$Stub;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->extraCallback:Lo/PopupMenu$ICustomTabsCallback$Stub;

    iput-object p2, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->onNavigationEvent:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1109
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->extraCallback:Lo/PopupMenu$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    .line 2000
    iget-object p1, p1, Lo/PopupMenu;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/inflate;

    .line 1109
    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->extraCallback:Lo/PopupMenu$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    invoke-static {p1}, Lo/PopupMenu;->onMessageChannelReady(Lo/PopupMenu;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    move-result-object v1

    iget-object p1, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->extraCallback:Lo/PopupMenu$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/PopupMenu$ICustomTabsCallback$Stub;->extraCallback:Lo/PopupMenu;

    sget v2, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {p1, v2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v2, "etCvv"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/PopupMenu$ICustomTabsCallback$Stub$3;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lo/inflate;->ICustomTabsCallback(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method

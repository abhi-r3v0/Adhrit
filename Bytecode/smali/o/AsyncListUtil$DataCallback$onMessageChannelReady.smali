.class public final Lo/AsyncListUtil$DataCallback$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncListUtil$DataCallback;->setup(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/onDisconnectSetValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/CustomPaymentsView$setup$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/AsyncListUtil$DataCallback;

.field private synthetic onMessageChannelReady:Lo/onDisconnectSetValue;


# direct methods
.method constructor <init>(Lo/AsyncListUtil$DataCallback;Lo/onDisconnectSetValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue;",
            ")V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->extraCallback:Lo/AsyncListUtil$DataCallback;

    iput-object p2, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectSetValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 113
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->extraCallback:Lo/AsyncListUtil$DataCallback;

    .line 3043
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p1, v0}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "payAmount"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "$this$toPlainNumbers"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ","

    .line 4075
    invoke-static {p1, v3, v2, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5075
    invoke-static {p1, v3, v2, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->extraCallback:Lo/AsyncListUtil$DataCallback;

    invoke-static {p1, v0, v1}, Lo/AsyncListUtil$DataCallback;->ICustomTabsCallback(Lo/AsyncListUtil$DataCallback;D)V

    .line 114
    :cond_0
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectSetValue;

    const-string v0, "custom_pay_user_interacted"

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-nez p1, :cond_0

    .line 103
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p4, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$this$toPlainNumbers"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, ","

    const-string v1, ""

    .line 2075
    invoke-static {p1, p2, v1, p3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 104
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->extraCallback:Lo/AsyncListUtil$DataCallback;

    sget-object p2, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-static {p1, p2, v0, p4, v0}, Lo/AsyncListUtil$DataCallback;->setCtaState$default(Lo/AsyncListUtil$DataCallback;Lo/findLastCompletelyVisibleItemPositions;Lo/getServerTime;ILjava/lang/Object;)V

    goto :goto_1

    .line 106
    :cond_2
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->extraCallback:Lo/AsyncListUtil$DataCallback;

    sget-object p2, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-static {p1, p2, v0, p4, v0}, Lo/AsyncListUtil$DataCallback;->setCtaState$default(Lo/AsyncListUtil$DataCallback;Lo/findLastCompletelyVisibleItemPositions;Lo/getServerTime;ILjava/lang/Object;)V

    .line 109
    :goto_1
    iget-object p1, p0, Lo/AsyncListUtil$DataCallback$onMessageChannelReady;->extraCallback:Lo/AsyncListUtil$DataCallback;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->error:I

    invoke-virtual {p1, p2}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "error"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

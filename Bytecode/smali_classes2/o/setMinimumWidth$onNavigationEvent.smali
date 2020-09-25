.class public final Lo/setMinimumWidth$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setMinimumWidth;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
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
        "com/dreamplug/androidapp/ui/widget/PanCardBottomSheet$onCreateDialog$2",
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
.field private synthetic onMessageChannelReady:Lo/setMinimumWidth;


# direct methods
.method constructor <init>(Lo/setMinimumWidth;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lo/setMinimumWidth$onNavigationEvent;->onMessageChannelReady:Lo/setMinimumWidth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 64
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "submitButton"

    const/16 v3, 0x8

    const-string v4, "error"

    if-nez v0, :cond_5

    sget-object v0, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "pan"

    invoke-static {v5, v0}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 72
    :cond_2
    iget-object p1, p0, Lo/setMinimumWidth$onNavigationEvent;->onMessageChannelReady:Lo/setMinimumWidth;

    .line 3032
    iget-object p1, p1, Lo/setMinimumWidth;->extraCallback:Landroid/widget/TextView;

    if-nez p1, :cond_3

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 72
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lo/setMinimumWidth$onNavigationEvent;->onMessageChannelReady:Lo/setMinimumWidth;

    .line 3033
    iget-object p1, p1, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    if-nez p1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 73
    :cond_4
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 65
    :cond_5
    :goto_2
    sget-object v0, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phone"

    invoke-static {v0, p1}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 66
    iget-object p1, p0, Lo/setMinimumWidth$onNavigationEvent;->onMessageChannelReady:Lo/setMinimumWidth;

    .line 1032
    iget-object p1, p1, Lo/setMinimumWidth;->extraCallback:Landroid/widget/TextView;

    if-nez p1, :cond_6

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 66
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 68
    :cond_7
    iget-object p1, p0, Lo/setMinimumWidth$onNavigationEvent;->onMessageChannelReady:Lo/setMinimumWidth;

    .line 2032
    iget-object p1, p1, Lo/setMinimumWidth;->extraCallback:Landroid/widget/TextView;

    if-nez p1, :cond_8

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 68
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_3
    iget-object p1, p0, Lo/setMinimumWidth$onNavigationEvent;->onMessageChannelReady:Lo/setMinimumWidth;

    .line 2033
    iget-object p1, p1, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    if-nez p1, :cond_9

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 70
    :cond_9
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.class public final Lo/saveOriginalDelegate$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/saveOriginalDelegate;-><init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;Lo/getServerTime;)V
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/dreamplug/upi/SetMPinDialog$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "p0",
        "",
        "p1",
        "",
        "p2",
        "p3",
        "onTextChanged",
        "start",
        "removed",
        "added",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/saveOriginalDelegate;

.field private synthetic onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/saveOriginalDelegate;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toDebugString$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lo/saveOriginalDelegate$2;->onMessageChannelReady:Lo/saveOriginalDelegate;

    iput-object p2, p0, Lo/saveOriginalDelegate$2;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string v0, "editable"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lo/saveOriginalDelegate$2;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

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
    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    const-string/jumbo v3, "upi_setup_mpin_first_key_entered"

    .line 73
    invoke-static {v3, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lo/saveOriginalDelegate$2;->onNavigationEvent:Lo/toDebugString$ICustomTabsCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 76
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 77
    iget-object p1, p0, Lo/saveOriginalDelegate$2;->onMessageChannelReady:Lo/saveOriginalDelegate;

    .line 1021
    iget-object p1, p1, Lo/saveOriginalDelegate;->onPostMessage:Landroid/widget/EditText;

    if-nez p1, :cond_4

    const-string v0, "monthYear"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 77
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 79
    :cond_5
    iget-object p1, p0, Lo/saveOriginalDelegate$2;->onMessageChannelReady:Lo/saveOriginalDelegate;

    .line 2021
    invoke-virtual {p1}, Lo/saveOriginalDelegate;->onMessageChannelReady()V

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

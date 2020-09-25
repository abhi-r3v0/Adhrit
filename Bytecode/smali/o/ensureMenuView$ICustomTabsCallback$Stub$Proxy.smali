.class final Lo/ensureMenuView$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureMenuView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getContentInsetStart$onPostMessage;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/login/LoginViewModel$LoginVisibilityItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 35
    check-cast p1, Lo/getContentInsetStart$onPostMessage;

    .line 1120
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/ensureMenuView;

    invoke-static {v0}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 1457
    iget-object v1, v0, Lo/getContentInsetEnd;->onNavigationEvent:Landroid/view/View;

    .line 1758
    iget v2, p1, Lo/getContentInsetStart$onPostMessage;->onNavigationEvent:I

    .line 1457
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-object v1, v0, Lo/getContentInsetEnd;->onPostMessage:Landroid/view/View;

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f130263

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x4

    if-eqz v2, :cond_1

    .line 2758
    iget v2, p1, Lo/getContentInsetStart$onPostMessage;->extraCallback:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 1458
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    iget-object v0, v0, Lo/getContentInsetEnd;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "resendText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3758
    iget v1, p1, Lo/getContentInsetStart$onPostMessage;->onNavigationEvent:I

    if-eqz v1, :cond_3

    .line 4758
    iget p1, p1, Lo/getContentInsetStart$onPostMessage;->extraCallback:I

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    .line 1459
    :cond_3
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

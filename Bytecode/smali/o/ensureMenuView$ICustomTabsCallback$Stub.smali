.class final Lo/ensureMenuView$ICustomTabsCallback$Stub;
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub;->extraCallback:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 35
    check-cast p1, Ljava/lang/Boolean;

    .line 1076
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub;->extraCallback:Lo/ensureMenuView;

    .line 2037
    iget-object v0, v0, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez v0, :cond_0

    const-string/jumbo v1, "viewModel"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2069
    :cond_0
    iget-object v0, v0, Lo/getContentInsetStart;->onNavigationEvent:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 1076
    :goto_0
    check-cast v0, Lcom/dreamplug/androidapp/login/LoginUiModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/login/LoginUiModel;->getState()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "email"

    invoke-static {v2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "it"

    .line 1077
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1078
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub;->extraCallback:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/getContentInsetEnd;->extraCallback(Z)V

    return-void

    .line 1080
    :cond_3
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub;->extraCallback:Lo/ensureMenuView;

    invoke-static {v0}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lo/getContentInsetEnd;->extraCallback(Z)V

    .line 1081
    iget-object v0, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub;->extraCallback:Lo/ensureMenuView;

    invoke-static {v0}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3039
    iput-boolean p1, v0, Lo/ensureMenu;->onPostMessage:Z

    .line 1082
    :cond_4
    iget-object p1, p0, Lo/ensureMenuView$ICustomTabsCallback$Stub;->extraCallback:Lo/ensureMenuView;

    invoke-static {p1}, Lo/ensureMenuView;->extraCallback(Lo/ensureMenuView;)Lo/ensureMenu;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f13042e

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1, v0, v1}, Lo/ensureMenu;->onNavigationEvent(ZZLjava/lang/CharSequence;I)V

    :cond_5
    return-void
.end method

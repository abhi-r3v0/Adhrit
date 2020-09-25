.class final Lo/ensureMenuView$warmup;
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
        "Lo/ensureContentInsets;",
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
        "viewModelAction",
        "Lcom/dreamplug/androidapp/ui/ViewModelAction;",
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
.field private synthetic onNavigationEvent:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$warmup;->onNavigationEvent:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 35
    check-cast p1, Lo/ensureContentInsets;

    if-eqz p1, :cond_6

    .line 1126
    instance-of v0, p1, Lo/ensureContentInsets$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1127
    check-cast p1, Lo/ensureContentInsets$ICustomTabsCallback;

    iget-object v0, p0, Lo/ensureMenuView$warmup;->onNavigationEvent:Lo/ensureMenuView;

    check-cast v0, Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2026
    iget-object v2, p1, Lo/ensureContentInsets$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    iget p1, p1, Lo/ensureContentInsets$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-static {v0, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1128
    :cond_0
    instance-of v0, p1, Lo/ensureContentInsets$onPostMessage;

    if-eqz v0, :cond_1

    .line 1129
    check-cast p1, Lo/ensureContentInsets$onPostMessage;

    iget-object v0, p0, Lo/ensureMenuView$warmup;->onNavigationEvent:Lo/ensureMenuView;

    check-cast v0, Lo/asBinder;

    .line 2043
    invoke-virtual {p1, v0, v1, v1}, Lo/ensureContentInsets$onPostMessage;->onNavigationEvent(Lo/asBinder;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1130
    :cond_1
    instance-of v0, p1, Lo/ensureContentInsets$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 1131
    iget-object p1, p0, Lo/ensureMenuView$warmup;->onNavigationEvent:Lo/ensureMenuView;

    check-cast p1, Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3032
    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    goto :goto_0

    .line 1132
    :cond_2
    instance-of v0, p1, Lo/ensureContentInsets$extraCallback;

    if-eqz v0, :cond_4

    .line 1133
    check-cast p1, Lo/ensureContentInsets$extraCallback;

    iget-object v0, p0, Lo/ensureMenuView$warmup;->onNavigationEvent:Lo/ensureMenuView;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0}, Lo/ensureMenuView;->onNavigationEvent(Lo/ensureMenuView;)Lo/setCardBackgroundColor;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {p1, v2, v0}, Lo/ensureContentInsets$extraCallback;->onPostMessage(Landroid/app/Activity;Lo/setCardBackgroundColor;)V

    .line 1134
    iget-object v0, p0, Lo/ensureMenuView$warmup;->onNavigationEvent:Lo/ensureMenuView;

    invoke-static {v0, p1}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;Lo/ensureContentInsets$extraCallback;)V

    .line 1137
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/ensureMenuView$warmup;->onNavigationEvent:Lo/ensureMenuView;

    .line 3037
    iget-object p1, p1, Lo/ensureMenuView;->onMessageChannelReady:Lo/getContentInsetStart;

    if-nez p1, :cond_5

    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3077
    :cond_5
    iget-object p1, p1, Lo/getContentInsetStart;->asBinder:Lo/setActive;

    .line 1137
    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

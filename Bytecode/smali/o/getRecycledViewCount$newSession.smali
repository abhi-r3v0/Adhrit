.class final Lo/getRecycledViewCount$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getRecycledViewCount;-><init>()V
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
        "Lo/runningAverage;",
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
        "Lcom/dreamplug/fabrik/ui/whatsapp/OTPEventData;",
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
.field private synthetic onNavigationEvent:Lo/getRecycledViewCount;


# direct methods
.method constructor <init>(Lo/getRecycledViewCount;)V
    .locals 0

    iput-object p1, p0, Lo/getRecycledViewCount$newSession;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 42
    check-cast p1, Lo/runningAverage;

    .line 2003
    iget-boolean v0, p1, Lo/runningAverage;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 1188
    iget-object p1, p0, Lo/getRecycledViewCount$newSession;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lo/getRecycledViewCount$newSession;->onNavigationEvent:Lo/getRecycledViewCount;

    const v1, 0x7f130347

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lo/getRecycledViewCount$newSession;->onNavigationEvent:Lo/getRecycledViewCount;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->errorView:I

    invoke-virtual {v0, v1}, Lo/getRecycledViewCount;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setLayoutStateDirection;

    .line 3003
    iget-object p1, p1, Lo/runningAverage;->ICustomTabsCallback:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 1190
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    return-void
.end method

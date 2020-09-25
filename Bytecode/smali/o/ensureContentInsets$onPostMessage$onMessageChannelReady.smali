.class final Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureContentInsets$onPostMessage;->onNavigationEvent(Lo/asBinder;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroidx/fragment/app/Fragment;

.field private synthetic extraCallback:Lo/asBinder;

.field private synthetic onMessageChannelReady:Ljava/lang/Integer;

.field private synthetic onNavigationEvent:Landroid/content/Intent;

.field private synthetic onPostMessage:Lo/ensureContentInsets$onPostMessage;


# direct methods
.method constructor <init>(Lo/ensureContentInsets$onPostMessage;Lo/asBinder;Ljava/lang/Integer;Landroid/content/Intent;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/ensureContentInsets$onPostMessage;

    iput-object p2, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->extraCallback:Lo/asBinder;

    iput-object p3, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Integer;

    iput-object p4, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onNavigationEvent:Landroid/content/Intent;

    iput-object p5, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->extraCallback:Lo/asBinder;

    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onNavigationEvent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v2, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onNavigationEvent:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    .line 71
    iget-object v1, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onNavigationEvent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onNavigationEvent:Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    :cond_3
    :goto_0
    iget-object v0, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->extraCallback:Lo/asBinder;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 78
    :cond_4
    iget-object v0, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/ensureContentInsets$onPostMessage;

    .line 1038
    iget-object v0, v0, Lo/ensureContentInsets$onPostMessage;->onNavigationEvent:Ljava/lang/Class;

    .line 78
    const-class v1, Lo/notifyDataSetChanged;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/ensureContentInsets$onPostMessage$onMessageChannelReady;->extraCallback:Lo/asBinder;

    if-eqz v0, :cond_5

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

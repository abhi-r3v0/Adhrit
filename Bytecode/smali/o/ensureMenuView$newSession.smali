.class final Lo/ensureMenuView$newSession;
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
        "Lo/setContentInsetsRelative;",
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
        "Lcom/dreamplug/androidapp/login/LoginCta;",
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
.field private synthetic extraCallback:Lo/ensureMenuView;


# direct methods
.method constructor <init>(Lo/ensureMenuView;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$newSession;->extraCallback:Lo/ensureMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 35
    check-cast p1, Lo/setContentInsetsRelative;

    .line 1116
    iget-object v0, p0, Lo/ensureMenuView$newSession;->extraCallback:Lo/ensureMenuView;

    invoke-static {v0}, Lo/ensureMenuView;->onMessageChannelReady(Lo/ensureMenuView;)Lo/getContentInsetEnd;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 1378
    iget-object v1, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    .line 2020
    iget-object v2, p1, Lo/setContentInsetsRelative;->extraCallback:Ljava/lang/Runnable;

    .line 1378
    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 3019
    iget-object v1, p1, Lo/setContentInsetsRelative;->onMessageChannelReady:Ljava/lang/String;

    .line 1380
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "disable"

    .line 1383
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    sget-object v2, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "done"

    .line 1384
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    sget-object v2, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "submit"

    .line 1381
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    sget-object v2, Lo/getMaxStart;->onMessageChannelReady:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "progress"

    .line 1382
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    sget-object v2, Lo/getMaxStart;->onPostMessage:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1387
    :cond_0
    :goto_0
    iget-object v0, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    .line 4017
    iget-object v1, p1, Lo/setContentInsetsRelative;->onPostMessage:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4018
    iget-object v1, p1, Lo/setContentInsetsRelative;->onNavigationEvent:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1389
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    .line 5018
    iget-object p1, p1, Lo/setContentInsetsRelative;->onNavigationEvent:Ljava/lang/Integer;

    .line 1389
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1388
    :cond_2
    :goto_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/getMaxEnd;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_3
        -0x3523bfe8 -> :sswitch_2
        0x2f2382 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch
.end method

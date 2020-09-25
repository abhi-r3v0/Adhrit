.class final Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setState$3$1$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent$5;->extraCallback:Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 218
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent$5;->extraCallback:Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->ICustomTabsCallback(Lo/offsetPositionRecordsForRemove;)V

    .line 219
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent$5;->extraCallback:Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand$onNavigationEvent;->ICustomTabsCallback:Lo/offsetPositionRecordsForRemove$extraCommand;

    iget-object v0, v0, Lo/offsetPositionRecordsForRemove$extraCommand;->extraCallback:Lo/offsetPositionRecordsForRemove;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->tokenMachine:I

    invoke-virtual {v0, v1}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/findContainingViewHolder;

    .line 1173
    iget-object v1, v0, Lo/findContainingViewHolder;->extraCallback:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1174
    iget-object v2, v0, Lo/findContainingViewHolder;->onMessageChannelReady:Landroid/media/SoundPool;

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

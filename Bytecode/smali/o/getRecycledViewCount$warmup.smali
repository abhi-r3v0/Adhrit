.class final Lo/getRecycledViewCount$warmup;
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
.field final synthetic onNavigationEvent:Lo/getRecycledViewCount;


# direct methods
.method constructor <init>(Lo/getRecycledViewCount;)V
    .locals 0

    iput-object p1, p0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 42
    check-cast p1, Lo/runningAverage;

    .line 2003
    iget-boolean v0, p1, Lo/runningAverage;->onMessageChannelReady:Z

    const-string v1, "pairs"

    const-string/jumbo v2, "result"

    const/4 v3, 0x0

    const-string/jumbo v4, "sec_phone_submit_result"

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 1196
    iget-object p1, p0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p1, v0}, Lo/getRecycledViewCount;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1197
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v6, "lifecycle"

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x12c

    new-instance v8, Lo/getRecycledViewCount$warmup$4;

    invoke-direct {v8, p0}, Lo/getRecycledViewCount$warmup$4;-><init>(Lo/getRecycledViewCount$warmup;)V

    check-cast v8, Lo/getServerTime;

    invoke-static {p1, v0, v6, v7, v8}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    new-array p1, v5, [Lo/addWrite;

    .line 1201
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v2, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v3

    .line 1201
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1201
    invoke-static {v4, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->otpText:I

    invoke-virtual {v0, v6}, Lo/getRecycledViewCount;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v6, ""

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object v0, p0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {v0, v6}, Lo/getRecycledViewCount;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/recycleFromEnd;

    sget-object v6, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v6}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1205
    iget-object v0, p0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->errorView:I

    invoke-virtual {v0, v6}, Lo/getRecycledViewCount;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setLayoutStateDirection;

    .line 3003
    iget-object v6, p1, Lo/runningAverage;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 1205
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-static {v0, v6, v5}, Lo/setLayoutStateDirection;->extraCallback(Lo/setLayoutStateDirection;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    new-array v6, v0, [Lo/addWrite;

    .line 1206
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3043
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v2, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v3

    .line 4003
    iget-object p1, p1, Lo/runningAverage;->ICustomTabsCallback:Ljava/lang/String;

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string v3, "error_details"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v5

    .line 1206
    invoke-static {v6, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1206
    invoke-static {v4, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

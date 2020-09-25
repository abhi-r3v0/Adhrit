.class final Lo/findViewHolderForAdapterPosition$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findViewHolderForAdapterPosition;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/widget/SlotMachineView$getReelView$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/util/List;

.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Lo/findViewHolderForAdapterPosition;

.field private synthetic onPostMessage:Lo/findViewHolderForLayoutPosition;


# direct methods
.method constructor <init>(Lo/findViewHolderForLayoutPosition;Lo/findViewHolderForAdapterPosition;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->onPostMessage:Lo/findViewHolderForLayoutPosition;

    iput-object p2, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->onMessageChannelReady:Lo/findViewHolderForAdapterPosition;

    iput-object p3, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    iput p4, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 172
    iget-object v0, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->onMessageChannelReady:Lo/findViewHolderForAdapterPosition;

    .line 1000
    iget-object v1, v1, Lo/findViewHolderForAdapterPosition;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int v0, v0, v1

    .line 173
    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->onPostMessage:Lo/findViewHolderForLayoutPosition;

    iget-object v2, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->onMessageChannelReady:Lo/findViewHolderForAdapterPosition;

    invoke-static {v2}, Lo/findViewHolderForAdapterPosition;->ICustomTabsCallback(Lo/findViewHolderForAdapterPosition;)I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollBy(II)V

    .line 176
    iget v0, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->extraCallback:I

    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->onMessageChannelReady:Lo/findViewHolderForAdapterPosition;

    invoke-static {v1}, Lo/findViewHolderForAdapterPosition;->onMessageChannelReady(Lo/findViewHolderForAdapterPosition;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lo/findViewHolderForAdapterPosition$onNavigationEvent;->onMessageChannelReady:Lo/findViewHolderForAdapterPosition;

    invoke-static {v0}, Lo/findViewHolderForAdapterPosition;->onRelationshipValidationResult(Lo/findViewHolderForAdapterPosition;)V

    :cond_0
    return-void
.end method

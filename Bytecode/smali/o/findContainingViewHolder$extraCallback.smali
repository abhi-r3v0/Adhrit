.class final Lo/findContainingViewHolder$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findContainingViewHolder;->onPostMessage(Ljava/lang/String;ZLo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberView$spinAndStopAt$2$1$1",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberView$$special$$inlined$with$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/findContainingViewHolder;

.field private synthetic onPostMessage:Lo/getChildViewHolder;


# direct methods
.method constructor <init>(Lo/getChildViewHolder;Lo/findContainingViewHolder;)V
    .locals 0

    iput-object p1, p0, Lo/findContainingViewHolder$extraCallback;->onPostMessage:Lo/getChildViewHolder;

    iput-object p2, p0, Lo/findContainingViewHolder$extraCallback;->onMessageChannelReady:Lo/findContainingViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 8

    .line 1155
    iget-object v0, p0, Lo/findContainingViewHolder$extraCallback;->onMessageChannelReady:Lo/findContainingViewHolder;

    invoke-static {v0}, Lo/findContainingViewHolder;->ICustomTabsCallback(Lo/findContainingViewHolder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1156
    iget-object v0, p0, Lo/findContainingViewHolder$extraCallback;->onPostMessage:Lo/getChildViewHolder;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0xa

    invoke-static {v0, v3, v4}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 1157
    iget-object v0, p0, Lo/findContainingViewHolder$extraCallback;->onMessageChannelReady:Lo/findContainingViewHolder;

    invoke-static {v0}, Lo/findContainingViewHolder;->onMessageChannelReady(Lo/findContainingViewHolder;)Landroid/media/SoundPool;

    move-result-object v1

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 18
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method

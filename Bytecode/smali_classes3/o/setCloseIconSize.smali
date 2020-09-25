.class public final Lo/setCloseIconSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:J

.field private final synthetic onPostMessage:Lo/setChipIconSize;


# direct methods
.method public constructor <init>(Lo/setChipIconSize;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCloseIconSize;->onPostMessage:Lo/setChipIconSize;

    iput-wide p2, p0, Lo/setCloseIconSize;->onMessageChannelReady:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/setCloseIconSize;->onPostMessage:Lo/setChipIconSize;

    iget-wide v1, p0, Lo/setCloseIconSize;->onMessageChannelReady:J

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lo/setChipIconSize;->onNavigationEvent(JZ)V

    .line 4
    iget-object v0, p0, Lo/setCloseIconSize;->onPostMessage:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lo/setChipSpacingResource;->extraCallback(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

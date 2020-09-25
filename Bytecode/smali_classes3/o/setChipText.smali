.class final Lo/setChipText;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCheckedIconResource;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:J


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipText;->ICustomTabsCallback:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setChipText;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/setChipText;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/setChipText;->onMessageChannelReady:Ljava/lang/String;

    iput-wide p5, p0, Lo/setChipText;->onPostMessage:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lo/setChipText;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lo/setChipText;->ICustomTabsCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lo/setHint;->IPostMessageService()Lo/setCheckedIcon;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub()Lo/setChipEndPadding;

    move-result-object v0

    iget-object v1, p0, Lo/setChipText;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lo/setChipEndPadding;->onPostMessage(Ljava/lang/String;Lo/setCloseIconEndPadding;)V

    return-void

    .line 8
    :cond_0
    new-instance v1, Lo/setCloseIconEndPadding;

    iget-object v2, p0, Lo/setChipText;->onMessageChannelReady:Ljava/lang/String;

    iget-wide v3, p0, Lo/setChipText;->onPostMessage:J

    invoke-direct {v1, v2, v0, v3, v4}, Lo/setCloseIconEndPadding;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9
    iget-object v0, p0, Lo/setChipText;->ICustomTabsCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lo/setHint;->IPostMessageService()Lo/setCheckedIcon;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub()Lo/setChipEndPadding;

    move-result-object v0

    iget-object v2, p0, Lo/setChipText;->extraCallback:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2, v1}, Lo/setChipEndPadding;->onPostMessage(Ljava/lang/String;Lo/setCloseIconEndPadding;)V

    return-void
.end method

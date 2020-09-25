.class final Lo/setChipSpacing;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCloseIconEndPadding;

.field private final synthetic onMessageChannelReady:Lo/setChipEndPadding;

.field private final synthetic onPostMessage:J


# direct methods
.method constructor <init>(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipSpacing;->onMessageChannelReady:Lo/setChipEndPadding;

    iput-object p2, p0, Lo/setChipSpacing;->ICustomTabsCallback:Lo/setCloseIconEndPadding;

    iput-wide p3, p0, Lo/setChipSpacing;->onPostMessage:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lo/setChipSpacing;->onMessageChannelReady:Lo/setChipEndPadding;

    iget-object v1, p0, Lo/setChipSpacing;->ICustomTabsCallback:Lo/setCloseIconEndPadding;

    iget-wide v2, p0, Lo/setChipSpacing;->onPostMessage:J

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lo/setChipEndPadding;->onPostMessage(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;ZJ)V

    .line 3
    iget-object v0, p0, Lo/setChipSpacing;->onMessageChannelReady:Lo/setChipEndPadding;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/setChipEndPadding;->onNavigationEvent:Lo/setCloseIconEndPadding;

    .line 4
    iget-object v0, p0, Lo/setChipSpacing;->onMessageChannelReady:Lo/setChipEndPadding;

    invoke-virtual {v0}, Lo/pathToString;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/setChipSpacingResource;->extraCallback(Lo/setCloseIconEndPadding;)V

    return-void
.end method

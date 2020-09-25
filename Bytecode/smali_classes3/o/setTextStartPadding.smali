.class final Lo/setTextStartPadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Z

.field private final synthetic extraCallback:J

.field private final synthetic onMessageChannelReady:I

.field private final synthetic onNavigationEvent:J

.field private final synthetic onPostMessage:Lo/zzq;

.field private final synthetic onRelationshipValidationResult:Lo/setChipIconSize;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Lo/zzq;JIJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setTextStartPadding;->onRelationshipValidationResult:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setTextStartPadding;->onPostMessage:Lo/zzq;

    iput-wide p3, p0, Lo/setTextStartPadding;->extraCallback:J

    iput p5, p0, Lo/setTextStartPadding;->onMessageChannelReady:I

    iput-wide p6, p0, Lo/setTextStartPadding;->onNavigationEvent:J

    iput-boolean p8, p0, Lo/setTextStartPadding;->ICustomTabsCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 2
    iget-object v0, p0, Lo/setTextStartPadding;->onRelationshipValidationResult:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setTextStartPadding;->onPostMessage:Lo/zzq;

    invoke-virtual {v0, v1}, Lo/setChipIconSize;->onNavigationEvent(Lo/zzq;)V

    .line 3
    iget-object v0, p0, Lo/setTextStartPadding;->onRelationshipValidationResult:Lo/setChipIconSize;

    iget-wide v1, p0, Lo/setTextStartPadding;->extraCallback:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lo/setChipIconSize;->onNavigationEvent(JZ)V

    .line 4
    iget-object v4, p0, Lo/setTextStartPadding;->onRelationshipValidationResult:Lo/setChipIconSize;

    iget-object v5, p0, Lo/setTextStartPadding;->onPostMessage:Lo/zzq;

    iget v6, p0, Lo/setTextStartPadding;->onMessageChannelReady:I

    iget-wide v7, p0, Lo/setTextStartPadding;->onNavigationEvent:J

    iget-boolean v10, p0, Lo/setTextStartPadding;->ICustomTabsCallback:Z

    const/4 v9, 0x1

    invoke-static/range {v4 .. v10}, Lo/setChipIconSize;->onNavigationEvent(Lo/setChipIconSize;Lo/zzq;IJZZ)V

    return-void
.end method

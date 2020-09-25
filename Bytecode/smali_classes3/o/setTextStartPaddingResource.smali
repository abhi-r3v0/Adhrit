.class final Lo/setTextStartPaddingResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setChipIconSize;

.field private final synthetic extraCallback:Lo/zzq;

.field private final synthetic onMessageChannelReady:J

.field private final synthetic onNavigationEvent:I

.field private final synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/setChipIconSize;Lo/zzq;IJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setTextStartPaddingResource;->ICustomTabsCallback:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setTextStartPaddingResource;->extraCallback:Lo/zzq;

    iput p3, p0, Lo/setTextStartPaddingResource;->onNavigationEvent:I

    iput-wide p4, p0, Lo/setTextStartPaddingResource;->onMessageChannelReady:J

    iput-boolean p6, p0, Lo/setTextStartPaddingResource;->onPostMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 2
    iget-object v0, p0, Lo/setTextStartPaddingResource;->ICustomTabsCallback:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setTextStartPaddingResource;->extraCallback:Lo/zzq;

    invoke-virtual {v0, v1}, Lo/setChipIconSize;->onNavigationEvent(Lo/zzq;)V

    .line 3
    iget-object v2, p0, Lo/setTextStartPaddingResource;->ICustomTabsCallback:Lo/setChipIconSize;

    iget-object v3, p0, Lo/setTextStartPaddingResource;->extraCallback:Lo/zzq;

    iget v4, p0, Lo/setTextStartPaddingResource;->onNavigationEvent:I

    iget-wide v5, p0, Lo/setTextStartPaddingResource;->onMessageChannelReady:J

    iget-boolean v8, p0, Lo/setTextStartPaddingResource;->onPostMessage:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lo/setChipIconSize;->onNavigationEvent(Lo/setChipIconSize;Lo/zzq;IJZZ)V

    return-void
.end method

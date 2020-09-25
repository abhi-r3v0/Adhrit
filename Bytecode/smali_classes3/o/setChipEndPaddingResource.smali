.class final Lo/setChipEndPaddingResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCloseIconEndPadding;

.field private final synthetic extraCallback:Z

.field private final synthetic onMessageChannelReady:Lo/setChipEndPadding;

.field private final synthetic onNavigationEvent:Lo/setCloseIconEndPadding;

.field private final synthetic onPostMessage:J


# direct methods
.method constructor <init>(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipEndPaddingResource;->onMessageChannelReady:Lo/setChipEndPadding;

    iput-object p2, p0, Lo/setChipEndPaddingResource;->ICustomTabsCallback:Lo/setCloseIconEndPadding;

    iput-object p3, p0, Lo/setChipEndPaddingResource;->onNavigationEvent:Lo/setCloseIconEndPadding;

    iput-wide p4, p0, Lo/setChipEndPaddingResource;->onPostMessage:J

    iput-boolean p6, p0, Lo/setChipEndPaddingResource;->extraCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lo/setChipEndPaddingResource;->onMessageChannelReady:Lo/setChipEndPadding;

    iget-object v1, p0, Lo/setChipEndPaddingResource;->ICustomTabsCallback:Lo/setCloseIconEndPadding;

    iget-object v2, p0, Lo/setChipEndPaddingResource;->onNavigationEvent:Lo/setCloseIconEndPadding;

    iget-wide v3, p0, Lo/setChipEndPaddingResource;->onPostMessage:J

    iget-boolean v5, p0, Lo/setChipEndPaddingResource;->extraCallback:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lo/setChipEndPadding;->onPostMessage(Lo/setChipEndPadding;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;JZLandroid/os/Bundle;)V

    return-void
.end method

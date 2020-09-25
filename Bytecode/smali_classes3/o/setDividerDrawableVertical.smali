.class final Lo/setDividerDrawableVertical;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCloseIconEndPadding;

.field private final synthetic extraCallback:Lo/setChipEndPadding;

.field private final synthetic onMessageChannelReady:J

.field private final synthetic onNavigationEvent:Lo/setCloseIconEndPadding;

.field private final synthetic onPostMessage:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/setChipEndPadding;Landroid/os/Bundle;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setDividerDrawableVertical;->extraCallback:Lo/setChipEndPadding;

    iput-object p2, p0, Lo/setDividerDrawableVertical;->onPostMessage:Landroid/os/Bundle;

    iput-object p3, p0, Lo/setDividerDrawableVertical;->onNavigationEvent:Lo/setCloseIconEndPadding;

    iput-object p4, p0, Lo/setDividerDrawableVertical;->ICustomTabsCallback:Lo/setCloseIconEndPadding;

    iput-wide p5, p0, Lo/setDividerDrawableVertical;->onMessageChannelReady:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 2
    iget-object v0, p0, Lo/setDividerDrawableVertical;->extraCallback:Lo/setChipEndPadding;

    iget-object v1, p0, Lo/setDividerDrawableVertical;->onPostMessage:Landroid/os/Bundle;

    iget-object v2, p0, Lo/setDividerDrawableVertical;->onNavigationEvent:Lo/setCloseIconEndPadding;

    iget-object v3, p0, Lo/setDividerDrawableVertical;->ICustomTabsCallback:Lo/setCloseIconEndPadding;

    iget-wide v4, p0, Lo/setDividerDrawableVertical;->onMessageChannelReady:J

    invoke-static/range {v0 .. v5}, Lo/setChipEndPadding;->ICustomTabsCallback(Lo/setChipEndPadding;Landroid/os/Bundle;Lo/setCloseIconEndPadding;Lo/setCloseIconEndPadding;J)V

    return-void
.end method

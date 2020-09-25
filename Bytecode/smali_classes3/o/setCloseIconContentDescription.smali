.class public final Lo/setCloseIconContentDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:J

.field private final synthetic onNavigationEvent:Lo/setChipIconSize;


# direct methods
.method public constructor <init>(Lo/setChipIconSize;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCloseIconContentDescription;->onNavigationEvent:Lo/setChipIconSize;

    iput-wide p2, p0, Lo/setCloseIconContentDescription;->extraCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setCloseIconContentDescription;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->ICustomTabsService:Lo/setIconTint;

    iget-wide v1, p0, Lo/setCloseIconContentDescription;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 3
    iget-object v0, p0, Lo/setCloseIconContentDescription;->onNavigationEvent:Lo/setChipIconSize;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    iget-wide v1, p0, Lo/setCloseIconContentDescription;->extraCallback:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Minimum session duration set"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

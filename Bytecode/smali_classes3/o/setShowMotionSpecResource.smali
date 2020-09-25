.class public final Lo/setShowMotionSpecResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setChipIconSize;

.field private final synthetic onNavigationEvent:Lo/setChipIconTintResource;


# direct methods
.method public constructor <init>(Lo/setChipIconSize;Lo/setChipIconTintResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setShowMotionSpecResource;->onMessageChannelReady:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setShowMotionSpecResource;->onNavigationEvent:Lo/setChipIconTintResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setShowMotionSpecResource;->onMessageChannelReady:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setShowMotionSpecResource;->onNavigationEvent:Lo/setChipIconTintResource;

    invoke-virtual {v0, v1}, Lo/setChipIconSize;->extraCallback(Lo/setChipIconTintResource;)V

    return-void
.end method

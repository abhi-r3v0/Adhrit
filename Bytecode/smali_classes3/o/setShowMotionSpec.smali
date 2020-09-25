.class final Lo/setShowMotionSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Z

.field private final synthetic extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Ljava/lang/String;

.field private final synthetic onTransact:Lo/setChipIconSize;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setShowMotionSpec;->onTransact:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setShowMotionSpec;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lo/setShowMotionSpec;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lo/setShowMotionSpec;->onNavigationEvent:Ljava/lang/String;

    iput-object p5, p0, Lo/setShowMotionSpec;->onPostMessage:Ljava/lang/String;

    iput-boolean p6, p0, Lo/setShowMotionSpec;->ICustomTabsCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    iget-object v0, p0, Lo/setShowMotionSpec;->onTransact:Lo/setChipIconSize;

    iget-object v0, v0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 3
    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v1

    iget-object v2, p0, Lo/setShowMotionSpec;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lo/setShowMotionSpec;->onMessageChannelReady:Ljava/lang/String;

    iget-object v4, p0, Lo/setShowMotionSpec;->onNavigationEvent:Ljava/lang/String;

    iget-object v5, p0, Lo/setShowMotionSpec;->onPostMessage:Ljava/lang/String;

    iget-boolean v6, p0, Lo/setShowMotionSpec;->ICustomTabsCallback:Z

    .line 4
    invoke-virtual/range {v1 .. v6}, Lo/setChipSpacingResource;->onMessageChannelReady(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

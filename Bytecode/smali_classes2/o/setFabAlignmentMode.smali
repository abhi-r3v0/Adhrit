.class public final Lo/setFabAlignmentMode;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:I

.field private final synthetic onNavigationEvent:Lo/HideBottomViewOnScrollBehavior;

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/HideBottomViewOnScrollBehavior;IZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setFabAlignmentMode;->onNavigationEvent:Lo/HideBottomViewOnScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lo/setFabAlignmentMode;->extraCallback:I

    .line 3
    iput-boolean p3, p0, Lo/setFabAlignmentMode;->ICustomTabsCallback:Z

    .line 4
    iput-boolean p4, p0, Lo/setFabAlignmentMode;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 10
    iget-object v0, p0, Lo/setFabAlignmentMode;->onNavigationEvent:Lo/HideBottomViewOnScrollBehavior;

    iget v1, p0, Lo/setFabAlignmentMode;->extraCallback:I

    iget-boolean v2, p0, Lo/setFabAlignmentMode;->ICustomTabsCallback:Z

    iget-boolean v3, p0, Lo/setFabAlignmentMode;->onPostMessage:Z

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 12
    iget-object v0, p0, Lo/setFabAlignmentMode;->onNavigationEvent:Lo/HideBottomViewOnScrollBehavior;

    iget v1, p0, Lo/setFabAlignmentMode;->extraCallback:I

    iget-boolean v2, p0, Lo/setFabAlignmentMode;->ICustomTabsCallback:Z

    iget-boolean v3, p0, Lo/setFabAlignmentMode;->onPostMessage:Z

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 8

    .line 6
    iget-object v0, p0, Lo/setFabAlignmentMode;->onNavigationEvent:Lo/HideBottomViewOnScrollBehavior;

    iget v1, p0, Lo/setFabAlignmentMode;->extraCallback:I

    iget-boolean v2, p0, Lo/setFabAlignmentMode;->ICustomTabsCallback:Z

    iget-boolean v3, p0, Lo/setFabAlignmentMode;->onPostMessage:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 8
    iget-object v0, p0, Lo/setFabAlignmentMode;->onNavigationEvent:Lo/HideBottomViewOnScrollBehavior;

    iget v1, p0, Lo/setFabAlignmentMode;->extraCallback:I

    iget-boolean v2, p0, Lo/setFabAlignmentMode;->ICustomTabsCallback:Z

    iget-boolean v3, p0, Lo/setFabAlignmentMode;->onPostMessage:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

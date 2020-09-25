.class public final Lo/ensureViewSet$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureViewSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/LendingStashSummaryFragment$Companion;",
        "",
        "()V",
        "CHARGES",
        "",
        "SCHEDULE",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public extraCallback:I

.field public onMessageChannelReady:Z

.field public final onNavigationEvent:Landroid/view/View;

.field public onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1037
    iput-boolean v0, p0, Lo/ensureViewSet$onMessageChannelReady;->onMessageChannelReady:Z

    .line 1041
    iput-object p1, p0, Lo/ensureViewSet$onMessageChannelReady;->onNavigationEvent:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 4

    .line 1051
    iget-object v0, p0, Lo/ensureViewSet$onMessageChannelReady;->onNavigationEvent:Landroid/view/View;

    iget v1, p0, Lo/ensureViewSet$onMessageChannelReady;->ICustomTabsCallback:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lo/ensureViewSet$onMessageChannelReady;->extraCallback:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;I)V

    .line 1052
    iget-object v0, p0, Lo/ensureViewSet$onMessageChannelReady;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lo/ensureViewSet$onMessageChannelReady;->onPostMessage:I

    sub-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x0

    invoke-static {v0, v1}, Lo/unregisterCallbackListener;->asBinder(Landroid/view/View;I)V

    return-void
.end method

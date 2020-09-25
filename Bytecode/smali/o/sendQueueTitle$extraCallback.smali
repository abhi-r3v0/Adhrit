.class Lo/sendQueueTitle$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendQueueTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:I

.field private asInterface:Landroid/view/View;

.field extraCallback:I

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p1, p0, Lo/sendQueueTitle$extraCallback;->asInterface:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final extraCallback()V
    .locals 5

    .line 494
    iget-object v0, p0, Lo/sendQueueTitle$extraCallback;->asInterface:Landroid/view/View;

    iget v1, p0, Lo/sendQueueTitle$extraCallback;->onPostMessage:I

    iget v2, p0, Lo/sendQueueTitle$extraCallback;->onMessageChannelReady:I

    iget v3, p0, Lo/sendQueueTitle$extraCallback;->ICustomTabsCallback:I

    iget v4, p0, Lo/sendQueueTitle$extraCallback;->extraCallback:I

    invoke-static {v0, v1, v2, v3, v4}, Lo/equals;->extraCallback(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lo/sendQueueTitle$extraCallback;->onNavigationEvent:I

    .line 496
    iput v0, p0, Lo/sendQueueTitle$extraCallback;->ICustomTabsCallback$Stub:I

    return-void
.end method

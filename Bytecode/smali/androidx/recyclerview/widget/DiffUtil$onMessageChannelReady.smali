.class final Landroidx/recyclerview/widget/DiffUtil$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field extraCallback:I

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 486
    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$onMessageChannelReady;->onNavigationEvent:I

    .line 487
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$onMessageChannelReady;->onMessageChannelReady:I

    .line 488
    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$onMessageChannelReady;->extraCallback:I

    .line 489
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$onMessageChannelReady;->onPostMessage:I

    return-void
.end method

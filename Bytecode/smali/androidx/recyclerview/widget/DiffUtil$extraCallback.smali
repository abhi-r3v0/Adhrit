.class Landroidx/recyclerview/widget/DiffUtil$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field extraCallback:I

.field onMessageChannelReady:Z

.field onNavigationEvent:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$extraCallback;->onNavigationEvent:I

    .line 975
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$extraCallback;->extraCallback:I

    .line 976
    iput-boolean p3, p0, Landroidx/recyclerview/widget/DiffUtil$extraCallback;->onMessageChannelReady:Z

    return-void
.end method

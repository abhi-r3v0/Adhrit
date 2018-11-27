.class Landroid/support/v7/widget/GapWorker$Task;
.super Ljava/lang/Object;
.source "GapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field public distanceToItem:I

.field public immediate:Z

.field public position:I

.field public view:Landroid/support/v7/widget/RecyclerView;

.field public viewVelocity:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    .line 45
    iput v0, p0, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    .line 46
    iput v0, p0, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    .line 48
    iput v0, p0, Landroid/support/v7/widget/GapWorker$Task;->position:I

    return-void
.end method

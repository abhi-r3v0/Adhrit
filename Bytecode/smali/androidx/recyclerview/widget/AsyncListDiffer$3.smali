.class final Landroidx/recyclerview/widget/AsyncListDiffer$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/lang/Runnable;

.field final synthetic extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer;

.field final synthetic onMessageChannelReady:I

.field final synthetic onNavigationEvent:Ljava/util/List;

.field final synthetic onPostMessage:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    .line 289
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer;

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->onPostMessage:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->onNavigationEvent:Ljava/util/List;

    iput p4, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->onMessageChannelReady:I

    iput-object p5, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 292
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer$3$4;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListDiffer$3$4;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer$3;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 347
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;

    invoke-direct {v2, p0, v0}, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer$3;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

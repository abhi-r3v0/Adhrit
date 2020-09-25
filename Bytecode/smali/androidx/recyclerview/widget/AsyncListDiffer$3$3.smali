.class final Landroidx/recyclerview/widget/AsyncListDiffer$3$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/AsyncListDiffer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field final synthetic extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer$3;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListDiffer$3;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 0

    .line 347
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer$3;

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 350
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer$3;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer$3;

    iget v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$3;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer$3;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListDiffer$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer$3;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer$3;->onNavigationEvent:Ljava/util/List;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer$3$3;->extraCallback:Landroidx/recyclerview/widget/AsyncListDiffer$3;

    iget-object v3, v3, Landroidx/recyclerview/widget/AsyncListDiffer$3;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/AsyncListDiffer;->latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

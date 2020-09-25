.class final Lo/generateOverflowButtonLayoutParams$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/generateOverflowButtonLayoutParams;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/generateOverflowButtonLayoutParams;

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/generateOverflowButtonLayoutParams;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/generateOverflowButtonLayoutParams$3;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lo/generateOverflowButtonLayoutParams$3;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 23
    iget v0, p0, Lo/generateOverflowButtonLayoutParams$3;->onPostMessage:I

    iget-object v1, p0, Lo/generateOverflowButtonLayoutParams$3;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    .line 1008
    iget-object v1, v1, Lo/generateOverflowButtonLayoutParams;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 1028
    iget-object v0, p0, Lo/generateOverflowButtonLayoutParams$3;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    .line 2008
    iget-object v0, v0, Lo/generateOverflowButtonLayoutParams;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1028
    iget v1, p0, Lo/generateOverflowButtonLayoutParams$3;->onPostMessage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/generateOverflowButtonLayoutParams$3;->onPostMessage:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

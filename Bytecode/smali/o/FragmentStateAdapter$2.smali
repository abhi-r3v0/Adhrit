.class public final Lo/FragmentStateAdapter$2;
.super Lo/getRootAlpha;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getRootAlpha<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/common/references/SharedReference;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/getRootAlpha;-><init>(Lcom/facebook/common/references/SharedReference;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setPageMargin<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getRootAlpha;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lo/getRootAlpha;->onPostMessage()Lo/getRootAlpha;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Lo/getRootAlpha;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lo/getRootAlpha;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lo/FragmentStateAdapter$2;

    iget-object v1, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lo/getRootAlpha;->onPostMessage:Lo/getRootAlpha$onPostMessage;

    iget-object v3, p0, Lo/getRootAlpha;->extraCallback:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Lo/FragmentStateAdapter$2;-><init>(Lcom/facebook/common/references/SharedReference;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0

    .line 1162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

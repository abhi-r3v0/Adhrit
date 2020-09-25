.class public final Lo/emptyInstance$onPostMessage;
.super Lo/updateParents$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/emptyInstance;->ICustomTabsCallback(Lo/subtree;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "prepare",
        "",
        "affected",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/emptyInstance;


# direct methods
.method public constructor <init>(Lo/updateParents;Lo/emptyInstance;)V
    .locals 0

    iput-object p2, p0, Lo/emptyInstance$onPostMessage;->onPostMessage:Lo/emptyInstance;

    .line 87
    invoke-direct {p0, p1}, Lo/updateParents$ICustomTabsCallback;-><init>(Lo/updateParents;)V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 1659
    iget-object v0, p0, Lo/emptyInstance$onPostMessage;->onPostMessage:Lo/emptyInstance;

    invoke-virtual {v0}, Lo/emptyInstance;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lo/forEachAncestor;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

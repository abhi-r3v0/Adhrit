.class final Lo/persistNonFatalEvent$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistFatalEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/persistNonFatalEvent;->verifyCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistFatalEvent$onNavigationEvent<",
        "Ljava/util/Map<",
        "Lo/recursiveDelete;",
        "Lo/parse;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/persistNonFatalEvent;

.field final synthetic val$trackedQueries:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/persistNonFatalEvent;Ljava/util/List;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lo/persistNonFatalEvent$9;->this$0:Lo/persistNonFatalEvent;

    iput-object p2, p0, Lo/persistNonFatalEvent$9;->val$trackedQueries:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 341
    check-cast p2, Ljava/util/Map;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lo/persistNonFatalEvent$9;->onNodeValue(Lo/ExecutorUtils$2;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final onNodeValue(Lo/ExecutorUtils$2;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/Map<",
            "Lo/recursiveDelete;",
            "Lo/parse;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 345
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/parse;

    .line 346
    iget-object p3, p0, Lo/persistNonFatalEvent$9;->val$trackedQueries:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.class final Lo/ResponseParser$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistFatalEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ResponseParser;->foldKeptNodes(Ljava/lang/Object;Lo/persistFatalEvent$onNavigationEvent;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistFatalEvent$onNavigationEvent<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/ResponseParser;

.field final synthetic val$treeVisitor:Lo/persistFatalEvent$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/ResponseParser;Lo/persistFatalEvent$onNavigationEvent;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lo/ResponseParser$2;->this$0:Lo/ResponseParser;

    iput-object p2, p0, Lo/ResponseParser$2;->val$treeVisitor:Lo/persistFatalEvent$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/lang/Boolean;",
            "TT;)TT;"
        }
    .end annotation

    .line 117
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 118
    iget-object p2, p0, Lo/ResponseParser$2;->val$treeVisitor:Lo/persistFatalEvent$onNavigationEvent;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lo/persistFatalEvent$onNavigationEvent;->onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public final bridge synthetic onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lo/ResponseParser$2;->onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Boolean;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

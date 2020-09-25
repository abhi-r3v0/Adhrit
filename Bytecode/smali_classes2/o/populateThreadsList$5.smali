.class final Lo/populateThreadsList$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/persistFatalEvent$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateThreadsList;->pruneTreeRecursive(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/persistFatalEvent;Lo/ResponseParser;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/persistFatalEvent$onNavigationEvent<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/populateThreadsList;

.field final synthetic val$rowIdsToKeep:Lo/persistFatalEvent;


# direct methods
.method constructor <init>(Lo/populateThreadsList;Lo/persistFatalEvent;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lo/populateThreadsList$5;->this$0:Lo/populateThreadsList;

    iput-object p2, p0, Lo/populateThreadsList$5;->val$rowIdsToKeep:Lo/persistFatalEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 705
    iget-object p2, p0, Lo/populateThreadsList$5;->val$rowIdsToKeep:Lo/persistFatalEvent;

    invoke-virtual {p2, p1}, Lo/persistFatalEvent;->get(Lo/ExecutorUtils$2;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 701
    check-cast p2, Ljava/lang/Void;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lo/populateThreadsList$5;->onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Void;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

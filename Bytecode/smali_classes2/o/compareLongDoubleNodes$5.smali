.class final Lo/compareLongDoubleNodes$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/convertDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/compareLongDoubleNodes;->extraCallback(Lo/hasIndex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/hasIndex;

.field private synthetic onPostMessage:Lo/compareLongDoubleNodes;


# direct methods
.method constructor <init>(Lo/compareLongDoubleNodes;Lo/hasIndex;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lo/compareLongDoubleNodes$5;->onPostMessage:Lo/compareLongDoubleNodes;

    iput-object p2, p0, Lo/compareLongDoubleNodes$5;->onNavigationEvent:Lo/hasIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lo/convertInteger;Ljava/io/IOException;)V
    .locals 1

    .line 122
    :try_start_0
    iget-object p1, p0, Lo/compareLongDoubleNodes$5;->onNavigationEvent:Lo/hasIndex;

    iget-object v0, p0, Lo/compareLongDoubleNodes$5;->onPostMessage:Lo/compareLongDoubleNodes;

    invoke-interface {p1, v0, p2}, Lo/hasIndex;->ICustomTabsCallback(Lo/fromQueryDefinition;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onResponse(Lo/convertInteger;Lo/childAddedChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object p1, p0, Lo/compareLongDoubleNodes$5;->onPostMessage:Lo/compareLongDoubleNodes;

    invoke-virtual {p1, p2}, Lo/compareLongDoubleNodes;->ICustomTabsCallback(Lo/childAddedChange;)Lo/getMinNode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1138
    :try_start_1
    iget-object p2, p0, Lo/compareLongDoubleNodes$5;->onNavigationEvent:Lo/hasIndex;

    iget-object v0, p0, Lo/compareLongDoubleNodes$5;->onPostMessage:Lo/compareLongDoubleNodes;

    invoke-interface {p2, v0, p1}, Lo/hasIndex;->onNavigationEvent(Lo/fromQueryDefinition;Lo/getMinNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1140
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_1
    move-exception p1

    .line 1130
    :try_start_2
    iget-object p2, p0, Lo/compareLongDoubleNodes$5;->onNavigationEvent:Lo/hasIndex;

    iget-object v0, p0, Lo/compareLongDoubleNodes$5;->onPostMessage:Lo/compareLongDoubleNodes;

    invoke-interface {p2, v0, p1}, Lo/hasIndex;->ICustomTabsCallback(Lo/fromQueryDefinition;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 1132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

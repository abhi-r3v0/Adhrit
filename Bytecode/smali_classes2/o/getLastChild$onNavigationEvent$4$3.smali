.class final Lo/getLastChild$onNavigationEvent$4$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLastChild$onNavigationEvent$4;->onNavigationEvent(Lo/fromQueryDefinition;Lo/getMinNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getLastChild$onNavigationEvent$4;

.field private synthetic onPostMessage:Lo/getMinNode;


# direct methods
.method constructor <init>(Lo/getLastChild$onNavigationEvent$4;Lo/getMinNode;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lo/getLastChild$onNavigationEvent$4$3;->ICustomTabsCallback:Lo/getLastChild$onNavigationEvent$4;

    iput-object p2, p0, Lo/getLastChild$onNavigationEvent$4$3;->onPostMessage:Lo/getMinNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 66
    iget-object v0, p0, Lo/getLastChild$onNavigationEvent$4$3;->ICustomTabsCallback:Lo/getLastChild$onNavigationEvent$4;

    iget-object v0, v0, Lo/getLastChild$onNavigationEvent$4;->onMessageChannelReady:Lo/getLastChild$onNavigationEvent;

    iget-object v0, v0, Lo/getLastChild$onNavigationEvent;->onNavigationEvent:Lo/fromQueryDefinition;

    invoke-interface {v0}, Lo/fromQueryDefinition;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lo/getLastChild$onNavigationEvent$4$3;->ICustomTabsCallback:Lo/getLastChild$onNavigationEvent$4;

    iget-object v0, v0, Lo/getLastChild$onNavigationEvent$4;->extraCallback:Lo/hasIndex;

    iget-object v1, p0, Lo/getLastChild$onNavigationEvent$4$3;->ICustomTabsCallback:Lo/getLastChild$onNavigationEvent$4;

    iget-object v1, v1, Lo/getLastChild$onNavigationEvent$4;->onMessageChannelReady:Lo/getLastChild$onNavigationEvent;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lo/hasIndex;->ICustomTabsCallback(Lo/fromQueryDefinition;Ljava/lang/Throwable;)V

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lo/getLastChild$onNavigationEvent$4$3;->ICustomTabsCallback:Lo/getLastChild$onNavigationEvent$4;

    iget-object v0, v0, Lo/getLastChild$onNavigationEvent$4;->extraCallback:Lo/hasIndex;

    iget-object v1, p0, Lo/getLastChild$onNavigationEvent$4$3;->ICustomTabsCallback:Lo/getLastChild$onNavigationEvent$4;

    iget-object v1, v1, Lo/getLastChild$onNavigationEvent$4;->onMessageChannelReady:Lo/getLastChild$onNavigationEvent;

    iget-object v2, p0, Lo/getLastChild$onNavigationEvent$4$3;->onPostMessage:Lo/getMinNode;

    invoke-interface {v0, v1, v2}, Lo/hasIndex;->onNavigationEvent(Lo/fromQueryDefinition;Lo/getMinNode;)V

    return-void
.end method

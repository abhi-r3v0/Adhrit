.class final Lo/getLastChild$onNavigationEvent$4$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLastChild$onNavigationEvent$4;->ICustomTabsCallback(Lo/fromQueryDefinition;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/Throwable;

.field private synthetic onNavigationEvent:Lo/getLastChild$onNavigationEvent$4;


# direct methods
.method constructor <init>(Lo/getLastChild$onNavigationEvent$4;Ljava/lang/Throwable;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lo/getLastChild$onNavigationEvent$4$4;->onNavigationEvent:Lo/getLastChild$onNavigationEvent$4;

    iput-object p2, p0, Lo/getLastChild$onNavigationEvent$4$4;->ICustomTabsCallback:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lo/getLastChild$onNavigationEvent$4$4;->onNavigationEvent:Lo/getLastChild$onNavigationEvent$4;

    iget-object v0, v0, Lo/getLastChild$onNavigationEvent$4;->extraCallback:Lo/hasIndex;

    iget-object v1, p0, Lo/getLastChild$onNavigationEvent$4$4;->onNavigationEvent:Lo/getLastChild$onNavigationEvent$4;

    iget-object v1, v1, Lo/getLastChild$onNavigationEvent$4;->onMessageChannelReady:Lo/getLastChild$onNavigationEvent;

    iget-object v2, p0, Lo/getLastChild$onNavigationEvent$4$4;->ICustomTabsCallback:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lo/hasIndex;->ICustomTabsCallback(Lo/fromQueryDefinition;Ljava/lang/Throwable;)V

    return-void
.end method

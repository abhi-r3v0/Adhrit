.class final Lo/removeListen$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/removeListen;


# direct methods
.method private constructor <init>(Lo/removeListen;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lo/removeListen$onNavigationEvent;->ICustomTabsCallback:Lo/removeListen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/removeListen;B)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lo/removeListen$onNavigationEvent;-><init>(Lo/removeListen;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 80
    iget-object v0, p0, Lo/removeListen$onNavigationEvent;->ICustomTabsCallback:Lo/removeListen;

    .line 1029
    iget-object v0, v0, Lo/removeListen;->onNavigationEvent:Ljava/util/concurrent/Executor;

    .line 80
    new-instance v1, Lo/removeListen$onMessageChannelReady;

    iget-object v2, p0, Lo/removeListen$onNavigationEvent;->ICustomTabsCallback:Lo/removeListen;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lo/removeListen$onMessageChannelReady;-><init>(Lo/removeListen;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

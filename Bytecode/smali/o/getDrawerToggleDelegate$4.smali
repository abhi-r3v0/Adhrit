.class final Lo/getDrawerToggleDelegate$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDrawerToggleDelegate;->extraCallback(Lo/getDelegate;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getDelegate<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/dispatchKeyEvent;

.field private synthetic extraCallback:Lo/extraCallback$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Ljava/util/concurrent/Executor;

.field private synthetic onNavigationEvent:Lo/getDelegate;


# direct methods
.method constructor <init>(Lo/dispatchKeyEvent;Lo/getDelegate;Ljava/util/concurrent/Executor;Lo/extraCallback$onMessageChannelReady;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lo/getDrawerToggleDelegate$4;->ICustomTabsCallback:Lo/dispatchKeyEvent;

    iput-object p2, p0, Lo/getDrawerToggleDelegate$4;->onNavigationEvent:Lo/getDelegate;

    iput-object p3, p0, Lo/getDrawerToggleDelegate$4;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/getDrawerToggleDelegate$4;->extraCallback:Lo/extraCallback$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1654
    iget-object v0, p0, Lo/getDrawerToggleDelegate$4;->ICustomTabsCallback:Lo/dispatchKeyEvent;

    iget-object v1, p0, Lo/getDrawerToggleDelegate$4;->onNavigationEvent:Lo/getDelegate;

    iget-object v2, p0, Lo/getDrawerToggleDelegate$4;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lo/getDrawerToggleDelegate$4;->extraCallback:Lo/extraCallback$onMessageChannelReady;

    invoke-static {v0, v1, p1, v2, v3}, Lo/getDrawerToggleDelegate;->onMessageChannelReady(Lo/dispatchKeyEvent;Lo/getDelegate;Lo/getDrawerToggleDelegate;Ljava/util/concurrent/Executor;Lo/extraCallback$onMessageChannelReady;)V

    const/4 p1, 0x0

    return-object p1
.end method

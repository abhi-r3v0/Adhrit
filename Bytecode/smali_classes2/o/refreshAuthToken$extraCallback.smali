.class public final Lo/refreshAuthToken$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/refreshAuthToken$onPostMessage;
.implements Lo/moveRedRight$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/refreshAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field private extraCallback:Lo/resume;


# direct methods
.method public constructor <init>(Lo/resume;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lo/refreshAuthToken$extraCallback;->extraCallback:Lo/resume;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 273
    iget-object v0, p0, Lo/refreshAuthToken$extraCallback;->extraCallback:Lo/resume;

    .line 1392
    sget-object v1, Lo/overrideProtocolAndHost;->ICustomTabsCallback:Lo/overrideProtocolAndHost;

    .line 273
    invoke-interface {v0, p0, v1}, Lo/resume;->ICustomTabsCallback(Lo/moveRedRight$onPostMessage;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 3264
    iget-object v0, p0, Lo/refreshAuthToken$extraCallback;->extraCallback:Lo/resume;

    .line 2279
    sget-object v1, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/resume;->onPostMessage(Lo/emptyMap;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 287
    iget-object v0, p0, Lo/refreshAuthToken$extraCallback;->extraCallback:Lo/resume;

    sget-object v1, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/resume;->onPostMessage(Lo/emptyMap;)V

    return-void
.end method

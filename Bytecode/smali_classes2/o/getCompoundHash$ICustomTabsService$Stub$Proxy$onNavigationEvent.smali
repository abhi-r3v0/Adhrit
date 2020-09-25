.class final Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;


# direct methods
.method constructor <init>(Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;)V
    .locals 0

    .line 1652
    iput-object p1, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onNavigationEvent;->ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1655
    iget-object v0, p0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy$onNavigationEvent;->ICustomTabsCallback:Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;

    iget-object v0, v0, Lo/getCompoundHash$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:Lo/shouldIncludeCompoundHash;

    sget-object v1, Lo/getCompoundHash;->onPostMessage:Lo/emptyMap;

    .line 2374
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    new-instance v3, Lo/shouldIncludeCompoundHash$1;

    invoke-direct {v3, v0, v1}, Lo/shouldIncludeCompoundHash$1;-><init>(Lo/shouldIncludeCompoundHash;Lo/emptyMap;)V

    invoke-virtual {v2, v3}, Lo/unionWith;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

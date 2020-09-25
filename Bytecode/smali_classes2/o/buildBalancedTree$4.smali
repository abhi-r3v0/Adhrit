.class final Lo/buildBalancedTree$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildBalancedTree;->onMessageChannelReady(Lo/getMinKey$ICustomTabsCallback$Stub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/buildBalancedTree$onNavigationEvent;

.field private synthetic onPostMessage:Lo/moveRedRight;


# direct methods
.method constructor <init>(Lo/buildBalancedTree$onNavigationEvent;Lo/moveRedRight;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lo/buildBalancedTree$4;->ICustomTabsCallback:Lo/buildBalancedTree$onNavigationEvent;

    iput-object p2, p0, Lo/buildBalancedTree$4;->onPostMessage:Lo/moveRedRight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lo/buildBalancedTree$4;->ICustomTabsCallback:Lo/buildBalancedTree$onNavigationEvent;

    iget-object v1, p0, Lo/buildBalancedTree$4;->onPostMessage:Lo/moveRedRight;

    invoke-static {v0, v1}, Lo/buildBalancedTree$onNavigationEvent;->onMessageChannelReady(Lo/buildBalancedTree$onNavigationEvent;Lo/moveRedRight;)V

    return-void
.end method

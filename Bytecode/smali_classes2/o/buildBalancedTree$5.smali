.class final Lo/buildBalancedTree$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildBalancedTree;->ICustomTabsCallback(Lo/emptyMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/emptyMap;

.field private synthetic onPostMessage:Lo/buildBalancedTree;


# direct methods
.method constructor <init>(Lo/buildBalancedTree;Lo/emptyMap;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lo/buildBalancedTree$5;->onPostMessage:Lo/buildBalancedTree;

    iput-object p2, p0, Lo/buildBalancedTree$5;->extraCallback:Lo/emptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lo/buildBalancedTree$5;->onPostMessage:Lo/buildBalancedTree;

    invoke-static {v0}, Lo/buildBalancedTree;->onPostMessage(Lo/buildBalancedTree;)Lo/resume$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/buildBalancedTree$5;->extraCallback:Lo/emptyMap;

    invoke-interface {v0, v1}, Lo/resume$extraCallback;->onPostMessage(Lo/emptyMap;)V

    return-void
.end method

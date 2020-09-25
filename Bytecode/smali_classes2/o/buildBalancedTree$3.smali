.class final Lo/buildBalancedTree$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildBalancedTree;->onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/resume$extraCallback;


# direct methods
.method constructor <init>(Lo/resume$extraCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lo/buildBalancedTree$3;->ICustomTabsCallback:Lo/resume$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 120
    iget-object v0, p0, Lo/buildBalancedTree$3;->ICustomTabsCallback:Lo/resume$extraCallback;

    invoke-interface {v0}, Lo/resume$extraCallback;->onMessageChannelReady()V

    return-void
.end method

.class final Lo/buildBalancedTree$2;
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
.field private synthetic onMessageChannelReady:Lo/resume$extraCallback;


# direct methods
.method constructor <init>(Lo/resume$extraCallback;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/buildBalancedTree$2;->onMessageChannelReady:Lo/resume$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lo/buildBalancedTree$2;->onMessageChannelReady:Lo/resume$extraCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/resume$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method

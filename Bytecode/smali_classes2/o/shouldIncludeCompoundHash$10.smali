.class final Lo/shouldIncludeCompoundHash$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/shouldIncludeCompoundHash;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$10;->onNavigationEvent:Lo/shouldIncludeCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 417
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$10;->onNavigationEvent:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    .line 417
    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$10;->onNavigationEvent:Lo/shouldIncludeCompoundHash;

    .line 2065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onMessageChannelReady;

    .line 418
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$10;->onNavigationEvent:Lo/shouldIncludeCompoundHash;

    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash$onMessageChannelReady;->onNavigationEvent(Lo/shouldIncludeCompoundHash;)V

    return-void
.end method

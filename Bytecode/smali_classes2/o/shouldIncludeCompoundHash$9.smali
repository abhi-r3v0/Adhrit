.class final Lo/shouldIncludeCompoundHash$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldIncludeCompoundHash;->extraCallback(Lo/emptyMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/shouldIncludeCompoundHash;

.field private synthetic onNavigationEvent:Lo/emptyMap;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;Lo/emptyMap;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$9;->extraCallback:Lo/shouldIncludeCompoundHash;

    iput-object p2, p0, Lo/shouldIncludeCompoundHash$9;->onNavigationEvent:Lo/emptyMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/shouldIncludeCompoundHash$9;->extraCallback:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v1, v1, Lo/shouldIncludeCompoundHash;->newSession:Ljava/util/Collection;

    .line 439
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 441
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/resume;

    .line 442
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$9;->onNavigationEvent:Lo/emptyMap;

    invoke-interface {v1, v2}, Lo/resume;->onPostMessage(Lo/emptyMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class final Lo/ImmLeaksCleaner$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ImmLeaksCleaner;->onPostMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/ImmLeaksCleaner;

.field final synthetic extraCallback:Ljava/util/List;


# direct methods
.method constructor <init>(Lo/ImmLeaksCleaner;Ljava/util/List;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lo/ImmLeaksCleaner$2;->ICustomTabsCallback:Lo/ImmLeaksCleaner;

    iput-object p2, p0, Lo/ImmLeaksCleaner$2;->extraCallback:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lo/ImmLeaksCleaner$2;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onSaveInstanceState;

    .line 114
    iget-object v2, p0, Lo/ImmLeaksCleaner$2;->ICustomTabsCallback:Lo/ImmLeaksCleaner;

    iget-object v2, v2, Lo/ImmLeaksCleaner;->onNavigationEvent:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lo/onSaveInstanceState;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

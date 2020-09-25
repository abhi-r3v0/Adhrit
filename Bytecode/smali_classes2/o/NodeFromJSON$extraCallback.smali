.class public final Lo/NodeFromJSON$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NodeFromJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ensureIndexed$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsCallback$Stub:Ljava/util/concurrent/Executor;

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getQueryDefinition$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/getPredecessorChildName;

.field public onNavigationEvent:Lo/isFullyInitialized;

.field public onPostMessage:Lo/convertInteger$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 411
    invoke-static {}, Lo/getPredecessorChildName;->ICustomTabsCallback()Lo/getPredecessorChildName;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/NodeFromJSON$extraCallback;-><init>(Lo/getPredecessorChildName;)V

    return-void
.end method

.method private constructor <init>(Lo/getPredecessorChildName;)V
    .locals 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/NodeFromJSON$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/NodeFromJSON$extraCallback;->extraCallback:Ljava/util/List;

    .line 404
    iput-object p1, p0, Lo/NodeFromJSON$extraCallback;->onMessageChannelReady:Lo/getPredecessorChildName;

    .line 407
    iget-object p1, p0, Lo/NodeFromJSON$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    new-instance v0, Lo/maxPost;

    invoke-direct {v0}, Lo/maxPost;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

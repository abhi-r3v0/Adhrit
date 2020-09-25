.class public Lo/isInterrupted;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/colorFlip;


# static fields
.field public static final onMessageChannelReady:Lo/isInterrupted;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/isInterrupted;

    invoke-direct {v0}, Lo/isInterrupted;-><init>()V

    sput-object v0, Lo/isInterrupted;->onMessageChannelReady:Lo/isInterrupted;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 0

    return-void
.end method

.method public ICustomTabsCallback(Lo/assertValidTrackedQuery$onPostMessage;)V
    .locals 1

    .line 1035
    iget-object p1, p1, Lo/assertValidTrackedQuery$onPostMessage;->onNavigationEvent:Ljava/util/ArrayList;

    const-string v0, "noop"

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final V_()Lo/serverCacheEstimatedSizeInBytes;
    .locals 1

    .line 41
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    return-object v0
.end method

.method public final asBinder()V
    .locals 0

    return-void
.end method

.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/emptyMap;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/loadNestedQuery;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/pruneTreeRecursive;)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Lo/rotateRight;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/saveNode;)V
    .locals 0

    return-void
.end method

.class final Lo/osFile$onNavigationEvent;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/osFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/osFile;


# direct methods
.method constructor <init>(Lo/osFile;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lo/osFile$onNavigationEvent;->ICustomTabsCallback:Lo/osFile;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 822
    iget-object v0, p0, Lo/osFile$onNavigationEvent;->ICustomTabsCallback:Lo/osFile;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 805
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/osFile$onNavigationEvent;->ICustomTabsCallback:Lo/osFile;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lo/osFile;->extraCallback(Ljava/util/Map$Entry;)Lo/osFile$onRelationshipValidationResult;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 797
    new-instance v0, Lo/osFile$onNavigationEvent$5;

    invoke-direct {v0, p0}, Lo/osFile$onNavigationEvent$5;-><init>(Lo/osFile$onNavigationEvent;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 809
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 813
    :cond_0
    iget-object v0, p0, Lo/osFile$onNavigationEvent;->ICustomTabsCallback:Lo/osFile;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lo/osFile;->extraCallback(Ljava/util/Map$Entry;)Lo/osFile$onRelationshipValidationResult;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 817
    :cond_1
    iget-object v0, p0, Lo/osFile$onNavigationEvent;->ICustomTabsCallback:Lo/osFile;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lo/osFile;->onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;Z)V

    return v1
.end method

.method public final size()I
    .locals 1

    .line 793
    iget-object v0, p0, Lo/osFile$onNavigationEvent;->ICustomTabsCallback:Lo/osFile;

    iget v0, v0, Lo/osFile;->onPostMessage:I

    return v0
.end method

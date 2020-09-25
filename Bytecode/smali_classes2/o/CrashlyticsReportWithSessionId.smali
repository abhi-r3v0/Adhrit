.class public Lo/CrashlyticsReportWithSessionId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReportWithSessionId$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final map:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 51
    invoke-static {}, Lo/populateFramesList$onNavigationEvent;->identityTranslator()Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    move-result-object v1

    .line 48
    invoke-static {p1, v0, v1, p2}, Lo/populateFramesList$onNavigationEvent;->buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/populateFramesList;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    return-void
.end method

.method private constructor <init>(Lo/populateFramesList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/populateFramesList<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_0
    instance-of v0, p1, Lo/CrashlyticsReportWithSessionId;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_1
    check-cast p1, Lo/CrashlyticsReportWithSessionId;

    .line 68
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    iget-object p1, p1, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMaxEntry()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->getMaxKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMinEntry()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->getMinKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPredecessorEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 73
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lo/CrashlyticsReportWithSessionId<",
            "TT;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    iget-object v1, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/CrashlyticsReportWithSessionId;-><init>(Lo/populateFramesList;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 124
    new-instance v0, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;

    iget-object v1, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;

    iget-object v1, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v1, p1}, Lo/populateFramesList;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lo/CrashlyticsReportWithSessionId<",
            "TT;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    invoke-direct {v0, p1}, Lo/CrashlyticsReportWithSessionId;-><init>(Lo/populateFramesList;)V

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 136
    new-instance v0, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;

    iget-object v1, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v1}, Lo/populateFramesList;->reverseIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;

    iget-object v1, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v1, p1}, Lo/populateFramesList;->reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/CrashlyticsReportWithSessionId$onNavigationEvent;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 115
    iget-object v0, p0, Lo/CrashlyticsReportWithSessionId;->map:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->size()I

    move-result v0

    return v0
.end method

.method public unionWith(Lo/CrashlyticsReportWithSessionId;)Lo/CrashlyticsReportWithSessionId;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportWithSessionId<",
            "TT;>;)",
            "Lo/CrashlyticsReportWithSessionId<",
            "TT;>;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v0

    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v0, p1

    move-object p1, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 99
    :goto_0
    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v0
.end method

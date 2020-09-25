.class public final Lo/removeEventListener$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fromStatus$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/removeEventListener;

.field private onMessageChannelReady:I

.field private final onNavigationEvent:I


# direct methods
.method public constructor <init>(Lo/removeEventListener;I)V
    .locals 0

    .line 657
    iput-object p1, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p2, p0, Lo/removeEventListener$extraCallback;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/fromException;)Lo/removeValue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    iget v0, p0, Lo/removeEventListener$extraCallback;->onMessageChannelReady:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/removeEventListener$extraCallback;->onMessageChannelReady:I

    .line 673
    iget v0, p0, Lo/removeEventListener$extraCallback;->onNavigationEvent:I

    const-string v2, " must call proceed() exactly once"

    const-string v3, "network interceptor "

    if-lez v0, :cond_2

    .line 674
    iget-object v0, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    iget-object v0, v0, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 1556
    iget-object v0, v0, Lo/setValueInternal;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 674
    iget v4, p0, Lo/removeEventListener$extraCallback;->onNavigationEvent:I

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fromStatus;

    .line 1663
    iget-object v4, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    iget-object v4, v4, Lo/removeEventListener;->ICustomTabsCallback:Lo/setLogger$extraCallback$extraCallback;

    invoke-virtual {v4}, Lo/setLogger$extraCallback$extraCallback;->extraCallback()Lo/orderByChild;

    move-result-object v4

    .line 675
    invoke-interface {v4}, Lo/hasChild;->ICustomTabsCallback()Lo/onDisconnect;

    move-result-object v4

    .line 2055
    iget-object v4, v4, Lo/onDisconnect;->extraCallback:Lo/serializeSessionApp;

    .line 3048
    iget-object v5, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 3391
    iget-object v5, v5, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 4100
    iget-object v6, v4, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 4391
    iget-object v6, v6, Lo/fromCode;->extraCallback:Ljava/lang/String;

    .line 678
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5048
    iget-object v5, p1, Lo/fromException;->onNavigationEvent:Lo/fromCode;

    .line 5400
    iget v5, v5, Lo/fromCode;->onMessageChannelReady:I

    .line 6111
    iget-object v4, v4, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    .line 6400
    iget v4, v4, Lo/fromCode;->onMessageChannelReady:I

    if-ne v5, v4, :cond_1

    .line 685
    iget v4, p0, Lo/removeEventListener$extraCallback;->onMessageChannelReady:I

    if-gt v4, v1, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 680
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_2
    :goto_0
    iget v0, p0, Lo/removeEventListener$extraCallback;->onNavigationEvent:I

    iget-object v4, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    iget-object v4, v4, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 6556
    iget-object v4, v4, Lo/setValueInternal;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 691
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 693
    new-instance p1, Lo/removeEventListener$extraCallback;

    iget-object v0, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    iget v4, p0, Lo/removeEventListener$extraCallback;->onNavigationEvent:I

    add-int/2addr v4, v1

    invoke-direct {p1, v0, v4}, Lo/removeEventListener$extraCallback;-><init>(Lo/removeEventListener;I)V

    .line 694
    iget-object v0, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    iget-object v0, v0, Lo/removeEventListener;->onMessageChannelReady:Lo/setValueInternal;

    .line 7556
    iget-object v0, v0, Lo/setValueInternal;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 694
    iget v4, p0, Lo/removeEventListener$extraCallback;->onNavigationEvent:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fromStatus;

    .line 695
    invoke-interface {v0}, Lo/fromStatus;->ICustomTabsCallback()Lo/removeValue;

    move-result-object v4

    .line 698
    iget p1, p1, Lo/removeEventListener$extraCallback;->onMessageChannelReady:I

    if-ne p1, v1, :cond_4

    if-eqz v4, :cond_3

    return-object v4

    .line 703
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 710
    :cond_5
    iget-object v0, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    invoke-static {v0}, Lo/removeEventListener;->onNavigationEvent(Lo/removeEventListener;)Lo/addChildEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/addChildEventListener;->onMessageChannelReady(Lo/fromException;)V

    .line 713
    iget-object v0, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    invoke-static {v0, p1}, Lo/removeEventListener;->extraCallback(Lo/removeEventListener;Lo/fromException;)Lo/fromException;

    .line 715
    invoke-static {p1}, Lo/removeEventListener;->ICustomTabsCallback(Lo/fromException;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8086
    iget-object v0, p1, Lo/fromException;->onMessageChannelReady:Lo/setPriorityInternal;

    if-eqz v0, :cond_6

    .line 716
    iget-object v0, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    invoke-static {v0}, Lo/removeEventListener;->onNavigationEvent(Lo/removeEventListener;)Lo/addChildEventListener;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Lo/addChildEventListener;->onPostMessage(Lo/fromException;J)Lo/exceptionStacktrace;

    move-result-object p1

    .line 717
    invoke-static {p1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    .line 719
    invoke-interface {p1}, Lo/filtersNodes;->close()V

    .line 722
    :cond_6
    iget-object p1, p0, Lo/removeEventListener$extraCallback;->ICustomTabsCallback:Lo/removeEventListener;

    invoke-static {p1}, Lo/removeEventListener;->extraCallback(Lo/removeEventListener;)Lo/removeValue;

    move-result-object p1

    .line 10088
    iget v0, p1, Lo/removeValue;->ICustomTabsCallback:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_7

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_8

    .line 10130
    :cond_7
    iget-object v1, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 725
    invoke-virtual {v1}, Lo/updateChildren;->onMessageChannelReady()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_9

    :cond_8
    return-object p1

    .line 726
    :cond_9
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " had non-zero Content-Length: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11130
    iget-object p1, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 727
    invoke-virtual {p1}, Lo/updateChildren;->onMessageChannelReady()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

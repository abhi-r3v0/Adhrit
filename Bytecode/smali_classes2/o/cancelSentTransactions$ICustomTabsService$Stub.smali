.class final Lo/cancelSentTransactions$ICustomTabsService$Stub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/cancelSentTransactions$validateRelationship;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

.field final extraCallback:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/cancelSentTransactions$validateRelationship;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/cancelSentTransactions$newSession;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:I

.field final onPostMessage:Z

.field final onRelationshipValidationResult:Z

.field final onTransact:Z


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/cancelSentTransactions$newSession;",
            ">;",
            "Ljava/util/Collection<",
            "Lo/cancelSentTransactions$validateRelationship;",
            ">;",
            "Ljava/util/Collection<",
            "Lo/cancelSentTransactions$validateRelationship;",
            ">;",
            "Lo/cancelSentTransactions$validateRelationship;",
            "ZZZI)V"
        }
    .end annotation

    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-object p1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    if-eqz p2, :cond_d

    .line 1000
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    .line 1001
    iput-object p4, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    .line 1002
    iput-object p3, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    .line 1003
    iput-boolean p5, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    .line 1004
    iput-boolean p6, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    .line 1005
    iput-boolean p7, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    .line 1006
    iput p8, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    const/4 p3, 0x0

    const/4 p7, 0x1

    if-eqz p6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_c

    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_b

    if-eqz p6, :cond_6

    .line 1014
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, p7, :cond_4

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1015
    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p4, Lo/cancelSentTransactions$validateRelationship;->ICustomTabsCallback:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_a

    if-eqz p5, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    const/4 p3, 0x1

    :cond_8
    if-eqz p3, :cond_9

    return-void

    .line 5511
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cancelled should imply committed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4511
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "passThrough should imply winningSubstream is drained"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3511
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "passThrough should imply winningSubstream != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2511
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "passThrough should imply buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "drainedSubstreams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 11

    .line 1117
    iget-boolean v0, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1118
    iget-object v0, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1121
    iget-object v0, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 1122
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    .line 1124
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1125
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_1
    move-object v5, p1

    .line 1129
    iget p1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    add-int/lit8 v10, p1, 0x1

    .line 1130
    new-instance p1, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v3, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    iget-object v4, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    iget-object v6, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v7, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    iget-boolean v8, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    iget-boolean v9, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    return-object p1

    .line 7511
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already committed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6511
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "hedging frozen"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final extraCallback()Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 10

    .line 1103
    iget-boolean v0, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 1106
    :cond_0
    new-instance v0, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v2, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    iget-object v3, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    iget-object v4, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    iget-object v5, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v6, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    iget-boolean v7, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    const/4 v8, 0x1

    iget v9, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    return-object v0
.end method

.method final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 11

    const/4 v0, 0x1

    .line 1065
    iput-boolean v0, p1, Lo/cancelSentTransactions$validateRelationship;->ICustomTabsCallback:Z

    .line 1066
    iget-object v0, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1068
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1069
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 1070
    new-instance p1, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v3, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    iget-object v5, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    iget-object v6, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v7, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    iget-boolean v8, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    iget-boolean v9, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    iget v10, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 11

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1153
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1154
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1155
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 1157
    new-instance p1, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v3, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    iget-object v4, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    iget-object v6, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v7, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    iget-boolean v8, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    iget-boolean v9, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    iget v10, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    return-object p1
.end method

.method final onNavigationEvent(Lo/cancelSentTransactions$validateRelationship;)Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 11

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1140
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1141
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 1143
    new-instance p1, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v3, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    iget-object v4, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    iget-object v6, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v7, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onRelationshipValidationResult:Z

    iget-boolean v8, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    iget-boolean v9, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    iget v10, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    return-object p1
.end method

.method final onPostMessage()Lo/cancelSentTransactions$ICustomTabsService$Stub;
    .locals 10

    .line 1023
    new-instance v9, Lo/cancelSentTransactions$ICustomTabsService$Stub;

    iget-object v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onMessageChannelReady:Ljava/util/List;

    iget-object v2, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->extraCallback:Ljava/util/Collection;

    iget-object v3, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback:Ljava/util/Collection;

    iget-object v4, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->ICustomTabsCallback$Stub:Lo/cancelSentTransactions$validateRelationship;

    iget-boolean v6, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onPostMessage:Z

    iget-boolean v7, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onTransact:Z

    iget v8, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub;->onNavigationEvent:I

    const/4 v5, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/cancelSentTransactions$ICustomTabsService$Stub;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lo/cancelSentTransactions$validateRelationship;ZZZI)V

    return-object v9
.end method

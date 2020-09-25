.class final Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# static fields
.field private static final LIMIT:I = 0x384


# instance fields
.field private final argsHead:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final argsIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

.field private final head:Ljava/lang/String;

.field private subqueriesPerformed:I

.field private final tail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 594
    iput v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->subqueriesPerformed:I

    .line 616
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    .line 617
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->head:Ljava/lang/String;

    .line 618
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsHead:Ljava/util/List;

    .line 619
    iput-object p4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->tail:Ljava/lang/String;

    .line 621
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsIter:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 594
    iput v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->subqueriesPerformed:I

    .line 636
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    .line 637
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->head:Ljava/lang/String;

    .line 638
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsHead:Ljava/util/List;

    .line 639
    iput-object p5, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->tail:Ljava/lang/String;

    .line 641
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsIter:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method final getSubqueriesPerformed()I
    .locals 1

    .line 670
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->subqueriesPerformed:I

    return v0
.end method

.method final hasMoreSubqueries()Z
    .locals 1

    .line 646
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method final performNextSubquery()Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;
    .locals 5

    .line 651
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->subqueriesPerformed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->subqueriesPerformed:I

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsHead:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 655
    :goto_0
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsIter:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsHead:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rsub-int v3, v3, 0x384

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    .line 657
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "?"

    .line 659
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->argsIter:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->db:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->head:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;->tail:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.class final Lo/s$a$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lo/InstrumentsCompleteJsonAdapter$extraCallback;",
            "Lo/s$a$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/t;

.field private asBinder:Z

.field private extraCallback:Lo/s$a$onNavigationEvent;

.field private final onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/s$a$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/t$onPostMessage;

.field private onPostMessage:Lo/s$a$onNavigationEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashMap;

    .line 698
    new-instance v0, Lo/t$onPostMessage;

    invoke-direct {v0}, Lo/t$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/s$a$onMessageChannelReady;->onNavigationEvent:Lo/t$onPostMessage;

    .line 699
    sget-object v0, Lo/t;->extraCallback:Lo/t;

    iput-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    return-void
.end method

.method private ICustomTabsCallback(Lo/s$a$onNavigationEvent;Lo/t;)Lo/s$a$onNavigationEvent;
    .locals 2

    .line 849
    iget-object v0, p1, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v0, v0, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 854
    :cond_0
    iget-object v1, p0, Lo/s$a$onMessageChannelReady;->onNavigationEvent:Lo/t$onPostMessage;

    invoke-virtual {p2, v0, v1}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v0

    iget v0, v0, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 855
    new-instance v1, Lo/s$a$onNavigationEvent;

    iget-object p1, p1, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-direct {v1, p1, p2, v0}, Lo/s$a$onNavigationEvent;-><init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/t;I)V

    return-object v1
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 2

    .line 842
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/s$a$onNavigationEvent;

    iput-object v0, p0, Lo/s$a$onMessageChannelReady;->onPostMessage:Lo/s$a$onNavigationEvent;

    :cond_0
    return-void
.end method

.method static synthetic extraCallback(Lo/s$a$onMessageChannelReady;)Ljava/util/ArrayList;
    .locals 0

    .line 681
    iget-object p0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/s$a$onNavigationEvent;
    .locals 2

    .line 740
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 742
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/s$a$onNavigationEvent;

    return-object v0
.end method

.method public final asBinder()V
    .locals 1

    const/4 v0, 0x0

    .line 803
    iput-boolean v0, p0, Lo/s$a$onMessageChannelReady;->asBinder:Z

    .line 804
    invoke-direct {p0}, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final extraCallback()Lo/s$a$onNavigationEvent;
    .locals 1

    .line 731
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->extraCallback:Lo/s$a$onNavigationEvent;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/s$a$onNavigationEvent;
    .locals 1

    .line 723
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->onPostMessage:Lo/s$a$onNavigationEvent;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/s$a$onNavigationEvent;
    .locals 1

    .line 747
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/s$a$onNavigationEvent;

    return-object p1
.end method

.method public final onMessageChannelReady(ILo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 3

    .line 809
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    iget-object v1, p2, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 810
    :goto_0
    new-instance v2, Lo/s$a$onNavigationEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    goto :goto_1

    :cond_1
    sget-object v0, Lo/t;->extraCallback:Lo/t;

    :goto_1
    invoke-direct {v2, p2, v0, p1}, Lo/s$a$onNavigationEvent;-><init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/t;I)V

    .line 812
    iget-object p1, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object p1, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object p1, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    invoke-virtual {p1}, Lo/t;->extraCallback()Z

    move-result p1

    if-nez p1, :cond_2

    .line 815
    invoke-direct {p0}, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub()V

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()Lo/s$a$onNavigationEvent;
    .locals 2

    .line 710
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/s$a$onMessageChannelReady;->asBinder:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 712
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/s$a$onNavigationEvent;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent(I)V
    .locals 0

    .line 778
    invoke-direct {p0}, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Z
    .locals 3

    .line 824
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/s$a$onNavigationEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 829
    :cond_0
    iget-object v2, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 830
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->extraCallback:Lo/s$a$onNavigationEvent;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 831
    iget-object p1, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/s$a$onNavigationEvent;

    :goto_0
    iput-object p1, p0, Lo/s$a$onMessageChannelReady;->extraCallback:Lo/s$a$onNavigationEvent;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final onPostMessage(I)Lo/s$a$onNavigationEvent;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 761
    :goto_0
    iget-object v3, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 762
    iget-object v3, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/s$a$onNavigationEvent;

    .line 763
    iget-object v4, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    iget-object v5, v3, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object v5, v5, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 764
    iget-object v5, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    iget-object v6, p0, Lo/s$a$onMessageChannelReady;->onNavigationEvent:Lo/t$onPostMessage;

    .line 765
    invoke-virtual {v5, v4, v6}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object v4

    iget v4, v4, Lo/t$onPostMessage;->onNavigationEvent:I

    if-ne v4, p1, :cond_1

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    move-object v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final onPostMessage(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)V
    .locals 1

    .line 838
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/s$a$onNavigationEvent;

    iput-object p1, p0, Lo/s$a$onMessageChannelReady;->extraCallback:Lo/s$a$onNavigationEvent;

    return-void
.end method

.method public final onPostMessage(Lo/t;)V
    .locals 4

    const/4 v0, 0x0

    .line 783
    :goto_0
    iget-object v1, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 784
    iget-object v1, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 785
    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/s$a$onNavigationEvent;

    invoke-direct {p0, v1, p1}, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback(Lo/s$a$onNavigationEvent;Lo/t;)Lo/s$a$onNavigationEvent;

    move-result-object v1

    .line 786
    iget-object v2, p0, Lo/s$a$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v2, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v3, v1, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lo/s$a$onMessageChannelReady;->extraCallback:Lo/s$a$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 790
    invoke-direct {p0, v0, p1}, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback(Lo/s$a$onNavigationEvent;Lo/t;)Lo/s$a$onNavigationEvent;

    move-result-object v0

    iput-object v0, p0, Lo/s$a$onMessageChannelReady;->extraCallback:Lo/s$a$onNavigationEvent;

    .line 792
    :cond_1
    iput-object p1, p0, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/t;

    .line 793
    invoke-direct {p0}, Lo/s$a$onMessageChannelReady;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lo/s$a$onMessageChannelReady;->asBinder:Z

    return v0
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    const/4 v0, 0x1

    .line 798
    iput-boolean v0, p0, Lo/s$a$onMessageChannelReady;->asBinder:Z

    return-void
.end method

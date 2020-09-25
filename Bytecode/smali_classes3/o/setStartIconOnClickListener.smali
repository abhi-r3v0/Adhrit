.class final Lo/setStartIconOnClickListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraCallback:Ljava/util/BitSet;

.field private onMessageChannelReady:Ljava/util/BitSet;

.field private onNavigationEvent:Lo/cH$asBinder;

.field private onPostMessage:Z

.field private onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic onTransact:Lo/setErrorIconTintMode;


# direct methods
.method private constructor <init>(Lo/setErrorIconTintMode;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setStartIconOnClickListener;->onTransact:Lo/setErrorIconTintMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo/setStartIconOnClickListener;->ICustomTabsCallback:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lo/setStartIconOnClickListener;->onPostMessage:Z

    .line 4
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lo/setStartIconOnClickListener;->extraCallback:Ljava/util/BitSet;

    .line 5
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lo/setStartIconOnClickListener;->onMessageChannelReady:Ljava/util/BitSet;

    .line 6
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    .line 7
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lo/setErrorIconTintMode;Ljava/lang/String;Lo/cH$asBinder;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/cH$asBinder;",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lo/setStartIconOnClickListener;->onTransact:Lo/setErrorIconTintMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lo/setStartIconOnClickListener;->ICustomTabsCallback:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lo/setStartIconOnClickListener;->extraCallback:Ljava/util/BitSet;

    .line 12
    iput-object p5, p0, Lo/setStartIconOnClickListener;->onMessageChannelReady:Ljava/util/BitSet;

    .line 13
    iput-object p6, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    .line 14
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    if-eqz p7, :cond_0

    .line 16
    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 17
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p5, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lo/setStartIconOnClickListener;->onPostMessage:Z

    .line 22
    iput-object p3, p0, Lo/setStartIconOnClickListener;->onNavigationEvent:Lo/cH$asBinder;

    return-void
.end method

.method synthetic constructor <init>(Lo/setErrorIconTintMode;Ljava/lang/String;Lo/cH$asBinder;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lo/setHintAnimationEnabled;)V
    .locals 0

    .line 102
    invoke-direct/range {p0 .. p7}, Lo/setStartIconOnClickListener;-><init>(Lo/setErrorIconTintMode;Ljava/lang/String;Lo/cH$asBinder;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/setErrorIconTintMode;Ljava/lang/String;Lo/setHintAnimationEnabled;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lo/setStartIconOnClickListener;-><init>(Lo/setErrorIconTintMode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setStartIconOnClickListener;)Ljava/util/BitSet;
    .locals 0

    .line 104
    iget-object p0, p0, Lo/setStartIconOnClickListener;->extraCallback:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final extraCallback(Lo/setStartIconCheckable;)V
    .locals 8

    .line 24
    invoke-virtual {p1}, Lo/setStartIconCheckable;->extraCallback()I

    move-result v0

    .line 25
    iget-object v1, p1, Lo/setStartIconCheckable;->extraCallback:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lo/setStartIconOnClickListener;->onMessageChannelReady:Ljava/util/BitSet;

    iget-object v2, p1, Lo/setStartIconCheckable;->extraCallback:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 27
    :cond_0
    iget-object v1, p1, Lo/setStartIconCheckable;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lo/setStartIconOnClickListener;->extraCallback:Ljava/util/BitSet;

    iget-object v2, p1, Lo/setStartIconCheckable;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 29
    :cond_1
    iget-object v1, p1, Lo/setStartIconCheckable;->onNavigationEvent:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    .line 30
    iget-object v1, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 31
    iget-object v4, p1, Lo/setStartIconCheckable;->onNavigationEvent:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 34
    :cond_2
    iget-object v1, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_3
    iget-object v1, p1, Lo/setStartIconCheckable;->onRelationshipValidationResult:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 36
    iget-object v1, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v4, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_4
    invoke-virtual {p1}, Lo/setStartIconCheckable;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    :cond_5
    invoke-static {}, Lo/loadAd;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/setStartIconOnClickListener;->onTransact:Lo/setErrorIconTintMode;

    .line 43
    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    iget-object v4, p0, Lo/setStartIconOnClickListener;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v5, Lo/zziq;->unsubscribe:Lo/setStatusBarForegroundColor;

    .line 44
    invoke-virtual {v0, v4, v5}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    invoke-virtual {p1}, Lo/setStartIconCheckable;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 48
    :cond_6
    invoke-static {}, Lo/loadAd;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lo/setStartIconOnClickListener;->onTransact:Lo/setErrorIconTintMode;

    .line 49
    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    iget-object v4, p0, Lo/setStartIconOnClickListener;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v5, Lo/zziq;->unsubscribe:Lo/setStatusBarForegroundColor;

    .line 50
    invoke-virtual {v0, v4, v5}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 52
    iget-object p1, p1, Lo/setStartIconCheckable;->onRelationshipValidationResult:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 54
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void

    .line 56
    :cond_8
    iget-object p1, p1, Lo/setStartIconCheckable;->onRelationshipValidationResult:Ljava/lang/Long;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 58
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method final onNavigationEvent(I)Lo/cH$extraCallback;
    .locals 7

    .line 60
    invoke-static {}, Lo/cH$extraCallback;->ICustomTabsCallback$Stub()Lo/cH$extraCallback$onMessageChannelReady;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lo/cH$extraCallback$onMessageChannelReady;->onNavigationEvent(I)Lo/cH$extraCallback$onMessageChannelReady;

    .line 62
    iget-boolean p1, p0, Lo/setStartIconOnClickListener;->onPostMessage:Z

    invoke-virtual {v0, p1}, Lo/cH$extraCallback$onMessageChannelReady;->onNavigationEvent(Z)Lo/cH$extraCallback$onMessageChannelReady;

    .line 63
    iget-object p1, p0, Lo/setStartIconOnClickListener;->onNavigationEvent:Lo/cH$asBinder;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lo/cH$extraCallback$onMessageChannelReady;->ICustomTabsCallback(Lo/cH$asBinder;)Lo/cH$extraCallback$onMessageChannelReady;

    .line 65
    :cond_0
    invoke-static {}, Lo/cH$asBinder;->ICustomTabsCallback$Stub()Lo/cH$asBinder$onPostMessage;

    move-result-object p1

    iget-object v1, p0, Lo/setStartIconOnClickListener;->extraCallback:Ljava/util/BitSet;

    .line 66
    invoke-static {v1}, Lo/setErrorTextColor;->extraCallback(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/cH$asBinder$onPostMessage;->extraCallback(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;

    move-result-object p1

    iget-object v1, p0, Lo/setStartIconOnClickListener;->onMessageChannelReady:Ljava/util/BitSet;

    .line 67
    invoke-static {v1}, Lo/setErrorTextColor;->extraCallback(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/cH$asBinder$onPostMessage;->onPostMessage(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 71
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    .line 72
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    iget-object v2, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 75
    invoke-static {}, Lo/cH$onMessageChannelReady;->onNavigationEvent()Lo/cH$onMessageChannelReady$onPostMessage;

    move-result-object v4

    .line 76
    invoke-virtual {v4, v3}, Lo/cH$onMessageChannelReady$onPostMessage;->extraCallback(I)Lo/cH$onMessageChannelReady$onPostMessage;

    move-result-object v4

    iget-object v5, p0, Lo/setStartIconOnClickListener;->onRelationshipValidationResult:Ljava/util/Map;

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lo/cH$onMessageChannelReady$onPostMessage;->ICustomTabsCallback(J)Lo/cH$onMessageChannelReady$onPostMessage;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cH$onMessageChannelReady;

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lo/cH$asBinder$onPostMessage;->ICustomTabsCallback(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;

    .line 85
    iget-object v1, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 87
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    .line 88
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    iget-object v2, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 90
    invoke-static {}, Lo/cH$asInterface;->onMessageChannelReady()Lo/cH$asInterface$onMessageChannelReady;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lo/cH$asInterface$onMessageChannelReady;->extraCallback(I)Lo/cH$asInterface$onMessageChannelReady;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lo/setStartIconOnClickListener;->asInterface:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 93
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    invoke-virtual {v4, v3}, Lo/cH$asInterface$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/Iterable;)Lo/cH$asInterface$onMessageChannelReady;

    .line 95
    :cond_4
    invoke-virtual {v4}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cH$asInterface;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 99
    :cond_5
    :goto_3
    invoke-virtual {p1, v1}, Lo/cH$asBinder$onPostMessage;->onNavigationEvent(Ljava/lang/Iterable;)Lo/cH$asBinder$onPostMessage;

    .line 100
    invoke-virtual {v0, p1}, Lo/cH$extraCallback$onMessageChannelReady;->onPostMessage(Lo/cH$asBinder$onPostMessage;)Lo/cH$extraCallback$onMessageChannelReady;

    .line 101
    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p1

    check-cast p1, Lo/fa;

    check-cast p1, Lo/cH$extraCallback;

    return-object p1
.end method

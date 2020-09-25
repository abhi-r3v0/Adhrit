.class public Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$Event$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final dispatcher:Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReport$Session$Event$Application<",
            "TReqT;TRespT;TCallbackT;>.onNavigationEvent;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lo/CrashlyticsReport$Session$Event$Application;


# direct methods
.method constructor <init>(Lo/CrashlyticsReport$Session$Event$Application;Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Session$Event$Application<",
            "TReqT;TRespT;TCallbackT;>.onNavigationEvent;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->dispatcher:Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;

    return-void
.end method

.method public static synthetic lambda$onClose$3(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/emptyMap;)V
    .locals 5

    .line 1516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 143
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "(%x) Stream closed."

    .line 140
    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 148
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    const-string v2, "(%x) Stream closed with status: %s."

    .line 145
    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_1
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application;->handleServerClose(Lo/emptyMap;)V

    return-void
.end method

.method public static synthetic lambda$onHeaders$0(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/getPredecessorKey;)V
    .locals 5

    .line 88
    invoke-static {}, Lo/lastIndexOf;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-virtual {p1}, Lo/getPredecessorKey;->onMessageChannelReady()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    sget-object v3, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->WHITE_LISTED_HEADERS:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    sget-object v3, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    .line 94
    invoke-static {v2, v3}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v3

    invoke-virtual {p1, v3}, Lo/getPredecessorKey;->onNavigationEvent(Lo/getPredecessorKey$ICustomTabsCallback;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 98
    iget-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 101
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    const-string p0, "(%x) Stream received headers: %s"

    .line 98
    invoke-static {p1, p0, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$onNext$1(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Ljava/lang/Object;)V
    .locals 4

    .line 112
    invoke-static {}, Lo/lastIndexOf;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 116
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "(%x) Stream received: %s"

    .line 113
    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onOpen$2(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    .line 130
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "(%x) Stream is open"

    .line 127
    invoke-static {v0, v2, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->this$0:Lo/CrashlyticsReport$Session$Event$Application;

    invoke-static {p0}, Lo/CrashlyticsReport$Session$Event$Application;->access$200(Lo/CrashlyticsReport$Session$Event$Application;)V

    return-void
.end method


# virtual methods
.method public onClose(Lo/emptyMap;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->dispatcher:Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;

    invoke-static {p0, p1}, Lcom/facebook/soloader/SysUtil;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/emptyMap;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHeaders(Lo/getPredecessorKey;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->dispatcher:Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;

    invoke-static {p0, p1}, Lo/setHostName$onPostMessage;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Lo/getPredecessorKey;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->dispatcher:Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;

    invoke-static {p0, p1}, Lcom/facebook/imageutils/HeifExifUtil;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 125
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;->dispatcher:Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;

    invoke-static {p0}, Lo/onBecameForeground;->lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$onMessageChannelReady;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$onNavigationEvent;->run(Ljava/lang/Runnable;)V

    return-void
.end method

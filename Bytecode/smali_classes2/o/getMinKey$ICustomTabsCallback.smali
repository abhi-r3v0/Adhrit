.class public final Lo/getMinKey$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static final extraCallback:Lo/getMinKey$ICustomTabsCallback;


# instance fields
.field public final ICustomTabsCallback:Lo/getMinKey$onTransact;

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Lo/emptyMap;

.field public final onPostMessage:Lo/beginTransaction$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 482
    new-instance v0, Lo/getMinKey$ICustomTabsCallback;

    sget-object v1, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Lo/getMinKey$ICustomTabsCallback;-><init>(Lo/getMinKey$onTransact;Lo/beginTransaction$onNavigationEvent;Lo/emptyMap;Z)V

    sput-object v0, Lo/getMinKey$ICustomTabsCallback;->extraCallback:Lo/getMinKey$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Lo/getMinKey$onTransact;Lo/beginTransaction$onNavigationEvent;Lo/emptyMap;Z)V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lo/getMinKey$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lo/getMinKey$ICustomTabsCallback;->onPostMessage:Lo/beginTransaction$onNavigationEvent;

    if-eqz p3, :cond_0

    .line 498
    check-cast p3, Lo/emptyMap;

    iput-object p3, p0, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    .line 499
    iput-boolean p4, p0, Lo/getMinKey$ICustomTabsCallback;->onMessageChannelReady:Z

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "status"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static extraCallback()Lo/getMinKey$ICustomTabsCallback;
    .locals 1

    .line 619
    sget-object v0, Lo/getMinKey$ICustomTabsCallback;->extraCallback:Lo/getMinKey$ICustomTabsCallback;

    return-object v0
.end method

.method public static extraCallback(Lo/emptyMap;)Lo/getMinKey$ICustomTabsCallback;
    .locals 4

    .line 3516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 598
    new-instance v0, Lo/getMinKey$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v3}, Lo/getMinKey$ICustomTabsCallback;-><init>(Lo/getMinKey$onTransact;Lo/beginTransaction$onNavigationEvent;Lo/emptyMap;Z)V

    return-object v0

    .line 4142
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "error status shouldn\'t be OK"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extraCallback(Lo/getMinKey$onTransact;)Lo/getMinKey$ICustomTabsCallback;
    .locals 4

    .line 2574
    new-instance v0, Lo/getMinKey$ICustomTabsCallback;

    if-eqz p0, :cond_0

    .line 2575
    check-cast p0, Lo/getMinKey$onTransact;

    const/4 v1, 0x0

    sget-object v2, Lo/emptyMap;->onMessageChannelReady:Lo/emptyMap;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lo/getMinKey$ICustomTabsCallback;-><init>(Lo/getMinKey$onTransact;Lo/beginTransaction$onNavigationEvent;Lo/emptyMap;Z)V

    return-object v0

    .line 2910
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "subchannel"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Lo/emptyMap;)Lo/getMinKey$ICustomTabsCallback;
    .locals 3

    .line 4516
    sget-object v0, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object v1, p0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 610
    new-instance v0, Lo/getMinKey$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v2}, Lo/getMinKey$ICustomTabsCallback;-><init>(Lo/getMinKey$onTransact;Lo/beginTransaction$onNavigationEvent;Lo/emptyMap;Z)V

    return-object v0

    .line 5142
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "drop status shouldn\'t be OK"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 683
    instance-of v0, p1, Lo/getMinKey$ICustomTabsCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 686
    :cond_0
    check-cast p1, Lo/getMinKey$ICustomTabsCallback;

    .line 687
    iget-object v0, p0, Lo/getMinKey$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    iget-object v2, p1, Lo/getMinKey$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 8052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 687
    iget-object v0, p0, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    iget-object v2, p1, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    .line 9052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    .line 687
    iget-object v0, p0, Lo/getMinKey$ICustomTabsCallback;->onPostMessage:Lo/beginTransaction$onNavigationEvent;

    iget-object v2, p1, Lo/getMinKey$ICustomTabsCallback;->onPostMessage:Lo/beginTransaction$onNavigationEvent;

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_5

    .line 10052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_7

    .line 688
    iget-boolean v0, p0, Lo/getMinKey$ICustomTabsCallback;->onMessageChannelReady:Z

    iget-boolean p1, p1, Lo/getMinKey$ICustomTabsCallback;->onMessageChannelReady:Z

    if-ne v0, p1, :cond_7

    return v3

    :cond_7
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 674
    iget-object v1, p0, Lo/getMinKey$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getMinKey$ICustomTabsCallback;->onPostMessage:Lo/beginTransaction$onNavigationEvent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/getMinKey$ICustomTabsCallback;->onMessageChannelReady:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 6105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 664
    iget-object v1, p0, Lo/getMinKey$ICustomTabsCallback;->ICustomTabsCallback:Lo/getMinKey$onTransact;

    const-string v2, "subchannel"

    .line 665
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getMinKey$ICustomTabsCallback;->onPostMessage:Lo/beginTransaction$onNavigationEvent;

    const-string v2, "streamTracerFactory"

    .line 666
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getMinKey$ICustomTabsCallback;->onNavigationEvent:Lo/emptyMap;

    const-string v2, "status"

    .line 667
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-boolean v1, p0, Lo/getMinKey$ICustomTabsCallback;->onMessageChannelReady:Z

    const-string v2, "drop"

    .line 668
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->onMessageChannelReady(Ljava/lang/String;Z)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

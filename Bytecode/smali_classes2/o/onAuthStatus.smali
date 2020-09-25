.class final Lo/onAuthStatus;
.super Lo/getMinKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onAuthStatus$onPostMessage;,
        Lo/onAuthStatus$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

.field private onNavigationEvent:Lo/getMinKey$onTransact;


# direct methods
.method constructor <init>(Lo/getMinKey$onMessageChannelReady;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lo/getMinKey;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    check-cast p1, Lo/getMinKey$onMessageChannelReady;

    iput-object p1, p0, Lo/onAuthStatus;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "helper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic onMessageChannelReady(Lo/onAuthStatus;)Lo/getMinKey$onMessageChannelReady;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/onAuthStatus;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/onAuthStatus;Lo/getMinKey$onTransact;Lo/openDatabase;)V
    .locals 3

    .line 5058
    iget-object v0, p2, Lo/openDatabase;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 4084
    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    if-eq v0, v1, :cond_4

    .line 4089
    sget-object v1, Lo/onAuthStatus$3;->extraCallback:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p1, 0x4

    if-ne v1, p1, :cond_0

    .line 4102
    new-instance p1, Lo/onAuthStatus$onMessageChannelReady;

    .line 5068
    iget-object p2, p2, Lo/openDatabase;->ICustomTabsCallback:Lo/emptyMap;

    .line 4102
    invoke-static {p2}, Lo/getMinKey$ICustomTabsCallback;->extraCallback(Lo/emptyMap;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/onAuthStatus$onMessageChannelReady;-><init>(Lo/getMinKey$ICustomTabsCallback;)V

    goto :goto_1

    .line 4105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unsupported state:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4099
    :cond_1
    new-instance p2, Lo/onAuthStatus$onMessageChannelReady;

    invoke-static {p1}, Lo/getMinKey$ICustomTabsCallback;->extraCallback(Lo/getMinKey$onTransact;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object p1

    invoke-direct {p2, p1}, Lo/onAuthStatus$onMessageChannelReady;-><init>(Lo/getMinKey$ICustomTabsCallback;)V

    goto :goto_0

    .line 4096
    :cond_2
    new-instance p1, Lo/onAuthStatus$onMessageChannelReady;

    invoke-static {}, Lo/getMinKey$ICustomTabsCallback;->extraCallback()Lo/getMinKey$ICustomTabsCallback;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/onAuthStatus$onMessageChannelReady;-><init>(Lo/getMinKey$ICustomTabsCallback;)V

    goto :goto_1

    .line 4091
    :cond_3
    new-instance p2, Lo/onAuthStatus$onPostMessage;

    invoke-direct {p2, p0, p1}, Lo/onAuthStatus$onPostMessage;-><init>(Lo/onAuthStatus;Lo/getMinKey$onTransact;)V

    :goto_0
    move-object p1, p2

    .line 4107
    :goto_1
    iget-object p0, p0, Lo/onAuthStatus;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    invoke-virtual {p0, v0, p1}, Lo/getMinKey$onMessageChannelReady;->onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/onAuthStatus;->onNavigationEvent:Lo/getMinKey$onTransact;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->extraCallback()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/onAuthStatus;->onNavigationEvent:Lo/getMinKey$onTransact;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V
    .locals 5

    .line 2221
    iget-object p1, p1, Lo/getMinKey$onRelationshipValidationResult;->onNavigationEvent:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lo/onAuthStatus;->onNavigationEvent:Lo/getMinKey$onTransact;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lo/onAuthStatus;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    .line 2752
    new-instance v1, Lo/getMinKey$onPostMessage$extraCallback;

    invoke-direct {v1}, Lo/getMinKey$onPostMessage$extraCallback;-><init>()V

    .line 2828
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2829
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lo/getMinKey$onPostMessage$extraCallback;->onPostMessage:Ljava/util/List;

    .line 3847
    new-instance p1, Lo/getMinKey$onPostMessage;

    iget-object v2, v1, Lo/getMinKey$onPostMessage$extraCallback;->onPostMessage:Ljava/util/List;

    iget-object v3, v1, Lo/getMinKey$onPostMessage$extraCallback;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v1, v1, Lo/getMinKey$onPostMessage$extraCallback;->onMessageChannelReady:[[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v1, v4}, Lo/getMinKey$onPostMessage;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;[[Ljava/lang/Object;B)V

    .line 50
    invoke-virtual {v0, p1}, Lo/getMinKey$onMessageChannelReady;->extraCallback(Lo/getMinKey$onPostMessage;)Lo/getMinKey$onTransact;

    move-result-object p1

    .line 54
    new-instance v0, Lo/onAuthStatus$5;

    invoke-direct {v0, p0, p1}, Lo/onAuthStatus$5;-><init>(Lo/onAuthStatus;Lo/getMinKey$onTransact;)V

    invoke-virtual {p1, v0}, Lo/getMinKey$onTransact;->extraCallback(Lo/getMinKey$asInterface;)V

    .line 60
    iput-object p1, p0, Lo/onAuthStatus;->onNavigationEvent:Lo/getMinKey$onTransact;

    .line 64
    iget-object v0, p0, Lo/onAuthStatus;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    sget-object v1, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    new-instance v2, Lo/onAuthStatus$onMessageChannelReady;

    invoke-static {p1}, Lo/getMinKey$ICustomTabsCallback;->extraCallback(Lo/getMinKey$onTransact;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/onAuthStatus$onMessageChannelReady;-><init>(Lo/getMinKey$ICustomTabsCallback;)V

    invoke-virtual {v0, v1, v2}, Lo/getMinKey$onMessageChannelReady;->onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V

    .line 65
    invoke-virtual {p1}, Lo/getMinKey$onTransact;->onNavigationEvent()V

    return-void

    .line 3142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addrs is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    invoke-virtual {v0, p1}, Lo/getMinKey$onTransact;->extraCallback(Ljava/util/List;)V

    return-void
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lo/onAuthStatus;->onNavigationEvent:Lo/getMinKey$onTransact;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lo/getMinKey$onTransact;->extraCallback()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lo/onAuthStatus;->onNavigationEvent:Lo/getMinKey$onTransact;

    .line 79
    :cond_0
    iget-object v0, p0, Lo/onAuthStatus;->ICustomTabsCallback:Lo/getMinKey$onMessageChannelReady;

    sget-object v1, Lo/setTransactionSuccessful;->onNavigationEvent:Lo/setTransactionSuccessful;

    new-instance v2, Lo/onAuthStatus$onMessageChannelReady;

    invoke-static {p1}, Lo/getMinKey$ICustomTabsCallback;->extraCallback(Lo/emptyMap;)Lo/getMinKey$ICustomTabsCallback;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/onAuthStatus$onMessageChannelReady;-><init>(Lo/getMinKey$ICustomTabsCallback;)V

    invoke-virtual {v0, v1, v2}, Lo/getMinKey$onMessageChannelReady;->onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V

    return-void
.end method

.class public abstract Lo/getMinKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMinKey$onNavigationEvent;,
        Lo/getMinKey$asInterface;,
        Lo/getMinKey$onTransact;,
        Lo/getMinKey$onMessageChannelReady;,
        Lo/getMinKey$onPostMessage;,
        Lo/getMinKey$ICustomTabsCallback;,
        Lo/getMinKey$extraCallback;,
        Lo/getMinKey$ICustomTabsCallback$Stub;,
        Lo/getMinKey$onRelationshipValidationResult;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3149
    new-instance v0, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    const-string v1, "io.grpc.LoadBalancer.loadBalancingConfig"

    invoke-direct {v0, v1}, Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    .line 122
    sput-object v0, Lo/getMinKey;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback()V
.end method

.method public extraCallback(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;",
            "Lo/serverCacheEstimatedSizeInBytes;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    iget v0, p0, Lo/getMinKey;->onNavigationEvent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/getMinKey;->onNavigationEvent:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1200
    new-instance v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;-><init>()V

    .line 1265
    iput-object p1, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    .line 1276
    iput-object p2, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    .line 1294
    new-instance p1, Lo/getMinKey$onRelationshipValidationResult;

    iget-object p2, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    iget-object v2, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v0, v0, Lo/getMinKey$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    invoke-direct {p1, p2, v2, v0, v1}, Lo/getMinKey$onRelationshipValidationResult;-><init>(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;Ljava/lang/Object;B)V

    .line 143
    invoke-virtual {p0, p1}, Lo/getMinKey;->onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V

    .line 146
    :cond_0
    iput v1, p0, Lo/getMinKey;->onNavigationEvent:I

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V
    .locals 2

    .line 161
    iget v0, p0, Lo/getMinKey;->onNavigationEvent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/getMinKey;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 2221
    iget-object v0, p1, Lo/getMinKey$onRelationshipValidationResult;->onNavigationEvent:Ljava/util/List;

    .line 2232
    iget-object p1, p1, Lo/getMinKey$onRelationshipValidationResult;->extraCallback:Lo/serverCacheEstimatedSizeInBytes;

    .line 162
    invoke-virtual {p0, v0, p1}, Lo/getMinKey;->extraCallback(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;)V

    :cond_0
    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lo/getMinKey;->onNavigationEvent:I

    return-void
.end method

.method public abstract onPostMessage(Lo/emptyMap;)V
.end method

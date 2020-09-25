.class final Lo/getRight$onMessageChannelReady;
.super Lo/getMinKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lo/getMinKey;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lo/getRight$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;)V
    .locals 0
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

    return-void
.end method

.method public final onMessageChannelReady(Lo/getMinKey$onRelationshipValidationResult;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/emptyMap;)V
    .locals 0

    return-void
.end method

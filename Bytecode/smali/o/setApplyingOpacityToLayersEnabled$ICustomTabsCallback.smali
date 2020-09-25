.class public final Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/invalidateSpanInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setApplyingOpacityToLayersEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Lo/invalidateSpanInfo;


# direct methods
.method public constructor <init>(Lo/invalidateSpanInfo;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->extraCallback:Lo/invalidateSpanInfo;

    .line 37
    iput p2, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 54
    check-cast p1, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;

    .line 55
    iget v1, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->ICustomTabsCallback:I

    iget v3, p1, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->ICustomTabsCallback:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->extraCallback:Lo/invalidateSpanInfo;

    iget-object p1, p1, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->extraCallback:Lo/invalidateSpanInfo;

    .line 56
    invoke-interface {v1, p1}, Lo/invalidateSpanInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->extraCallback:Lo/invalidateSpanInfo;

    invoke-interface {v0}, Lo/invalidateSpanInfo;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3f5

    iget v1, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1119
    new-instance v0, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 42
    iget-object v1, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->extraCallback:Lo/invalidateSpanInfo;

    const-string v2, "imageCacheKey"

    .line 43
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget v1, p0, Lo/setApplyingOpacityToLayersEnabled$ICustomTabsCallback;->ICustomTabsCallback:I

    const-string v2, "frameIndex"

    .line 44
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;I)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

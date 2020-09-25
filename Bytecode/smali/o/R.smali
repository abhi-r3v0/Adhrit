.class public final Lo/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/invalidateSpanInfo;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final asInterface:I

.field private final extraCallback:Lo/ɩ;

.field private final onMessageChannelReady:Lo/invalidateSpanInfo;

.field private final onNavigationEvent:Lo/ǃ;

.field private final onPostMessage:Lo/AFDeepLinkManager;

.field private final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ǃ;Lo/ɩ;Lo/AFDeepLinkManager;Lo/invalidateSpanInfo;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/R;->ICustomTabsCallback:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lo/R;->onNavigationEvent:Lo/ǃ;

    .line 47
    iput-object p3, p0, Lo/R;->extraCallback:Lo/ɩ;

    .line 48
    iput-object p4, p0, Lo/R;->onPostMessage:Lo/AFDeepLinkManager;

    .line 49
    iput-object p5, p0, Lo/R;->onMessageChannelReady:Lo/invalidateSpanInfo;

    .line 50
    iput-object p6, p0, Lo/R;->onRelationshipValidationResult:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 55
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p5, p0, Lo/R;->onPostMessage:Lo/AFDeepLinkManager;

    iget-object v0, p0, Lo/R;->onMessageChannelReady:Lo/invalidateSpanInfo;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 2075
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_1
    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    .line 2076
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_2
    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    .line 2077
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    :goto_3
    if-nez p5, :cond_4

    const/4 p5, 0x0

    goto :goto_4

    .line 2078
    :cond_4
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result p5

    :goto_4
    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    .line 2079
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    if-nez p6, :cond_6

    goto :goto_6

    .line 2080
    :cond_6
    invoke-virtual {p6}, Ljava/lang/Object;->hashCode()I

    move-result p4

    :goto_6
    add-int/lit8 p1, p1, 0x1f

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p3

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p5

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p4

    .line 52
    iput p1, p0, Lo/R;->asInterface:I

    .line 60
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 65
    instance-of v0, p1, Lo/R;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    check-cast p1, Lo/R;

    .line 69
    iget v0, p0, Lo/R;->asInterface:I

    iget v2, p1, Lo/R;->asInterface:I

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lo/R;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p1, Lo/R;->ICustomTabsCallback:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lo/R;->onNavigationEvent:Lo/ǃ;

    iget-object v2, p1, Lo/R;->onNavigationEvent:Lo/ǃ;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 3053
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
    if-eqz v0, :cond_b

    .line 71
    iget-object v0, p0, Lo/R;->extraCallback:Lo/ɩ;

    iget-object v2, p1, Lo/R;->extraCallback:Lo/ɩ;

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_3

    .line 4053
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
    if-eqz v0, :cond_b

    .line 72
    iget-object v0, p0, Lo/R;->onPostMessage:Lo/AFDeepLinkManager;

    iget-object v2, p1, Lo/R;->onPostMessage:Lo/AFDeepLinkManager;

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_5

    .line 5053
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
    if-eqz v0, :cond_b

    .line 73
    iget-object v0, p0, Lo/R;->onMessageChannelReady:Lo/invalidateSpanInfo;

    iget-object v2, p1, Lo/R;->onMessageChannelReady:Lo/invalidateSpanInfo;

    if-eq v0, v2, :cond_8

    if-eqz v0, :cond_7

    .line 6053
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_b

    .line 74
    iget-object v0, p0, Lo/R;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object p1, p1, Lo/R;->onRelationshipValidationResult:Ljava/lang/String;

    if-eq v0, p1, :cond_a

    if-eqz v0, :cond_9

    .line 7053
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    const/4 p1, 0x1

    :goto_9
    if-eqz p1, :cond_b

    return v3

    :cond_b
    return v1
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lo/R;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 80
    iget v0, p0, Lo/R;->asInterface:I

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lo/R;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/R;->onNavigationEvent:Lo/ǃ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/R;->extraCallback:Lo/ɩ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/R;->onPostMessage:Lo/AFDeepLinkManager;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/R;->onMessageChannelReady:Lo/invalidateSpanInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/R;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lo/R;->asInterface:I

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-string v2, "%s_%s_%s_%s_%s_%s_%d"

    .line 100
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

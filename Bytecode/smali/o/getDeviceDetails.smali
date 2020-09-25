.class public final Lo/getDeviceDetails;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:J

.field private extraCallback:I

.field private final onMessageChannelReady:[Lo/CryptLib;

.field private onNavigationEvent:Z

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/trackApiError$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/trackApiError$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lo/getDeviceDetails;->onPostMessage:Ljava/util/List;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lo/CryptLib;

    iput-object p1, p0, Lo/getDeviceDetails;->onMessageChannelReady:[Lo/CryptLib;

    return-void
.end method

.method private extraCallback(Lo/DreamAppGlideModule;I)Z
    .locals 2

    .line 120
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 124
    iput-boolean v1, p0, Lo/getDeviceDetails;->onNavigationEvent:Z

    .line 126
    :cond_1
    iget p1, p0, Lo/getDeviceDetails;->extraCallback:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/getDeviceDetails;->extraCallback:I

    .line 127
    iget-boolean p1, p0, Lo/getDeviceDetails;->onNavigationEvent:Z

    return p1
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 82
    iput-boolean p3, p0, Lo/getDeviceDetails;->onNavigationEvent:Z

    .line 83
    iput-wide p1, p0, Lo/getDeviceDetails;->ICustomTabsCallback$Stub:J

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lo/getDeviceDetails;->ICustomTabsCallback:I

    const/4 p1, 0x2

    .line 85
    iput p1, p0, Lo/getDeviceDetails;->extraCallback:I

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lo/getDeviceDetails;->onNavigationEvent:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 6

    .line 100
    iget-boolean v0, p0, Lo/getDeviceDetails;->onNavigationEvent:Z

    if-eqz v0, :cond_3

    .line 101
    iget v0, p0, Lo/getDeviceDetails;->extraCallback:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lo/getDeviceDetails;->extraCallback(Lo/DreamAppGlideModule;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget v0, p0, Lo/getDeviceDetails;->extraCallback:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Lo/getDeviceDetails;->extraCallback(Lo/DreamAppGlideModule;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v2

    .line 111
    iget-object v3, p0, Lo/getDeviceDetails;->onMessageChannelReady:[Lo/CryptLib;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 112
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 113
    invoke-interface {v5, p1, v2}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_2
    iget p1, p0, Lo/getDeviceDetails;->ICustomTabsCallback:I

    add-int/2addr p1, v2

    iput p1, p0, Lo/getDeviceDetails;->ICustomTabsCallback:I

    :cond_3
    return-void
.end method

.method public final onPostMessage()V
    .locals 11

    .line 90
    iget-boolean v0, p0, Lo/getDeviceDetails;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lo/getDeviceDetails;->onMessageChannelReady:[Lo/CryptLib;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 92
    iget-wide v5, p0, Lo/getDeviceDetails;->ICustomTabsCallback$Stub:J

    const/4 v7, 0x1

    iget v8, p0, Lo/getDeviceDetails;->ICustomTabsCallback:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iput-boolean v2, p0, Lo/getDeviceDetails;->onNavigationEvent:Z

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 11

    const/4 v0, 0x0

    .line 59
    :goto_0
    iget-object v1, p0, Lo/getDeviceDetails;->onMessageChannelReady:[Lo/CryptLib;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lo/getDeviceDetails;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/trackApiError$extraCallback;

    .line 61
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 62
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object v2

    .line 65
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v4, v1, Lo/trackApiError$extraCallback;->onPostMessage:[B

    .line 70
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Lo/trackApiError$extraCallback;->extraCallback:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v4, "application/dvbsubs"

    .line 64
    invoke-static/range {v3 .. v10}, Lo/p$a;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lo/generateLink;)Lo/p$a;

    move-result-object v1

    .line 63
    invoke-interface {v2, v1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 73
    iget-object v1, p0, Lo/getDeviceDetails;->onMessageChannelReady:[Lo/CryptLib;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

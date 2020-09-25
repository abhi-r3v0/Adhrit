.class public final Lo/removeFromSharedPrefs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:I

.field private asBinder:I

.field private asInterface:J

.field private final extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:J

.field private onMessageChannelReady:Lo/CryptLib;

.field private final onNavigationEvent:Lo/ApiResponse;

.field private final onPostMessage:Lo/DreamAppGlideModule;

.field private onRelationshipValidationResult:Z

.field private onTransact:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lo/removeFromSharedPrefs;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub:I

    .line 65
    new-instance v1, Lo/DreamAppGlideModule;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object v1, p0, Lo/removeFromSharedPrefs;->onPostMessage:Lo/DreamAppGlideModule;

    .line 66
    iget-object v1, v1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 67
    new-instance v0, Lo/ApiResponse;

    invoke-direct {v0}, Lo/ApiResponse;-><init>()V

    iput-object v0, p0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    .line 68
    iput-object p1, p0, Lo/removeFromSharedPrefs;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method private ICustomTabsCallback(Lo/DreamAppGlideModule;)V
    .locals 7

    .line 209
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub$Proxy:I

    iget v2, p0, Lo/removeFromSharedPrefs;->asBinder:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 210
    iget-object v1, p0, Lo/removeFromSharedPrefs;->onMessageChannelReady:Lo/CryptLib;

    invoke-interface {v1, p1, v0}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 211
    iget p1, p0, Lo/removeFromSharedPrefs;->asBinder:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/removeFromSharedPrefs;->asBinder:I

    .line 212
    iget v4, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub$Proxy:I

    if-ge p1, v4, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lo/removeFromSharedPrefs;->onMessageChannelReady:Lo/CryptLib;

    iget-wide v1, p0, Lo/removeFromSharedPrefs;->getInterfaceDescriptor:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    .line 218
    iget-wide v0, p0, Lo/removeFromSharedPrefs;->getInterfaceDescriptor:J

    iget-wide v2, p0, Lo/removeFromSharedPrefs;->asInterface:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/removeFromSharedPrefs;->getInterfaceDescriptor:J

    const/4 p1, 0x0

    .line 219
    iput p1, p0, Lo/removeFromSharedPrefs;->asBinder:I

    .line 220
    iput p1, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method private onMessageChannelReady(Lo/DreamAppGlideModule;)V
    .locals 8

    .line 127
    iget-object v0, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 128
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v1

    .line 129
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 131
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 132
    :goto_1
    iget-boolean v4, p0, Lo/removeFromSharedPrefs;->onTransact:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 133
    :goto_2
    iput-boolean v3, p0, Lo/removeFromSharedPrefs;->onTransact:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 135
    invoke-virtual {p1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 137
    iput-boolean v5, p0, Lo/removeFromSharedPrefs;->onTransact:Z

    .line 138
    iget-object p1, p0, Lo/removeFromSharedPrefs;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object p1, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    .line 139
    iput p1, p0, Lo/removeFromSharedPrefs;->asBinder:I

    .line 140
    iput v6, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    return-void
.end method

.method private onPostMessage(Lo/DreamAppGlideModule;)V
    .locals 20

    move-object/from16 v0, p0

    .line 164
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v1

    iget v2, v0, Lo/removeFromSharedPrefs;->asBinder:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 165
    iget-object v2, v0, Lo/removeFromSharedPrefs;->onPostMessage:Lo/DreamAppGlideModule;

    iget-object v2, v2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v4, v0, Lo/removeFromSharedPrefs;->asBinder:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 166
    iget v2, v0, Lo/removeFromSharedPrefs;->asBinder:I

    add-int/2addr v2, v1

    iput v2, v0, Lo/removeFromSharedPrefs;->asBinder:I

    if-ge v2, v3, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v1, v0, Lo/removeFromSharedPrefs;->onPostMessage:Lo/DreamAppGlideModule;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 173
    iget-object v1, v0, Lo/removeFromSharedPrefs;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    iget-object v4, v0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    invoke-static {v1, v4}, Lo/ApiResponse;->ICustomTabsCallback(ILo/ApiResponse;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 176
    iput v2, v0, Lo/removeFromSharedPrefs;->asBinder:I

    .line 177
    iput v4, v0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub:I

    return-void

    .line 181
    :cond_1
    iget-object v1, v0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    iget v1, v1, Lo/ApiResponse;->ICustomTabsCallback:I

    iput v1, v0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub$Proxy:I

    .line 182
    iget-boolean v1, v0, Lo/removeFromSharedPrefs;->onRelationshipValidationResult:Z

    if-nez v1, :cond_2

    const-wide/32 v5, 0xf4240

    .line 183
    iget-object v1, v0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    iget v1, v1, Lo/ApiResponse;->asInterface:I

    int-to-long v7, v1

    mul-long v7, v7, v5

    iget-object v1, v0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    iget v1, v1, Lo/ApiResponse;->onNavigationEvent:I

    int-to-long v5, v1

    div-long/2addr v7, v5

    iput-wide v7, v0, Lo/removeFromSharedPrefs;->asInterface:J

    .line 184
    iget-object v9, v0, Lo/removeFromSharedPrefs;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, v0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    iget-object v10, v1, Lo/ApiResponse;->onMessageChannelReady:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x1000

    iget-object v1, v0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    iget v14, v1, Lo/ApiResponse;->extraCallback:I

    iget-object v1, v0, Lo/removeFromSharedPrefs;->onNavigationEvent:Lo/ApiResponse;

    iget v15, v1, Lo/ApiResponse;->onNavigationEvent:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lo/removeFromSharedPrefs;->extraCallback:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-static/range {v9 .. v19}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v1

    .line 187
    iget-object v5, v0, Lo/removeFromSharedPrefs;->onMessageChannelReady:Lo/CryptLib;

    invoke-interface {v5, v1}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    .line 188
    iput-boolean v4, v0, Lo/removeFromSharedPrefs;->onRelationshipValidationResult:Z

    .line 191
    :cond_2
    iget-object v1, v0, Lo/removeFromSharedPrefs;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-virtual {v1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 192
    iget-object v1, v0, Lo/removeFromSharedPrefs;->onMessageChannelReady:Lo/CryptLib;

    iget-object v2, v0, Lo/removeFromSharedPrefs;->onPostMessage:Lo/DreamAppGlideModule;

    invoke-interface {v1, v2, v3}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    const/4 v1, 0x2

    .line 193
    iput v1, v0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub:I

    return-void
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lo/removeFromSharedPrefs;->getInterfaceDescriptor:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub:I

    .line 74
    iput v0, p0, Lo/removeFromSharedPrefs;->asBinder:I

    .line 75
    iput-boolean v0, p0, Lo/removeFromSharedPrefs;->onTransact:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 2

    .line 92
    :goto_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    if-lez v0, :cond_3

    .line 93
    iget v0, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback$Stub:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lo/removeFromSharedPrefs;->ICustomTabsCallback(Lo/DreamAppGlideModule;)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lo/removeFromSharedPrefs;->onPostMessage(Lo/DreamAppGlideModule;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lo/removeFromSharedPrefs;->onMessageChannelReady(Lo/DreamAppGlideModule;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 1

    .line 80
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 81
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/removeFromSharedPrefs;->ICustomTabsCallback:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/removeFromSharedPrefs;->onMessageChannelReady:Lo/CryptLib;

    return-void
.end method

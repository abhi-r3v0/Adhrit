.class abstract Lo/setInBitmap;
.super Lo/t;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/CardInstrument;

.field private final onMessageChannelReady:Z

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(ZLo/CardInstrument;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lo/t;-><init>()V

    .line 72
    iput-boolean p1, p0, Lo/setInBitmap;->onMessageChannelReady:Z

    .line 73
    iput-object p2, p0, Lo/setInBitmap;->ICustomTabsCallback:Lo/CardInstrument;

    .line 74
    invoke-interface {p2}, Lo/CardInstrument;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/setInBitmap;->onPostMessage:I

    return-void
.end method

.method private ICustomTabsCallback(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 310
    iget-object p2, p0, Lo/setInBitmap;->ICustomTabsCallback:Lo/CardInstrument;

    invoke-interface {p2, p1}, Lo/CardInstrument;->onPostMessage(I)I

    move-result p1

    return p1

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private onNavigationEvent(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 305
    iget-object p2, p0, Lo/setInBitmap;->ICustomTabsCallback:Lo/CardInstrument;

    invoke-interface {p2, p1}, Lo/CardInstrument;->extraCallback(I)I

    move-result p1

    return p1

    :cond_0
    iget p2, p0, Lo/setInBitmap;->onPostMessage:I

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public ICustomTabsCallback(Z)I
    .locals 3

    .line 148
    iget v0, p0, Lo/setInBitmap;->onPostMessage:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 151
    :cond_0
    iget-boolean v0, p0, Lo/setInBitmap;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 155
    iget-object v0, p0, Lo/setInBitmap;->ICustomTabsCallback:Lo/CardInstrument;

    invoke-interface {v0}, Lo/CardInstrument;->extraCallback()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lo/setInBitmap;->onPostMessage:I

    add-int/lit8 v0, v0, -0x1

    .line 156
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v2

    invoke-virtual {v2}, Lo/t;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    invoke-direct {p0, v0, p1}, Lo/setInBitmap;->ICustomTabsCallback(IZ)I

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    .line 163
    :cond_4
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onTransact(I)I

    move-result v1

    .line 164
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final ICustomTabsCallback(I)Ljava/lang/Object;
    .locals 3

    .line 246
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onNavigationEvent(I)I

    move-result v0

    .line 247
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onMessageChannelReady(I)I

    move-result v1

    .line 249
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object p1

    .line 250
    invoke-virtual {p0, v0}, Lo/setInBitmap;->asInterface(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lo/setInBitmap;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract asInterface(I)Ljava/lang/Object;
.end method

.method protected abstract extraCallback(I)I
.end method

.method public extraCallback(IIZ)I
    .locals 5

    .line 114
    iget-boolean v0, p0, Lo/setInBitmap;->onMessageChannelReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lo/setInBitmap;->extraCallback(I)I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onTransact(I)I

    move-result v3

    .line 122
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lo/t;->extraCallback(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 130
    :cond_3
    invoke-direct {p0, v0, p3}, Lo/setInBitmap;->ICustomTabsCallback(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 132
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v0

    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-direct {p0, p1, p3}, Lo/setInBitmap;->ICustomTabsCallback(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 136
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onTransact(I)I

    move-result p2

    .line 137
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_5
    if-ne p2, v2, :cond_6

    .line 141
    invoke-virtual {p0, p3}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 3

    .line 230
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 233
    :cond_0
    invoke-static {p1}, Lo/setInBitmap;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    invoke-static {p1}, Lo/setInBitmap;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 235
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 239
    :cond_1
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    .line 241
    :cond_2
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onMessageChannelReady(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public extraCallback(Z)I
    .locals 3

    .line 169
    iget v0, p0, Lo/setInBitmap;->onPostMessage:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    iget-boolean v0, p0, Lo/setInBitmap;->onMessageChannelReady:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-eqz p1, :cond_2

    .line 176
    iget-object v0, p0, Lo/setInBitmap;->ICustomTabsCallback:Lo/CardInstrument;

    invoke-interface {v0}, Lo/CardInstrument;->onNavigationEvent()I

    move-result v2

    .line 177
    :cond_2
    invoke-virtual {p0, v2}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v0

    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-direct {p0, v2, p1}, Lo/setInBitmap;->onNavigationEvent(IZ)I

    move-result v2

    if-ne v2, v1, :cond_2

    return v1

    .line 184
    :cond_3
    invoke-virtual {p0, v2}, Lo/setInBitmap;->onTransact(I)I

    move-result v0

    .line 185
    invoke-virtual {p0, v2}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/t;->extraCallback(Z)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract onMessageChannelReady(I)I
.end method

.method public onMessageChannelReady(IIZ)I
    .locals 5

    .line 80
    iget-boolean v0, p0, Lo/setInBitmap;->onMessageChannelReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    const/4 p3, 0x0

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lo/setInBitmap;->extraCallback(I)I

    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onTransact(I)I

    move-result v3

    .line 88
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v4

    sub-int/2addr p1, v3

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-virtual {v4, p1, v1, p3}, Lo/t;->onMessageChannelReady(IIZ)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/2addr v3, p1

    return v3

    .line 96
    :cond_3
    invoke-direct {p0, v0, p3}, Lo/setInBitmap;->onNavigationEvent(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v1, :cond_4

    .line 97
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v0

    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    invoke-direct {p0, p1, p3}, Lo/setInBitmap;->onNavigationEvent(IZ)I

    move-result p1

    goto :goto_1

    :cond_4
    if-eq p1, v1, :cond_5

    .line 101
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onTransact(I)I

    move-result p2

    .line 102
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/t;->extraCallback(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_5
    if-ne p2, v2, :cond_6

    .line 106
    invoke-virtual {p0, p3}, Lo/t;->extraCallback(Z)I

    move-result p1

    return p1

    :cond_6
    return v1
.end method

.method protected abstract onNavigationEvent(I)I
.end method

.method public final onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;
    .locals 9

    .line 191
    invoke-virtual {p0, p1}, Lo/setInBitmap;->extraCallback(I)I

    move-result v0

    .line 192
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onTransact(I)I

    move-result v1

    .line 193
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onMessageChannelReady(I)I

    move-result v2

    .line 194
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v3

    sub-int v4, p1, v1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    .line 195
    invoke-virtual/range {v3 .. v8}, Lo/t;->onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;

    .line 197
    iget p1, p2, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    add-int/2addr p1, v2

    iput p1, p2, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 198
    iget p1, p2, Lo/t$onMessageChannelReady;->onTransact:I

    add-int/2addr p1, v2

    iput p1, p2, Lo/t$onMessageChannelReady;->onTransact:I

    return-object p2
.end method

.method public final onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;
    .locals 4

    .line 216
    invoke-virtual {p0, p1}, Lo/setInBitmap;->onNavigationEvent(I)I

    move-result v0

    .line 217
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onTransact(I)I

    move-result v1

    .line 218
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onMessageChannelReady(I)I

    move-result v2

    .line 219
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v3

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    .line 221
    iget p1, p2, Lo/t$onPostMessage;->onNavigationEvent:I

    add-int/2addr p1, v1

    iput p1, p2, Lo/t$onPostMessage;->onNavigationEvent:I

    if-eqz p3, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Lo/setInBitmap;->asInterface(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    invoke-static {p1, p3}, Lo/setInBitmap;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method protected abstract onPostMessage(Ljava/lang/Object;)I
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;
    .locals 3

    .line 204
    invoke-static {p1}, Lo/setInBitmap;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-static {p1}, Lo/setInBitmap;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    .line 207
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onTransact(I)I

    move-result v2

    .line 208
    invoke-virtual {p0, v0}, Lo/setInBitmap;->onPostMessage(I)Lo/t;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lo/t;->onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 209
    iget v0, p2, Lo/t$onPostMessage;->onNavigationEvent:I

    add-int/2addr v0, v2

    iput v0, p2, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 210
    iput-object p1, p2, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    return-object p2
.end method

.method protected abstract onPostMessage(I)Lo/t;
.end method

.method protected abstract onTransact(I)I
.end method

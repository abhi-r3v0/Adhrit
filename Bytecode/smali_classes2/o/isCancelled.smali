.class final Lo/isCancelled;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Object;


# instance fields
.field private transient ICustomTabsCallback$Stub:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient asBinder:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient asInterface:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field transient extraCallback:[I

.field transient onMessageChannelReady:[Ljava/lang/Object;

.field private transient onNavigationEvent:Ljava/lang/Object;

.field transient onPostMessage:[Ljava/lang/Object;

.field private transient onRelationshipValidationResult:I

.field private transient onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/isCancelled;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x1

    const-string v1, "Expected size must be >= 0"

    .line 3
    invoke-static {v0, v1}, Lo/dq;->onPostMessage(ZLjava/lang/Object;)V

    const/4 v1, 0x3

    const v2, 0x3fffffff    # 1.9999999f

    .line 4
    invoke-static {v1, v0, v2}, Lo/fr;->extraCallback(III)I

    move-result v0

    iput v0, p0, Lo/isCancelled;->onTransact:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/isCancelled;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lo/isCancelled;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final asBinder()I
    .locals 2

    .line 14
    iget v0, p0, Lo/isCancelled;->onTransact:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic extraCallback(Lo/isCancelled;)I
    .locals 0

    .line 261
    iget p0, p0, Lo/isCancelled;->onTransact:I

    return p0
.end method

.method private final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 167
    invoke-virtual {p0}, Lo/isCancelled;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object p1, Lo/isCancelled;->ICustomTabsCallback:Ljava/lang/Object;

    return-object p1

    .line 169
    :cond_0
    invoke-direct {p0}, Lo/isCancelled;->asBinder()I

    move-result v7

    const/4 v1, 0x0

    .line 170
    iget-object v3, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    iget-object v4, p0, Lo/isCancelled;->extraCallback:[I

    iget-object v5, p0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 171
    invoke-static/range {v0 .. v6}, Lo/closeQuietly;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 173
    sget-object p1, Lo/isCancelled;->ICustomTabsCallback:Ljava/lang/Object;

    return-object p1

    .line 174
    :cond_1
    iget-object v0, p0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 175
    invoke-virtual {p0, p1, v7}, Lo/isCancelled;->onMessageChannelReady(II)V

    .line 176
    iget p1, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    .line 177
    invoke-virtual {p0}, Lo/isCancelled;->onMessageChannelReady()V

    return-object v0
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 7

    .line 131
    invoke-virtual {p0}, Lo/isCancelled;->onPostMessage()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 133
    :cond_0
    invoke-static {p1}, Lo/et;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    .line 134
    invoke-direct {p0}, Lo/isCancelled;->asBinder()I

    move-result v2

    .line 135
    iget-object v3, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    not-int v4, v2

    and-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 142
    iget-object v5, p0, Lo/isCancelled;->extraCallback:[I

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    .line 145
    iget-object v6, p0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    aget-object v6, v6, v3

    .line 146
    invoke-static {p1, v6}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    :cond_3
    and-int v3, v5, v2

    if-nez v3, :cond_2

    return v1
.end method

.method static synthetic onMessageChannelReady(Lo/isCancelled;)I
    .locals 0

    .line 265
    invoke-direct {p0}, Lo/isCancelled;->asBinder()I

    move-result p0

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/isCancelled;Ljava/lang/Object;)I
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lo/isCancelled;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static onNavigationEvent(II)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/isCancelled;)I
    .locals 2

    .line 267
    iget v0, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    return v0
.end method

.method private final onNavigationEvent(I)V
    .locals 2

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 11
    iget v0, p0, Lo/isCancelled;->onTransact:I

    const/16 v1, 0x1f

    .line 12
    invoke-static {v0, p1, v1}, Lo/closeQuietly;->onNavigationEvent(III)I

    move-result p1

    iput p1, p0, Lo/isCancelled;->onTransact:I

    return-void
.end method

.method private final onPostMessage(IIII)I
    .locals 8

    .line 105
    invoke-static {p2}, Lo/closeQuietly;->onNavigationEvent(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 108
    invoke-static {v0, p3, p4}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;II)V

    .line 109
    :cond_0
    iget-object p3, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    .line 110
    iget-object p4, p0, Lo/isCancelled;->extraCallback:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 112
    invoke-static {p3, v1}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 115
    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 120
    invoke-static {v0, v6}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;I)I

    move-result v7

    .line 121
    invoke-static {v0, v6, v2}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;II)V

    .line 122
    invoke-static {v5, v7, p2}, Lo/closeQuietly;->onNavigationEvent(III)I

    move-result v2

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    iput-object v0, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p2}, Lo/isCancelled;->onNavigationEvent(I)V

    return p2
.end method

.method static synthetic onPostMessage(Lo/isCancelled;)Ljava/lang/Object;
    .locals 0

    .line 266
    iget-object p0, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult()Ljava/lang/Object;
    .locals 1

    .line 263
    sget-object v0, Lo/isCancelled;->ICustomTabsCallback:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lo/isCancelled;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final ICustomTabsCallback(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 206
    iget v0, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method final ICustomTabsCallback$Stub()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 239
    :cond_0
    new-instance v0, Lo/a$3;

    invoke-direct {v0, p0}, Lo/a$3;-><init>(Lo/isCancelled;)V

    return-object v0
.end method

.method public final clear()V
    .locals 6

    .line 240
    invoke-virtual {p0}, Lo/isCancelled;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lo/isCancelled;->onMessageChannelReady()V

    .line 243
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lo/isCancelled;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lo/fr;->extraCallback(III)I

    move-result v3

    iput v3, p0, Lo/isCancelled;->onTransact:I

    .line 247
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 248
    iput-object v1, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    .line 249
    iput v2, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    iget v3, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    iget v3, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    .line 253
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 254
    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 255
    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_3

    .line 256
    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    .line 257
    :cond_3
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 258
    :goto_0
    iget-object v0, p0, Lo/isCancelled;->extraCallback:[I

    iget v1, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 259
    iput v2, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 153
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lo/isCancelled;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 225
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 228
    :goto_0
    iget v2, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    if-ge v1, v2, :cond_2

    .line 229
    iget-object v2, p0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lo/isCancelled;->ICustomTabsCallback$Stub:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lo/a$b;

    invoke-direct {v0, p0}, Lo/a$b;-><init>(Lo/isCancelled;)V

    .line 217
    iput-object v0, p0, Lo/isCancelled;->ICustomTabsCallback$Stub:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final extraCallback()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Lo/onCancelled;

    invoke-direct {v0, p0}, Lo/onCancelled;-><init>(Lo/isCancelled;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lo/isCancelled;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_1
    iget-object v0, p0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 224
    invoke-virtual {p0}, Lo/isCancelled;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lo/isCancelled;->asBinder:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lo/done;

    invoke-direct {v0, p0}, Lo/done;-><init>(Lo/isCancelled;)V

    .line 210
    iput-object v0, p0, Lo/isCancelled;->asBinder:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final onMessageChannelReady()V
    .locals 1

    .line 15
    iget v0, p0, Lo/isCancelled;->onTransact:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lo/isCancelled;->onTransact:I

    return-void
.end method

.method final onMessageChannelReady(II)V
    .locals 7

    .line 179
    invoke-virtual {p0}, Lo/isCancelled;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    .line 181
    iget-object v3, p0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 182
    aput-object v4, v3, p1

    .line 183
    iget-object v5, p0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 184
    aput-object v2, v3, v0

    .line 185
    aput-object v2, v5, v0

    .line 186
    iget-object v2, p0, Lo/isCancelled;->extraCallback:[I

    aget v3, v2, v0

    aput v3, v2, p1

    .line 187
    aput v1, v2, v0

    .line 188
    invoke-static {v4}, Lo/et;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 189
    iget-object v2, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v2, v1}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_0

    .line 192
    iget-object p2, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p1}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;II)V

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 194
    iget-object v1, p0, Lo/isCancelled;->extraCallback:[I

    aget v3, v1, v2

    and-int v4, v3, p2

    if-ne v4, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 199
    invoke-static {v3, p1, p2}, Lo/closeQuietly;->onNavigationEvent(III)I

    move-result p1

    aput p1, v1, v2

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    .line 201
    :cond_2
    iget-object p2, p0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 202
    iget-object p2, p0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 203
    iget-object p2, p0, Lo/isCancelled;->extraCallback:[I

    aput v1, p2, p1

    return-void
.end method

.method final onNavigationEvent()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final onPostMessage()Z
    .locals 1

    .line 6
    iget-object v0, p0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final onTransact()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Lo/execute;

    invoke-direct {v0, p0}, Lo/execute;-><init>(Lo/isCancelled;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lo/isCancelled;->onPostMessage()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual/range {p0 .. p0}, Lo/isCancelled;->onPostMessage()Z

    move-result v3

    const-string v5, "Arrays already allocated"

    invoke-static {v3, v5}, Lo/dq;->onNavigationEvent(ZLjava/lang/Object;)V

    .line 20
    iget v3, v0, Lo/isCancelled;->onTransact:I

    const/4 v5, 0x4

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x2

    .line 23
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v7

    mul-double v10, v10, v8

    double-to-int v8, v10

    if-le v6, v8, :cond_0

    shl-int/lit8 v7, v7, 0x1

    if-gtz v7, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move v6, v7

    .line 29
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 31
    invoke-static {v5}, Lo/closeQuietly;->onNavigationEvent(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    sub-int/2addr v5, v4

    .line 32
    invoke-direct {v0, v5}, Lo/isCancelled;->onNavigationEvent(I)V

    .line 33
    new-array v5, v3, [I

    iput-object v5, v0, Lo/isCancelled;->extraCallback:[I

    .line 34
    new-array v5, v3, [Ljava/lang/Object;

    iput-object v5, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    .line 35
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    .line 36
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 38
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 39
    :cond_2
    iget-object v3, v0, Lo/isCancelled;->extraCallback:[I

    .line 40
    iget-object v5, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    .line 41
    iget-object v6, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    .line 42
    iget v7, v0, Lo/isCancelled;->onRelationshipValidationResult:I

    add-int/lit8 v8, v7, 0x1

    .line 44
    invoke-static/range {p1 .. p1}, Lo/et;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v9

    .line 45
    invoke-direct/range {p0 .. p0}, Lo/isCancelled;->asBinder()I

    move-result v10

    and-int v11, v9, v10

    .line 47
    iget-object v12, v0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v12, v11}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;I)I

    move-result v12

    if-nez v12, :cond_4

    if-le v8, v10, :cond_3

    .line 50
    invoke-static {v10}, Lo/closeQuietly;->onPostMessage(I)I

    move-result v3

    invoke-direct {v0, v10, v3, v9, v7}, Lo/isCancelled;->onPostMessage(IIII)I

    move-result v10

    goto :goto_3

    .line 51
    :cond_3
    iget-object v3, v0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    invoke-static {v3, v11, v8}, Lo/closeQuietly;->onPostMessage(Ljava/lang/Object;II)V

    goto :goto_3

    :cond_4
    not-int v11, v10

    and-int v15, v9, v11

    const/16 v16, 0x0

    :goto_1
    sub-int/2addr v12, v4

    .line 57
    aget v13, v3, v12

    and-int v14, v13, v11

    if-ne v14, v15, :cond_5

    .line 60
    aget-object v14, v5, v12

    .line 61
    invoke-static {v1, v14}, Lo/fu;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 62
    aget-object v1, v6, v12

    .line 63
    aput-object v2, v6, v12

    return-object v1

    :cond_5
    and-int v14, v13, v10

    move-object/from16 v17, v5

    add-int/lit8 v5, v16, 0x1

    if-nez v14, :cond_a

    const/16 v6, 0x9

    if-lt v5, v6, :cond_7

    .line 72
    invoke-direct/range {p0 .. p0}, Lo/isCancelled;->asBinder()I

    move-result v3

    add-int/2addr v3, v4

    .line 73
    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lo/isCancelled;->ICustomTabsCallback()I

    move-result v3

    :goto_2
    if-ltz v3, :cond_6

    .line 76
    iget-object v5, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    aget-object v5, v5, v3

    iget-object v6, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0, v3}, Lo/isCancelled;->ICustomTabsCallback(I)I

    move-result v3

    goto :goto_2

    .line 78
    :cond_6
    iput-object v4, v0, Lo/isCancelled;->onNavigationEvent:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 79
    iput-object v3, v0, Lo/isCancelled;->extraCallback:[I

    .line 80
    iput-object v3, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    .line 81
    iput-object v3, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lo/isCancelled;->onMessageChannelReady()V

    .line 84
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_7
    if-le v8, v10, :cond_8

    .line 86
    invoke-static {v10}, Lo/closeQuietly;->onPostMessage(I)I

    move-result v3

    invoke-direct {v0, v10, v3, v9, v7}, Lo/isCancelled;->onPostMessage(IIII)I

    move-result v10

    goto :goto_3

    .line 87
    :cond_8
    invoke-static {v13, v8, v10}, Lo/closeQuietly;->onNavigationEvent(III)I

    move-result v5

    aput v5, v3, v12

    .line 89
    :goto_3
    iget-object v3, v0, Lo/isCancelled;->extraCallback:[I

    array-length v3, v3

    if-le v8, v3, :cond_9

    const v5, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v6, v3, 0x1

    .line 92
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v3

    or-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_9

    .line 95
    iget-object v3, v0, Lo/isCancelled;->extraCallback:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lo/isCancelled;->extraCallback:[I

    .line 96
    iget-object v3, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    .line 97
    iget-object v3, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    .line 99
    :cond_9
    iget-object v3, v0, Lo/isCancelled;->extraCallback:[I

    const/4 v12, 0x0

    invoke-static {v9, v12, v10}, Lo/closeQuietly;->onNavigationEvent(III)I

    move-result v4

    aput v4, v3, v7

    .line 100
    iget-object v3, v0, Lo/isCancelled;->onPostMessage:[Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 101
    iget-object v1, v0, Lo/isCancelled;->onMessageChannelReady:[Ljava/lang/Object;

    aput-object v2, v1, v7

    .line 102
    iput v8, v0, Lo/isCancelled;->onRelationshipValidationResult:I

    .line 103
    invoke-virtual/range {p0 .. p0}, Lo/isCancelled;->onMessageChannelReady()V

    const/4 v13, 0x0

    return-object v13

    :cond_a
    move/from16 v16, v5

    move v12, v14

    move-object/from16 v5, v17

    goto/16 :goto_1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lo/isCancelled;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 166
    sget-object v0, Lo/isCancelled;->ICustomTabsCallback:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 222
    invoke-virtual {p0}, Lo/isCancelled;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lo/isCancelled;->onRelationshipValidationResult:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lo/isCancelled;->asInterface:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lo/copyOfRange;

    invoke-direct {v0, p0}, Lo/copyOfRange;-><init>(Lo/isCancelled;)V

    .line 235
    iput-object v0, p0, Lo/isCancelled;->asInterface:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

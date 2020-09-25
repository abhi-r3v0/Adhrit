.class public abstract Lo/restoreToolbarHierarchyState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/restoreToolbarHierarchyState$onPostMessage;,
        Lo/restoreToolbarHierarchyState$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:[Ljava/lang/String;


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:[Ljava/lang/String;

.field onNavigationEvent:[I

.field onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 193
    sput-object v0, Lo/restoreToolbarHierarchyState;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 195
    sget-object v2, Lo/restoreToolbarHierarchyState;->onMessageChannelReady:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    sget-object v0, Lo/restoreToolbarHierarchyState;->onMessageChannelReady:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    .line 198
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    .line 199
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    .line 200
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    .line 201
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    .line 202
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    .line 203
    aput-object v2, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 227
    iput-object v1, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    new-array v1, v0, [Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 229
    iput-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    return-void
.end method

.method public static ICustomTabsCallback(Lo/fullLimitUpdateChild;)Lo/restoreToolbarHierarchyState;
    .locals 1

    .line 222
    new-instance v0, Lo/dismissPopups;

    invoke-direct {v0, p0}, Lo/dismissPopups;-><init>(Lo/fullLimitUpdateChild;)V

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/filtersNodes;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1400
    sget-object v0, Lo/restoreToolbarHierarchyState;->onMessageChannelReady:[Ljava/lang/String;

    const/16 v1, 0x22

    .line 1401
    invoke-interface {p0, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    .line 1403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 1405
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 1408
    aget-object v5, v0, v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_0
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_1

    const-string v5, "\\u2028"

    goto :goto_1

    :cond_1
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_4

    const-string v5, "\\u2029"

    :cond_2
    :goto_1
    if-ge v4, v3, :cond_3

    .line 1420
    invoke-interface {p0, p1, v4, v3}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;II)Lo/filtersNodes;

    .line 1422
    :cond_3
    invoke-interface {p0, v5}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    add-int/lit8 v4, v3, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-ge v4, v2, :cond_6

    .line 1426
    invoke-interface {p0, p1, v4, v2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;II)Lo/filtersNodes;

    .line 1428
    :cond_6
    invoke-interface {p0, v1}, Lo/filtersNodes;->asBinder(I)Lo/filtersNodes;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;)Lo/TileList$Tile$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/TileList$Tile$ICustomTabsCallback;
        }
    .end annotation

    .line 249
    new-instance v0, Lo/TileList$Tile$ICustomTabsCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at path "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/TileList$Tile$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ICustomTabsCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final ICustomTabsCallback(I)V
    .locals 3

    .line 233
    iget v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_0

    .line 237
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    .line 238
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    goto :goto_0

    .line 235
    :cond_0
    new-instance p1, Lo/hideForSystem;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nesting too deep at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/hideForSystem;-><init>(Ljava/lang/String;)V

    throw p1

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    iget v1, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    aput p1, v0, v1

    return-void
.end method

.method public abstract ICustomTabsCallback$Stub()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;
    .locals 4

    .line 363
    iget v0, p0, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback:I

    iget-object v1, p0, Lo/restoreToolbarHierarchyState;->onNavigationEvent:[I

    iget-object v2, p0, Lo/restoreToolbarHierarchyState;->extraCallback:[Ljava/lang/String;

    iget-object v3, p0, Lo/restoreToolbarHierarchyState;->onPostMessage:[I

    invoke-static {v0, v1, v2, v3}, Lo/extraCallback;->onMessageChannelReady(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract ICustomTabsService()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asBinder()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract asInterface()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newSession()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPostMessage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onRelationshipValidationResult()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract warmup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

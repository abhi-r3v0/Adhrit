.class public final Lo/setRccState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/PreferenceGroup$onMessageChannelReady;
.implements Lo/sendSessionDestroyed;


# static fields
.field private static onRelationshipValidationResult:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lo/setRccState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:[I

.field final ICustomTabsCallback$Stub:I

.field private volatile asBinder:Ljava/lang/String;

.field final extraCallback:[D

.field public final onMessageChannelReady:[J

.field final onNavigationEvent:[[B

.field public final onPostMessage:[Ljava/lang/String;

.field private onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Lo/setRccState;->ICustomTabsCallback$Stub:I

    add-int/lit8 p1, p1, 0x1

    .line 161
    new-array v0, p1, [I

    iput-object v0, p0, Lo/setRccState;->ICustomTabsCallback:[I

    .line 162
    new-array v0, p1, [J

    iput-object v0, p0, Lo/setRccState;->onMessageChannelReady:[J

    .line 163
    new-array v0, p1, [D

    iput-object v0, p0, Lo/setRccState;->extraCallback:[D

    .line 164
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    .line 165
    new-array p1, p1, [[B

    iput-object p1, p0, Lo/setRccState;->onNavigationEvent:[[B

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;
    .locals 4

    .line 141
    sget-object v0, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    sget-object v2, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setRccState;

    .line 1170
    iput-object p0, v1, Lo/setRccState;->asBinder:Ljava/lang/String;

    .line 1171
    iput p1, v1, Lo/setRccState;->onTransact:I

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 150
    :cond_0
    monitor-exit v0

    .line 151
    new-instance v0, Lo/setRccState;

    invoke-direct {v0, p1}, Lo/setRccState;-><init>(I)V

    .line 2170
    iput-object p0, v0, Lo/setRccState;->asBinder:Ljava/lang/String;

    .line 2171
    iput p1, v0, Lo/setRccState;->onTransact:I

    return-object v0

    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lo/setRccState;->asBinder:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 234
    iget-object v0, p0, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public final ICustomTabsCallback(IJ)V
    .locals 2

    .line 239
    iget-object v0, p0, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 240
    iget-object v0, p0, Lo/setRccState;->onMessageChannelReady:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final extraCallback(I[B)V
    .locals 2

    .line 257
    iget-object v0, p0, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 258
    iget-object v0, p0, Lo/setRccState;->onNavigationEvent:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 4

    .line 182
    sget-object v0, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    iget v2, p0, Lo/setRccState;->ICustomTabsCallback$Stub:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2189
    sget-object v1, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 2190
    sget-object v1, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 2191
    sget-object v2, Lo/setRccState;->onRelationshipValidationResult:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    .line 2193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2194
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    .line 185
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onNavigationEvent(ID)V
    .locals 2

    .line 245
    iget-object v0, p0, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 246
    iget-object v0, p0, Lo/setRccState;->extraCallback:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public final onNavigationEvent(ILjava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 252
    iget-object v0, p0, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public final onNavigationEvent(Lo/sendSessionDestroyed;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 211
    :goto_0
    iget v2, p0, Lo/setRccState;->onTransact:I

    if-gt v1, v2, :cond_5

    .line 212
    iget-object v2, p0, Lo/setRccState;->ICustomTabsCallback:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    iget-object v2, p0, Lo/setRccState;->onNavigationEvent:[[B

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lo/sendSessionDestroyed;->extraCallback(I[B)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object v2, p0, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lo/sendSessionDestroyed;->onNavigationEvent(ILjava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v2, p0, Lo/setRccState;->extraCallback:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Lo/sendSessionDestroyed;->onNavigationEvent(ID)V

    goto :goto_1

    .line 217
    :cond_3
    iget-object v2, p0, Lo/setRccState;->onMessageChannelReady:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Lo/sendSessionDestroyed;->ICustomTabsCallback(IJ)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-interface {p1, v1}, Lo/sendSessionDestroyed;->ICustomTabsCallback(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

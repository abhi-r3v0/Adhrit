.class public final Lo/serializedName;
.super Lo/isCompleteForPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/serializedName$onMessageChannelReady;,
        Lo/serializedName$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/isFiltered;

.field private static final onMessageChannelReady:[B

.field private static final onNavigationEvent:[B

.field public static final onPostMessage:Lo/isFiltered;

.field private static final onRelationshipValidationResult:[B


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/isFiltered;

.field private final asBinder:Lo/matches;

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/serializedName$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 35
    invoke-static {v0}, Lo/isFiltered;->extraCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    sput-object v0, Lo/serializedName;->ICustomTabsCallback:Lo/isFiltered;

    const-string v0, "multipart/alternative"

    .line 42
    invoke-static {v0}, Lo/isFiltered;->extraCallback(Ljava/lang/String;)Lo/isFiltered;

    const-string v0, "multipart/digest"

    .line 49
    invoke-static {v0}, Lo/isFiltered;->extraCallback(Ljava/lang/String;)Lo/isFiltered;

    const-string v0, "multipart/parallel"

    .line 55
    invoke-static {v0}, Lo/isFiltered;->extraCallback(Ljava/lang/String;)Lo/isFiltered;

    const-string v0, "multipart/form-data"

    .line 62
    invoke-static {v0}, Lo/isFiltered;->extraCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    sput-object v0, Lo/serializedName;->onPostMessage:Lo/isFiltered;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 64
    fill-array-data v1, :array_0

    sput-object v1, Lo/serializedName;->onNavigationEvent:[B

    new-array v1, v0, [B

    .line 65
    fill-array-data v1, :array_1

    sput-object v1, Lo/serializedName;->onMessageChannelReady:[B

    new-array v0, v0, [B

    .line 66
    fill-array-data v0, :array_2

    sput-object v0, Lo/serializedName;->onRelationshipValidationResult:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lo/matches;Lo/isFiltered;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/matches;",
            "Lo/isFiltered;",
            "Ljava/util/List<",
            "Lo/serializedName$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lo/isCompleteForPath;-><init>()V

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lo/serializedName;->onTransact:J

    .line 75
    iput-object p1, p0, Lo/serializedName;->asBinder:Lo/matches;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/isFiltered;->extraCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object p1

    iput-object p1, p0, Lo/serializedName;->ICustomTabsCallback$Stub:Lo/isFiltered;

    .line 78
    invoke-static {p3}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/serializedName;->extraCallback:Ljava/util/List;

    return-void
.end method

.method static ICustomTabsCallback(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 205
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    .line 217
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "%22"

    .line 214
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    .line 211
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    .line 208
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private onMessageChannelReady(Lo/filtersNodes;Z)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 129
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    iget-object v1, p0, Lo/serializedName;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 133
    iget-object v6, p0, Lo/serializedName;->extraCallback:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/serializedName$ICustomTabsCallback;

    .line 134
    iget-object v7, v6, Lo/serializedName$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField;

    .line 135
    iget-object v6, v6, Lo/serializedName$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForPath;

    .line 137
    sget-object v8, Lo/serializedName;->onRelationshipValidationResult:[B

    invoke-interface {p1, v8}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 138
    iget-object v8, p0, Lo/serializedName;->asBinder:Lo/matches;

    invoke-interface {p1, v8}, Lo/filtersNodes;->onMessageChannelReady(Lo/matches;)Lo/filtersNodes;

    .line 139
    sget-object v8, Lo/serializedName;->onMessageChannelReady:[B

    invoke-interface {p1, v8}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    if-eqz v7, :cond_1

    .line 1077
    iget-object v8, v7, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 1082
    iget-object v10, v7, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v11, v9, 0x1

    aget-object v10, v10, v11

    .line 143
    invoke-interface {p1, v10}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v10

    sget-object v12, Lo/serializedName;->onNavigationEvent:[B

    .line 144
    invoke-interface {v10, v12}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    move-result-object v10

    .line 1087
    iget-object v12, v7, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/lit8 v11, v11, 0x1

    aget-object v11, v12, v11

    .line 145
    invoke-interface {v10, v11}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v10

    sget-object v11, Lo/serializedName;->onMessageChannelReady:[B

    .line 146
    invoke-interface {v10, v11}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 150
    :cond_1
    invoke-virtual {v6}, Lo/isCompleteForPath;->onPostMessage()Lo/isFiltered;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 152
    invoke-interface {p1, v8}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v8

    .line 153
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v7

    sget-object v8, Lo/serializedName;->onMessageChannelReady:[B

    .line 154
    invoke-interface {v7, v8}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 157
    :cond_2
    invoke-virtual {v6}, Lo/isCompleteForPath;->extraCallback()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 159
    invoke-interface {p1, v9}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v9

    .line 160
    invoke-interface {v9, v7, v8}, Lo/filtersNodes;->ICustomTabsCallback$Stub$Proxy(J)Lo/filtersNodes;

    move-result-object v9

    sget-object v10, Lo/serializedName;->onMessageChannelReady:[B

    .line 161
    invoke-interface {v9, v10}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 1930
    :try_start_0
    iget-wide p1, v0, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {v0, p1, p2}, Lo/updatePriority;->asInterface(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v9

    :catch_0
    move-exception p1

    .line 1932
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 168
    :cond_4
    :goto_3
    sget-object v9, Lo/serializedName;->onMessageChannelReady:[B

    invoke-interface {p1, v9}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    .line 173
    :cond_5
    invoke-virtual {v6, p1}, Lo/isCompleteForPath;->onMessageChannelReady(Lo/filtersNodes;)V

    .line 176
    :goto_4
    sget-object v6, Lo/serializedName;->onMessageChannelReady:[B

    invoke-interface {p1, v6}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 179
    :cond_6
    sget-object v1, Lo/serializedName;->onRelationshipValidationResult:[B

    invoke-interface {p1, v1}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 180
    iget-object v1, p0, Lo/serializedName;->asBinder:Lo/matches;

    invoke-interface {p1, v1}, Lo/filtersNodes;->onMessageChannelReady(Lo/matches;)Lo/filtersNodes;

    .line 181
    sget-object v1, Lo/serializedName;->onRelationshipValidationResult:[B

    invoke-interface {p1, v1}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    .line 182
    sget-object v1, Lo/serializedName;->onMessageChannelReady:[B

    invoke-interface {p1, v1}, Lo/filtersNodes;->extraCallback([B)Lo/filtersNodes;

    if-eqz p2, :cond_7

    .line 2067
    iget-wide p1, v0, Lo/updatePriority;->ICustomTabsCallback:J

    add-long/2addr v3, p1

    .line 186
    invoke-virtual {v0}, Lo/updatePriority;->updateVisuals()V

    :cond_7
    return-wide v3
.end method


# virtual methods
.method public final extraCallback()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-wide v0, p0, Lo/serializedName;->onTransact:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, v0, v1}, Lo/serializedName;->onMessageChannelReady(Lo/filtersNodes;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lo/serializedName;->onTransact:J

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/filtersNodes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lo/serializedName;->onMessageChannelReady(Lo/filtersNodes;Z)J

    return-void
.end method

.method public final onPostMessage()Lo/isFiltered;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/serializedName;->ICustomTabsCallback$Stub:Lo/isFiltered;

    return-object v0
.end method

.class public final Lo/preferLastSpan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/preferLastSpan$extraCallback;,
        Lo/preferLastSpan$onMessageChannelReady;,
        Lo/preferLastSpan$onNavigationEvent;,
        Lo/preferLastSpan$onPostMessage;,
        Lo/preferLastSpan$ICustomTabsCallback;,
        Lo/preferLastSpan$ICustomTabsCallback$Stub;,
        Lo/preferLastSpan$asBinder;,
        Lo/preferLastSpan$onTransact;,
        Lo/preferLastSpan$asInterface;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:[C

.field private static final onNavigationEvent:[C


# instance fields
.field private final arg$1:Lo/getEndedAt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 1027
    fill-array-data v1, :array_0

    sput-object v1, Lo/preferLastSpan;->onMessageChannelReady:[C

    new-array v0, v0, [C

    .line 1028
    fill-array-data v0, :array_1

    sput-object v0, Lo/preferLastSpan;->onNavigationEvent:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/preferLastSpan;->arg$1:Lo/getEndedAt;

    return-void
.end method

.method public static extraCallback([B)Ljava/lang/String;
    .locals 7

    .line 1011
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1013
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1014
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 1015
    sget-object v5, Lo/preferLastSpan;->onNavigationEvent:[C

    ushr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 1016
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static lambdaFactory$(Lo/getEndedAt;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/preferLastSpan;

    invoke-direct {v0, p0}, Lo/preferLastSpan;-><init>(Lo/getEndedAt;)V

    return-object v0
.end method

.method public static onMessageChannelReady([B)Ljava/lang/String;
    .locals 5

    .line 1003
    array-length v0, p0

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    shl-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1007
    sget-object v3, Lo/preferLastSpan;->onMessageChannelReady:[C

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1008
    sget-object v3, Lo/preferLastSpan;->onMessageChannelReady:[C

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/preferLastSpan;->arg$1:Lo/getEndedAt;

    invoke-static {v0}, Lo/getEndedAt;->lambda$enableNetwork$4(Lo/getEndedAt;)V

    return-void
.end method

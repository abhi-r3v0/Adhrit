.class final Lo/appendFrame$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/appendFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# static fields
.field private static final ICustomTabsCallback:[Ljava/lang/String;

.field private static final extraCallback:[Ljava/lang/String;

.field private static final onNavigationEvent:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "DATA"

    const-string v1, "HEADERS"

    const-string v2, "PRIORITY"

    const-string v3, "RST_STREAM"

    const-string v4, "SETTINGS"

    const-string v5, "PUSH_PROMISE"

    const-string v6, "PING"

    const-string v7, "GOAWAY"

    const-string v8, "WINDOW_UPDATE"

    const-string v9, "CONTINUATION"

    .line 718
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/appendFrame$onNavigationEvent;->onNavigationEvent:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    .line 735
    sput-object v0, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    .line 736
    sput-object v0, Lo/appendFrame$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 739
    :goto_0
    sget-object v2, Lo/appendFrame$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v1, v3, :cond_0

    new-array v3, v5, [Ljava/lang/Object;

    .line 740
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "%8s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_0
    sget-object v1, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    const-string v2, "END_STREAM"

    .line 744
    aput-object v2, v1, v5

    new-array v2, v5, [I

    aput v5, v2, v0

    const-string v3, "PADDED"

    const/16 v5, 0x8

    .line 748
    aput-object v3, v1, v5

    const/4 v1, 0x0

    :goto_1
    const-string v3, "|PADDED"

    if-gtz v1, :cond_1

    .line 749
    aget v6, v2, v1

    .line 750
    sget-object v7, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    or-int/lit8 v8, v6, 0x8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    aget-object v6, v10, v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 753
    :cond_1
    sget-object v1, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    const/4 v6, 0x4

    const-string v7, "END_HEADERS"

    aput-object v7, v1, v6

    const-string v6, "PRIORITY"

    .line 754
    aput-object v6, v1, v4

    const/16 v4, 0x24

    const-string v6, "END_HEADERS|PRIORITY"

    .line 755
    aput-object v6, v1, v4

    const/4 v1, 0x3

    new-array v4, v1, [I

    .line 756
    fill-array-data v4, :array_0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_3

    .line 759
    aget v7, v4, v6

    const/4 v8, 0x0

    :goto_3
    if-gtz v8, :cond_2

    .line 760
    aget v9, v2, v8

    .line 761
    sget-object v10, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    or-int v11, v9, v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    aget-object v13, v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v14, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 762
    sget-object v10, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    or-int/2addr v11, v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    aget-object v9, v14, v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 767
    :cond_3
    :goto_4
    sget-object v1, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 768
    aget-object v2, v1, v0

    if-nez v2, :cond_4

    sget-object v2, Lo/appendFrame$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onPostMessage(ZIIBB)Ljava/lang/String;
    .locals 9

    .line 684
    sget-object v0, Lo/appendFrame$onNavigationEvent;->onNavigationEvent:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_0

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_2

    :cond_1
    if-eq p3, v5, :cond_7

    if-eq p3, v4, :cond_7

    if-eq p3, v6, :cond_5

    const/4 v7, 0x6

    if-eq p3, v7, :cond_5

    const/4 v7, 0x7

    if-eq p3, v7, :cond_7

    const/16 v7, 0x8

    if-eq p3, v7, :cond_7

    .line 1707
    sget-object v7, Lo/appendFrame$onNavigationEvent;->extraCallback:[Ljava/lang/String;

    array-length v8, v7

    if-ge p4, v8, :cond_2

    aget-object v7, v7, p4

    goto :goto_1

    :cond_2
    sget-object v7, Lo/appendFrame$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    aget-object v7, v7, p4

    :goto_1
    if-ne p3, v1, :cond_3

    and-int/lit8 v8, p4, 0x4

    if-eqz v8, :cond_3

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    .line 1710
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_4

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    .line 1712
    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    move-object p3, v7

    goto :goto_2

    :cond_5
    if-ne p4, v3, :cond_6

    const-string p3, "ACK"

    goto :goto_2

    .line 1700
    :cond_6
    sget-object p3, Lo/appendFrame$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_2

    .line 1705
    :cond_7
    sget-object p3, Lo/appendFrame$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    aget-object p3, p3, p4

    :goto_2
    new-array p4, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_8

    const-string p0, "<<"

    goto :goto_3

    :cond_8
    const-string p0, ">>"

    :goto_3
    aput-object p0, p4, v2

    .line 686
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v5

    aput-object v0, p4, v4

    aput-object p3, p4, v6

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

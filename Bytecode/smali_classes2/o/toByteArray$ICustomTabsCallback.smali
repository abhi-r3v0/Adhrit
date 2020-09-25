.class public Lo/toByteArray$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/toByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final fetchTime:Ljava/util/Date;

.field private final fetchedConfigs:Lo/ByteString;

.field private final lastFetchETag:Ljava/lang/String;

.field private final status:I


# direct methods
.method private constructor <init>(Ljava/util/Date;ILo/ByteString;Ljava/lang/String;)V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Lo/toByteArray$ICustomTabsCallback;->fetchTime:Ljava/util/Date;

    .line 537
    iput p2, p0, Lo/toByteArray$ICustomTabsCallback;->status:I

    .line 538
    iput-object p3, p0, Lo/toByteArray$ICustomTabsCallback;->fetchedConfigs:Lo/ByteString;

    .line 539
    iput-object p4, p0, Lo/toByteArray$ICustomTabsCallback;->lastFetchETag:Ljava/lang/String;

    return-void
.end method

.method public static forBackendHasNoUpdates(Ljava/util/Date;)Lo/toByteArray$ICustomTabsCallback;
    .locals 3

    .line 552
    new-instance v0, Lo/toByteArray$ICustomTabsCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1, v1}, Lo/toByteArray$ICustomTabsCallback;-><init>(Ljava/util/Date;ILo/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forBackendUpdatesFetched(Lo/ByteString;Ljava/lang/String;)Lo/toByteArray$ICustomTabsCallback;
    .locals 3

    .line 544
    new-instance v0, Lo/toByteArray$ICustomTabsCallback;

    .line 545
    invoke-virtual {p0}, Lo/ByteString;->getFetchTime()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lo/toByteArray$ICustomTabsCallback;-><init>(Ljava/util/Date;ILo/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forLocalStorageUsed(Ljava/util/Date;)Lo/toByteArray$ICustomTabsCallback;
    .locals 3

    .line 560
    new-instance v0, Lo/toByteArray$ICustomTabsCallback;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2, v1, v1}, Lo/toByteArray$ICustomTabsCallback;-><init>(Ljava/util/Date;ILo/ByteString;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getFetchTime()Ljava/util/Date;
    .locals 1

    .line 565
    iget-object v0, p0, Lo/toByteArray$ICustomTabsCallback;->fetchTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFetchedConfigs()Lo/ByteString;
    .locals 1

    .line 583
    iget-object v0, p0, Lo/toByteArray$ICustomTabsCallback;->fetchedConfigs:Lo/ByteString;

    return-object v0
.end method

.method getLastFetchETag()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lo/toByteArray$ICustomTabsCallback;->lastFetchETag:Ljava/lang/String;

    return-object v0
.end method

.method getStatus()I
    .locals 1

    .line 575
    iget v0, p0, Lo/toByteArray$ICustomTabsCallback;->status:I

    return v0
.end method

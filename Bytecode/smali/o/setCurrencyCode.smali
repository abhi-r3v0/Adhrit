.class public final Lo/setCurrencyCode;
.super Lo/setResolveDeepLinkURLs;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lo/setResolveDeepLinkURLs;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalFileFetchProducer"

    return-object v0
.end method

.method protected final onMessageChannelReady(Lo/getHostPrefix;)Lo/getCardBackgroundColor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/io/FileInputStream;

    .line 30
    invoke-virtual {p1}, Lo/getHostPrefix;->extraCallback()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lo/getHostPrefix;->extraCallback()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    .line 29
    invoke-virtual {p0, v0, p1}, Lo/setCurrencyCode;->ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1
.end method

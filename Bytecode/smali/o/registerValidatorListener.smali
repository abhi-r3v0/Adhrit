.class public final Lo/registerValidatorListener;
.super Lo/setResolveDeepLinkURLs;
.source ""


# instance fields
.field private final extraCallback:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lo/setResolveDeepLinkURLs;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V

    .line 34
    iput-object p3, p0, Lo/registerValidatorListener;->extraCallback:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "QualifiedResourceFetchProducer"

    return-object v0
.end method

.method protected final onMessageChannelReady(Lo/getHostPrefix;)Lo/getCardBackgroundColor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    iget-object p1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 40
    iget-object v0, p0, Lo/registerValidatorListener;->extraCallback:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p0, p1, v0}, Lo/registerValidatorListener;->ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1
.end method

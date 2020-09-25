.class public final Lo/setExtension;
.super Lo/setResolveDeepLinkURLs;
.source ""


# static fields
.field private static final ICustomTabsCallback:[Ljava/lang/String;


# instance fields
.field private final onNavigationEvent:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "_data"

    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/setExtension;->ICustomTabsCallback:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;Landroid/content/ContentResolver;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lo/setResolveDeepLinkURLs;-><init>(Ljava/util/concurrent/Executor;Lo/CustomVersionedParcelable;)V

    .line 44
    iput-object p3, p0, Lo/setExtension;->onNavigationEvent:Landroid/content/ContentResolver;

    return-void
.end method

.method private ICustomTabsCallback(Landroid/net/Uri;)Lo/getCardBackgroundColor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lo/setExtension;->onNavigationEvent:Landroid/content/ContentResolver;

    sget-object v2, Lo/setExtension;->ICustomTabsCallback:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 90
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_data"

    .line 92
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 94
    iget-object v1, p0, Lo/setExtension;->onNavigationEvent:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 96
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    if-nez v2, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    .line 2105
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    .line 96
    :goto_0
    invoke-virtual {p0, v1, p1}, Lo/setExtension;->ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1
.end method


# virtual methods
.method protected final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalContentUriFetchProducer"

    return-object v0
.end method

.method protected final onMessageChannelReady(Lo/getHostPrefix;)Lo/getCardBackgroundColor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    iget-object p1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 50
    invoke-static {p1}, Lo/setLayoutDirection;->onPostMessage(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lo/setExtension;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/display_photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Contact photo does not exist: "

    if-eqz v0, :cond_1

    .line 56
    :try_start_0
    iget-object v0, p0, Lo/setExtension;->onNavigationEvent:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    iget-object v0, p0, Lo/setExtension;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    .line 68
    :goto_0
    invoke-virtual {p0, p1, v1}, Lo/setExtension;->ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1

    .line 64
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    invoke-static {p1}, Lo/setLayoutDirection;->onTransact(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-direct {p0, p1}, Lo/setExtension;->ICustomTabsCallback(Landroid/net/Uri;)Lo/getCardBackgroundColor;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 78
    :cond_4
    iget-object v0, p0, Lo/setExtension;->onNavigationEvent:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo/setExtension;->ICustomTabsCallback(Ljava/io/InputStream;I)Lo/getCardBackgroundColor;

    move-result-object p1

    return-object p1
.end method

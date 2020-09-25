.class final Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViesPayPayloadJsonAdapter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ViesPayPayloadJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# static fields
.field private static final onPostMessage:[Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/getBrandDomain;

.field private final onMessageChannelReady:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "id"

    const-string v1, "key"

    const-string v2, "metadata"

    .line 731
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onPostMessage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/getBrandDomain;)V
    .locals 0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    .line 754
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 943
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExoPlayerCacheIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extraCallback(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0, v1}, Lo/setChannel;->onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 898
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static onMessageChannelReady(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    .line 939
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static onMessageChannelReady(Lo/getBrandDomain;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 922
    :try_start_0
    invoke-static {p1}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-interface {p0}, Lo/getBrandDomain;->onNavigationEvent()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 926
    :try_start_1
    invoke-static {p0, v1, p1}, Lo/setChannel;->onMessageChannelReady(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 928
    invoke-static {p0, v0}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 932
    throw p1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 934
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method private onNavigationEvent()Landroid/database/Cursor;
    .locals 9

    .line 883
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    .line 884
    invoke-interface {v0}, Lo/getBrandDomain;->onPostMessage()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    sget-object v3, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onPostMessage:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 885
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3

    .line 903
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "id = ?"

    invoke-virtual {p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;Lo/PrefetchPayloadJsonAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 909
    invoke-virtual {p2}, Lo/PrefetchPayloadJsonAdapter;->onPostMessage()Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Lo/ViesPayPayloadJsonAdapter;->extraCallback(Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;Ljava/io/DataOutputStream;)V

    .line 910
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 912
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 913
    iget v2, p2, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    iget-object p2, p2, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "key"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "metadata"

    .line 915
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 916
    iget-object p2, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 783
    :try_start_0
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    .line 785
    invoke-interface {v0}, Lo/getBrandDomain;->onPostMessage()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v3, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 784
    invoke-static {v0, v2, v3}, Lo/setChannel;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 789
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    invoke-interface {v0}, Lo/getBrandDomain;->onNavigationEvent()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :try_start_1
    invoke-direct {p0, v0}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 793
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 796
    throw v1

    .line 799
    :cond_1
    :goto_1
    invoke-direct {p0}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent()Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 800
    :goto_2
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 802
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 803
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 805
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 806
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 807
    invoke-static {v5}, Lo/ViesPayPayloadJsonAdapter;->ICustomTabsCallback(Ljava/io/DataInputStream;)Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;

    move-result-object v5

    .line 809
    new-instance v6, Lo/PrefetchPayloadJsonAdapter;

    invoke-direct {v6, v3, v4, v5}, Lo/PrefetchPayloadJsonAdapter;-><init>(ILjava/lang/String;Lo/CredPaymentUiBuilder_PollingStrategyJsonAdapter;)V

    .line 810
    iget-object v3, v6, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget v3, v6, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    iget-object v4, v6, Lo/PrefetchPayloadJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 813
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-void

    :catchall_1
    move-exception v1

    .line 799
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_4

    .line 813
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    .line 815
    invoke-virtual {p1}, Ljava/util/AbstractMap;->clear()V

    .line 816
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 817
    new-instance p1, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/PrefetchPayloadJsonAdapter;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 876
    iget-object p2, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    iget p1, p1, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void

    .line 878
    :cond_0
    iget-object p2, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    iget p1, p1, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    .line 766
    invoke-interface {v0}, Lo/getBrandDomain;->onPostMessage()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x1

    .line 765
    invoke-static {v0, v2, v1}, Lo/setChannel;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 847
    :cond_0
    :try_start_0
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    invoke-interface {p1}, Lo/getBrandDomain;->onNavigationEvent()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 848
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .line 850
    :goto_0
    :try_start_1
    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 851
    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PrefetchPayloadJsonAdapter;

    if-nez v1, :cond_1

    .line 853
    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_1

    .line 855
    :cond_1
    invoke-direct {p0, p1, v1}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;Lo/PrefetchPayloadJsonAdapter;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 859
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 862
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 864
    new-instance v0, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public final onNavigationEvent(Lo/PrefetchPayloadJsonAdapter;)V
    .locals 2

    .line 870
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    iget v1, p1, Lo/PrefetchPayloadJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/database/DatabaseIOException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    iget-object v1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady(Lo/getBrandDomain;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(J)V
    .locals 0

    .line 759
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 760
    invoke-static {p1}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/PrefetchPayloadJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    :try_start_0
    iget-object v0, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback:Lo/getBrandDomain;

    invoke-interface {v0}, Lo/getBrandDomain;->onNavigationEvent()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :try_start_1
    invoke-direct {p0, v0}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->extraCallback(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 828
    invoke-virtual {p1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PrefetchPayloadJsonAdapter;

    .line 829
    invoke-direct {p0, v0, v1}, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onNavigationEvent(Landroid/database/sqlite/SQLiteDatabase;Lo/PrefetchPayloadJsonAdapter;)V

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 832
    iget-object p1, p0, Lo/ViesPayPayloadJsonAdapter$onNavigationEvent;->onMessageChannelReady:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 835
    throw p1
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 837
    new-instance v0, Lcom/google/android/exoplayer2/database/DatabaseIOException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/database/DatabaseIOException;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

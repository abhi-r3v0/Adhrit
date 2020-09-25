.class public abstract Lo/StoreSlab;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static extraCallback:Ljava/security/MessageDigest;


# instance fields
.field protected ICustomTabsCallback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/StoreSlab;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract onMessageChannelReady(Ljava/lang/String;)[B
.end method

.method protected final onPostMessage()Ljava/security/MessageDigest;
    .locals 3

    iget-object v0, p0, Lo/StoreSlab;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/StoreSlab;->extraCallback:Ljava/security/MessageDigest;

    if-eqz v1, :cond_0

    sget-object v1, Lo/StoreSlab;->extraCallback:Ljava/security/MessageDigest;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lo/StoreSlab;->extraCallback:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v1, Lo/StoreSlab;->extraCallback:Ljava/security/MessageDigest;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

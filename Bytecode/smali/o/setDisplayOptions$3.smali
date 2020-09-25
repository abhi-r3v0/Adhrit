.class final Lo/setDisplayOptions$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setVerticalOffset$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setVerticalOffset$extraCallback<",
        "Lo/setDisplayOptions$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onNavigationEvent()Lo/setDisplayOptions$ICustomTabsCallback;
    .locals 2

    .line 30
    :try_start_0
    new-instance v0, Lo/setDisplayOptions$ICustomTabsCallback;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setDisplayOptions$ICustomTabsCallback;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-static {}, Lo/setDisplayOptions$3;->onNavigationEvent()Lo/setDisplayOptions$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

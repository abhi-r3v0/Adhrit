.class public final Lo/isZombied$onNavigationEvent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/orderByPriority;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isZombied$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Ljavax/net/ssl/X509TrustManager;

.field private final onPostMessage:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput-object p2, p0, Lo/isZombied$onNavigationEvent$onMessageChannelReady;->onPostMessage:Ljava/lang/reflect/Method;

    .line 1036
    iput-object p1, p0, Lo/isZombied$onNavigationEvent$onMessageChannelReady;->extraCallback:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public static onNavigationEvent(Ljavax/net/ssl/X509TrustManager;)Lo/orderByPriority;
    .locals 6

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1059
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1060
    new-instance v1, Lo/isZombied$onNavigationEvent$onMessageChannelReady;

    invoke-direct {v1, p0, v0}, Lo/isZombied$onNavigationEvent$onMessageChannelReady;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 5

    const/4 v0, 0x0

    .line 1041
    :try_start_0
    iget-object v1, p0, Lo/isZombied$onNavigationEvent$onMessageChannelReady;->onPostMessage:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lo/isZombied$onNavigationEvent$onMessageChannelReady;->extraCallback:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/TrustAnchor;

    if-eqz p1, :cond_0

    .line 1044
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v0

    .line 1047
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

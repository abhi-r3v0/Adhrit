.class public Lo/putLong$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/putLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/security/Signature;

.field private final onMessageChannelReady:Ljavax/crypto/Cipher;

.field private final onPostMessage:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->ICustomTabsCallback:Ljava/security/Signature;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->onMessageChannelReady:Ljavax/crypto/Cipher;

    .line 206
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->onPostMessage:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->onMessageChannelReady:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->ICustomTabsCallback:Ljava/security/Signature;

    .line 213
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->onPostMessage:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->onPostMessage:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->onMessageChannelReady:Ljavax/crypto/Cipher;

    .line 219
    iput-object p1, p0, Lo/putLong$ICustomTabsCallback;->ICustomTabsCallback:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public extraCallback()Ljavax/crypto/Mac;
    .locals 1

    .line 241
    iget-object v0, p0, Lo/putLong$ICustomTabsCallback;->onPostMessage:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public onNavigationEvent()Ljavax/crypto/Cipher;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/putLong$ICustomTabsCallback;->onMessageChannelReady:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public onPostMessage()Ljava/security/Signature;
    .locals 1

    .line 227
    iget-object v0, p0, Lo/putLong$ICustomTabsCallback;->ICustomTabsCallback:Ljava/security/Signature;

    return-object v0
.end method

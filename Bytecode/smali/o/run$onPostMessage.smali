.class public final Lo/run$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/run;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field final extraCallback:Ljava/security/Signature;

.field final onMessageChannelReady:Ljavax/crypto/Mac;

.field final onPostMessage:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lo/run$onPostMessage;->extraCallback:Ljava/security/Signature;

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lo/run$onPostMessage;->onPostMessage:Ljavax/crypto/Cipher;

    .line 117
    iput-object p1, p0, Lo/run$onPostMessage;->onMessageChannelReady:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lo/run$onPostMessage;->onPostMessage:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lo/run$onPostMessage;->extraCallback:Ljava/security/Signature;

    .line 123
    iput-object p1, p0, Lo/run$onPostMessage;->onMessageChannelReady:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lo/run$onPostMessage;->onMessageChannelReady:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lo/run$onPostMessage;->onPostMessage:Ljavax/crypto/Cipher;

    .line 129
    iput-object p1, p0, Lo/run$onPostMessage;->extraCallback:Ljava/security/Signature;

    return-void
.end method

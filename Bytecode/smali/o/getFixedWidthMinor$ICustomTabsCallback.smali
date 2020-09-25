.class public Lo/getFixedWidthMinor$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFixedWidthMinor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public extraCallback:Z

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/convertString;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/convertString;",
            ">;)V"
        }
    .end annotation

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1046
    iput v0, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onPostMessage:I

    .line 1047
    iput-object p1, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method

.method private extraCallback(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2

    .line 1138
    iget v0, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onPostMessage:I

    :goto_0
    iget-object v1, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1139
    iget-object v1, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/convertString;

    invoke-virtual {v1, p1}, Lo/convertString;->onPostMessage(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public ICustomTabsCallback(Ljavax/net/ssl/SSLSocket;)Lo/convertString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1058
    iget v0, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onPostMessage:I

    iget-object v1, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1059
    iget-object v2, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/convertString;

    .line 1060
    invoke-virtual {v2, p1}, Lo/convertString;->onPostMessage(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1062
    iput v0, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onPostMessage:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 1077
    invoke-direct {p0, p1}, Lo/getFixedWidthMinor$ICustomTabsCallback;->extraCallback(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    iput-boolean v0, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 1079
    sget-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    iget-boolean v1, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->extraCallback:Z

    invoke-virtual {v0, v2, p1, v1}, Lo/childChangedChange;->ICustomTabsCallback(Lo/convertString;Ljavax/net/ssl/SSLSocket;Z)V

    return-object v2

    .line 1071
    :cond_2
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->extraCallback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/getFixedWidthMinor$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

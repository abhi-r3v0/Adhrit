.class public final Lo/serializeSessionApp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/fromCode;

.field public final ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

.field public final asBinder:Ljava/net/ProxySelector;

.field public final asInterface:Ljava/net/Proxy;

.field public final extraCallback:Lo/onChildMoved;

.field public final getInterfaceDescriptor:Lo/onChildChanged;

.field public final onMessageChannelReady:Lo/hasNext;

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/toException;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljavax/net/SocketFactory;

.field public final onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

.field public final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/child;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILo/hasNext;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lo/onChildChanged;Lo/onChildMoved;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lo/hasNext;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lo/onChildChanged;",
            "Lo/onChildMoved;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lo/toException;",
            ">;",
            "Ljava/util/List<",
            "Lo/child;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lo/fromCode$ICustomTabsCallback;

    invoke-direct {v0}, Lo/fromCode$ICustomTabsCallback;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Lo/fromCode$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/fromCode$ICustomTabsCallback;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p2}, Lo/fromCode$ICustomTabsCallback;->onMessageChannelReady(I)Lo/fromCode$ICustomTabsCallback;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lo/fromCode$ICustomTabsCallback;->ICustomTabsCallback()Lo/fromCode;

    move-result-object p1

    iput-object p1, p0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    if-eqz p3, :cond_6

    .line 62
    iput-object p3, p0, Lo/serializeSessionApp;->onMessageChannelReady:Lo/hasNext;

    if-eqz p4, :cond_5

    .line 65
    iput-object p4, p0, Lo/serializeSessionApp;->onPostMessage:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    .line 68
    iput-object p8, p0, Lo/serializeSessionApp;->extraCallback:Lo/onChildMoved;

    if-eqz p10, :cond_3

    .line 71
    invoke-static {p10}, Lo/createForTests;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/serializeSessionApp;->onNavigationEvent:Ljava/util/List;

    if-eqz p11, :cond_2

    .line 74
    invoke-static {p11}, Lo/createForTests;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/serializeSessionApp;->onTransact:Ljava/util/List;

    if-eqz p12, :cond_1

    .line 77
    iput-object p12, p0, Lo/serializeSessionApp;->asBinder:Ljava/net/ProxySelector;

    .line 79
    iput-object p9, p0, Lo/serializeSessionApp;->asInterface:Ljava/net/Proxy;

    .line 80
    iput-object p5, p0, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    .line 81
    iput-object p6, p0, Lo/serializeSessionApp;->ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    iput-object p7, p0, Lo/serializeSessionApp;->getInterfaceDescriptor:Lo/onChildChanged;

    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 173
    instance-of v0, p1, Lo/serializeSessionApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lo/serializeSessionApp;

    .line 175
    iget-object v0, p0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    iget-object v2, p1, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->onMessageChannelReady:Lo/hasNext;

    iget-object v2, p1, Lo/serializeSessionApp;->onMessageChannelReady:Lo/hasNext;

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->extraCallback:Lo/onChildMoved;

    iget-object v2, p1, Lo/serializeSessionApp;->extraCallback:Lo/onChildMoved;

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->onNavigationEvent:Ljava/util/List;

    iget-object v2, p1, Lo/serializeSessionApp;->onNavigationEvent:Ljava/util/List;

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->onTransact:Ljava/util/List;

    iget-object v2, p1, Lo/serializeSessionApp;->onTransact:Ljava/util/List;

    .line 179
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->asBinder:Ljava/net/ProxySelector;

    iget-object v2, p1, Lo/serializeSessionApp;->asBinder:Ljava/net/ProxySelector;

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->asInterface:Ljava/net/Proxy;

    iget-object v2, p1, Lo/serializeSessionApp;->asInterface:Ljava/net/Proxy;

    .line 181
    invoke-static {v0, v2}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    .line 182
    invoke-static {v0, v2}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lo/serializeSessionApp;->ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

    .line 183
    invoke-static {v0, v2}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/serializeSessionApp;->getInterfaceDescriptor:Lo/onChildChanged;

    iget-object p1, p1, Lo/serializeSessionApp;->getInterfaceDescriptor:Lo/onChildChanged;

    .line 184
    invoke-static {v0, p1}, Lo/createForTests;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 191
    iget-object v0, p0, Lo/serializeSessionApp;->ICustomTabsCallback:Lo/fromCode;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 192
    iget-object v1, p0, Lo/serializeSessionApp;->onMessageChannelReady:Lo/hasNext;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 193
    iget-object v1, p0, Lo/serializeSessionApp;->extraCallback:Lo/onChildMoved;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 194
    iget-object v1, p0, Lo/serializeSessionApp;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 195
    iget-object v1, p0, Lo/serializeSessionApp;->onTransact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 196
    iget-object v1, p0, Lo/serializeSessionApp;->asBinder:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 197
    iget-object v1, p0, Lo/serializeSessionApp;->asInterface:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 198
    iget-object v1, p0, Lo/serializeSessionApp;->onRelationshipValidationResult:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 199
    iget-object v1, p0, Lo/serializeSessionApp;->ICustomTabsCallback$Stub:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget-object v1, p0, Lo/serializeSessionApp;->getInterfaceDescriptor:Lo/onChildChanged;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

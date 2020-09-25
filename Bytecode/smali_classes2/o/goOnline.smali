.class public abstract Lo/goOnline;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Ljava/util/logging/Logger;

.field public static onPostMessage:Lo/goOnline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lo/setValueInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/goOnline;->onNavigationEvent:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/exists;Lo/serializeSessionApp;Lo/setLogger$extraCallback$extraCallback;)Lo/orderByChild;
.end method

.method public abstract extraCallback(Lo/exists;)Lo/setEventTarget;
.end method

.method public abstract extraCallback(Lo/exists;Lo/orderByChild;)V
.end method

.method public abstract onMessageChannelReady(Lo/setValueInternal;)Lo/setHijackHash;
.end method

.method public abstract onMessageChannelReady(Lo/child;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract onNavigationEvent(Lo/getRef$ICustomTabsCallback;Ljava/lang/String;)V
.end method

.method public abstract onNavigationEvent(Lo/exists;Lo/orderByChild;)Z
.end method

.class public abstract Lo/childChangedChange;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static onPostMessage:Lo/childChangedChange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/deserialize;Lo/deserializeToType;Lo/getIndexEndValue;)Ljava/net/Socket;
.end method

.method public abstract ICustomTabsCallback(Lo/deserialize;)Lo/generateEvent;
.end method

.method public abstract ICustomTabsCallback(Lo/convertString;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract extraCallback(Lo/convertInteger;Ljava/io/IOException;)Ljava/io/IOException;
.end method

.method public abstract extraCallback(Lo/deserialize;Lo/raiseEvents;)V
.end method

.method public abstract onNavigationEvent(Lo/childAddedChange$ICustomTabsCallback;)I
.end method

.method public abstract onNavigationEvent(Lo/deserialize;Lo/deserializeToType;Lo/getIndexEndValue;Lo/changeWithPrevName;)Lo/raiseEvents;
.end method

.method public abstract onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;)V
.end method

.method public abstract onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNavigationEvent(Lo/deserialize;Lo/raiseEvents;)Z
.end method

.method public abstract onPostMessage(Lo/deserializeToType;Lo/deserializeToType;)Z
.end method

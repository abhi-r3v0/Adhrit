.class abstract Lo/onListenRevoked$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onListenRevoked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "extraCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lo/onListenRevoked$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady(Lo/onListenRevoked;)Z
.end method

.method public abstract onPostMessage(Lo/onListenRevoked;)V
.end method

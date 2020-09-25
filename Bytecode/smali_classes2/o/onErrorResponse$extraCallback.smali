.class public abstract Lo/onErrorResponse$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/setBrandDomain;)Lo/onErrorResponse$extraCallback;
.end method

.method public abstract extraCallback(Ljava/lang/Integer;)Lo/onErrorResponse$extraCallback;
.end method

.method public abstract extraCallback(Ljava/util/List;)Lo/onErrorResponse$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/handleResponse;",
            ">;)",
            "Lo/onErrorResponse$extraCallback;"
        }
    .end annotation
.end method

.method public abstract extraCallback(Lo/FirebaseMessagingServiceListener;)Lo/onErrorResponse$extraCallback;
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/onErrorResponse$extraCallback;
.end method

.method public abstract onNavigationEvent(J)Lo/onErrorResponse$extraCallback;
.end method

.method public abstract onNavigationEvent()Lo/onErrorResponse;
.end method

.method public abstract onPostMessage(J)Lo/onErrorResponse$extraCallback;
.end method

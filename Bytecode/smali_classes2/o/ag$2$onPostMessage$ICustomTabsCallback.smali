.class public abstract Lo/ag$2$onPostMessage$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ag$2$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent()Lo/ag$2$onPostMessage$ICustomTabsCallback;
.end method

.method public abstract onNavigationEvent(J)Lo/ag$2$onPostMessage$ICustomTabsCallback;
.end method

.method public abstract onPostMessage(Ljava/util/Set;)Lo/ag$2$onPostMessage$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/ag$2$onMessageChannelReady;",
            ">;)",
            "Lo/ag$2$onPostMessage$ICustomTabsCallback;"
        }
    .end annotation
.end method

.method public abstract onPostMessage()Lo/ag$2$onPostMessage;
.end method

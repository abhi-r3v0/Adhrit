.class abstract Lo/getFirstChild;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFirstChild$onNavigationEvent;,
        Lo/getFirstChild$asInterface;,
        Lo/getFirstChild$newSession;,
        Lo/getFirstChild$ICustomTabsCallback$Stub;,
        Lo/getFirstChild$extraCallback;,
        Lo/getFirstChild$ICustomTabsCallback;,
        Lo/getFirstChild$onPostMessage;,
        Lo/getFirstChild$asBinder;,
        Lo/getFirstChild$ICustomTabsCallback$Stub$Proxy;,
        Lo/getFirstChild$onTransact;,
        Lo/getFirstChild$onRelationshipValidationResult;,
        Lo/getFirstChild$onMessageChannelReady;,
        Lo/getFirstChild$ICustomTabsService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMaxNode;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

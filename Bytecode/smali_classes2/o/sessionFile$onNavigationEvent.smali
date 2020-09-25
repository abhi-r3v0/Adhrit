.class final Lo/sessionFile$onNavigationEvent;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sessionFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/JniNativeApi<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/Object;

.field final extraCallback:Ljava/lang/reflect/Type;

.field onMessageChannelReady:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    .line 361
    iput-object p1, p0, Lo/sessionFile$onNavigationEvent;->extraCallback:Ljava/lang/reflect/Type;

    .line 362
    iput-object p2, p0, Lo/sessionFile$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lo/sessionFile$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/deviceFile;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void

    .line 372
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "JsonAdapter isn\'t ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionFiles;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonAdapter isn\'t ready"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lo/sessionFile$onNavigationEvent;->onMessageChannelReady:Lo/JniNativeApi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
